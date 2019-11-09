import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/models/models.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/widgets.dart';

class OpenChannelSettingsWidget extends StatefulWidget {
  final NodeInfo nodeInfo;
  final Function(OnchainFeeType feeType, Int64 fee, Int64 localAmount)
      openChannelClicked;

  const OpenChannelSettingsWidget({
    Key key,
    @required this.nodeInfo,
    @required this.openChannelClicked,
  }) : super(key: key);

  @override
  _OpenChannelSettingsWidgetState createState() =>
      _OpenChannelSettingsWidgetState();
}

class _OpenChannelSettingsWidgetState extends State<OpenChannelSettingsWidget> {
  Int64 _localAmount;
  bool _localAmountValid = false;
  OnchainFeeType _feeType = OnchainFeeType.blockTarget;
  Int64 _fee = Int64.ONE;
  Int64 _targetBlocks = Int64(6);
  bool _feeValid = true;

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            RemoteNodeInfoWidget(nodeInfo: widget.nodeInfo),
            SizedBox(height: 8.0),
            TranslatedText(
              'channels.open.channel_settings',
              style: theme.textTheme.title,
            ),
            SizedBox(height: 8.0),
            MoneyValueInput(
              amountChanged: (Int64 amount) {
                setState(() {
                  _localAmount = amount;
                  _localAmountValid = amount != null;
                });
              },
              textHintId: 'channels.open.local_funding_amount',
            ),
            SizedBox(height: 8.0),
            OnchainFeeSelectWidget(amountChanged: (
              OnchainFeeType feeType,
              Int64 amount,
              bool valid,
            ) {
              if (feeType == OnchainFeeType.blockTarget) {
                WidgetsBinding.instance.addPostFrameCallback((_) async {
                  setState(() {
                    _feeType = feeType;
                    _targetBlocks = amount;
                    _feeValid = valid;
                  });
                });
              } else {
                WidgetsBinding.instance.addPostFrameCallback((_) async {
                  setState(() {
                    _feeType = feeType;
                    _fee = amount;
                    _feeValid = valid;
                  });
                });
              }
            }),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: TranslatedText('channels.open.advanced_settings'),
                  onPressed: () {
                    // TODO: implement advanced settings
                    showSnackbar(context, tr(context, 'not_implemented_yet'));
                  },
                  color: sendManyBackgroundAccent,
                ),
                SizedBox(width: 8.0),
                RaisedButton(
                  child: TranslatedText('channels.open.open_channel'),
                  onPressed: _localAmountValid && _feeValid
                      ? () {
                          Int64 f = _feeType == OnchainFeeType.blockTarget
                              ? _targetBlocks
                              : _fee;
                          widget.openChannelClicked(_feeType, f, _localAmount);
                        }
                      : null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
