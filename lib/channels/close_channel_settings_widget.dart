import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';

import '../common/constants.dart';
import '../common/models/models.dart';
import '../common/utils.dart';
import '../common/widgets/widgets.dart';

class CloseChannelSettingsWidget extends StatefulWidget {
  final EstablishedChannel channel;
  final Function(
    bool force,
    int blockTarget,
    Int64 satPerByte,
    String deliveryAddress,
  ) onCloseChannelClick;

  @override
  _CloseChannelSettingsWidgetState createState() =>
      _CloseChannelSettingsWidgetState();

  CloseChannelSettingsWidget(this.channel, this.onCloseChannelClick);
}

class _CloseChannelSettingsWidgetState
    extends State<CloseChannelSettingsWidget> {
  bool _force = false;
  int _blockTarget = 6;
  Int64 _satPerByte;
  final TextEditingController _deliveryAddressController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                  flex: 10,
                  child: Text(
                    widget.channel.channelPoint.fundingTxid,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                SizedBox(width: 2.0),
                Expanded(
                  flex: 1,
                  child: Text(
                    ':${widget.channel.channelPoint.outputIndex.toString()}',
                  ),
                ),
              ],
            ),
            SizedBox(height: 4.0),
            TranslatedText(
              'channels.channel_point',
              style: theme.textTheme.caption,
            ),
            SizedBox(height: 16.0),
            OnchainFeeSelectWidget(
              amountChanged: (OnchainFeeType type, Int64 amount, bool valid) {
                if (type == OnchainFeeType.manual) {
                  _satPerByte = amount;
                  _blockTarget = null;
                } else {
                  _blockTarget = amount.toInt();
                  _satPerByte = null;
                }
              },
            ),
            SizedBox(height: 4.0),
            TranslatedText(
              'channels.onchain_fee_types',
              style: theme.textTheme.caption,
            ),
            SizedBox(height: 16.0),
            Row(children: <Widget>[
              Expanded(
                child: FilledTextFieldManual(
                  controller: _deliveryAddressController,
                  textHint: tr(context, 'channels.optional_delivery_address'),
                ),
              ),
              SizedBox(height: 4.0),
              IconButton(
                icon: Icon(Icons.content_paste),
                onPressed: () async {
                  var data = await Clipboard.getData('text/plain');
                  _deliveryAddressController.text = data.text;
                },
              ),
              IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () => _scanBtcAddress(),
              ),
            ]),
            SizedBox(height: 4.0),
            TranslatedText(
              'channels.optional_delivery_address',
              style: theme.textTheme.caption,
            ),
            SizedBox(height: 16.0),
            InkWell(
              onTap: () => setState(() => _force = !_force),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TranslatedText(
                      'channels.force_close',
                      style: theme.textTheme.subtitle1,
                    ),
                  ),
                  Checkbox(
                    value: _force,
                    onChanged: (bool value) {
                      setState(() {
                        _force = value;
                      });
                    },
                  )
                ],
              ),
            ),
            widget.channel.active
                ? TranslatedText(
                    'channels.force_close_not_necessary_peer_online',
                    style: theme.textTheme.caption.copyWith(
                      color: sendManyPrimaryGreen500,
                    ),
                  )
                : TranslatedText(
                    'channels.force_close_necessary_peer_not_online',
                    style: theme.textTheme.caption.copyWith(
                      color: sendManyOrange300,
                    ),
                  ),
            SizedBox(height: 32.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: sendManyOrange300),
                  onPressed: () => _showAlert(),
                  child: TranslatedText('channels.close.close'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void _scanBtcAddress() async {
    // onStringFound callback might be called multiple times
    // make sure we only pop once
    var popScheduled = false;
    var result = await Navigator.push<String>(
      context,
      MaterialPageRoute(builder: (c) {
        return QRScannerWidget(onStringFound: (String code) {
          SchedulerBinding.instance.addPostFrameCallback((_) {
            if (!popScheduled) {
              popScheduled = true;
              Navigator.of(c).pop(code);
            }
          });
        });
      }),
    );

    var qrInfo = checkPaymentRequestType(result);

    if (qrInfo == null || qrInfo.layer != PaymentLayer.onchain) {
      showSnackbar(
        context,
        'Found no valid onchain address:\n${qrInfo.address}',
      );
    } else {
      _deliveryAddressController.text = qrInfo.address;
    }
  }

  void _showAlert() async {
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      var result = await showDialog<bool>(
        context: context,
        builder: (BuildContext c) {
          return AlertDialog(
            title: TranslatedText('alert_dialog.confirm_action_title'),
            content: _buildAlertContentWidget(),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: TranslatedText('alert_dialog.cancel'),
              ),
              TextButton(
                onPressed: () => Navigator.of(context).pop(true),
                child: TranslatedText('alert_dialog.confirm'),
              ),
            ],
          );
        },
      );

      if (result != null && result is bool && result) {
        widget.onCloseChannelClick(
          _force,
          _blockTarget,
          _satPerByte,
          _deliveryAddressController.text,
        );
      }
    });
  }

  Widget _buildAlertContentWidget() {
    var theme = Theme.of(context);
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        TranslatedText('channels.close.alert_query_really_close_channel'),
        SizedBox(height: 16.0),
        MoneyValueView(
          amount: widget.channel.localBalance,
          textAlign: TextAlign.left,
        ),
        TranslatedText(
          'channels.close.you_receive',
          textAlign: TextAlign.left,
          style: theme.textTheme.caption,
        ),
        SizedBox(height: 16.0),
        MoneyValueView(
          amount: widget.channel.remoteBalance,
          textAlign: TextAlign.left,
        ),
        TranslatedText(
          'channels.close.partner_receives',
          textAlign: TextAlign.left,
          style: theme.textTheme.caption,
        ),
      ],
    );
  }
}
