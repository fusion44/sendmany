import 'package:animate_do/animate_do.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../common/constants.dart';
import '../common/models/models.dart';
import '../common/utils.dart';
import '../common/widgets/widgets.dart';

class OpenChannelSettingsWidget extends StatefulWidget {
  final RemoteNodeInfo nodeInfo;
  final bool connectionValid;
  final bool connecting;
  final Function(OnchainFeeType feeType, Int64 fee, Int64 localAmount)
      openChannelClicked;

  const OpenChannelSettingsWidget({
    Key key,
    @required this.nodeInfo,
    @required this.connectionValid,
    @required this.connecting,
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
    var theme = Theme.of(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            RemoteNodeInfoWidget(nodeInfo: widget.nodeInfo),
            SizedBox(height: 8.0),
            TranslatedText(
              'channels.open.channel_settings',
              style: theme.textTheme.headline6,
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
                  if (mounted) {
                    setState(() {
                      _feeType = feeType;
                      _targetBlocks = amount;
                      _feeValid = valid;
                    });
                  }
                });
              } else {
                WidgetsBinding.instance.addPostFrameCallback((_) async {
                  if (mounted) {
                    setState(() {
                      _feeType = feeType;
                      _fee = amount;
                      _feeValid = valid;
                    });
                  }
                });
              }
            }),
            SizedBox(height: 8.0),
            _buildConnectionErrorWidget(theme),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: widget.connecting
                      ? null
                      : () {
                          // TODO: implement advanced settings
                          showSnackbar(
                              context, tr(context, 'not_implemented_yet'));
                        },
                  style: ElevatedButton.styleFrom(
                    primary: sendManyBackgroundAccent,
                  ),
                  child: TranslatedText('channels.open.advanced_settings'),
                ),
                SizedBox(width: 8.0),
                _buildOpenChannelButton(),
              ],
            ),
          ],
        ),
      ),
    );
  }

  ElevatedButton _buildOpenChannelButton() {
    if (widget.connecting) {
      return ElevatedButton(
        onPressed: null,
        child: SpinKitCircle(size: 15, color: sendManyBlue100),
      );
    } else {
      return ElevatedButton(
        onPressed: _localAmountValid && _feeValid
            ? () {
                var f = _feeType == OnchainFeeType.blockTarget
                    ? _targetBlocks
                    : _fee;
                widget.openChannelClicked(_feeType, f, _localAmount);
              }
            : null,
        child: widget.connectionValid
            ? TranslatedText('channels.open.open_channel')
            : TranslatedText('channels.open.retry_connection_test'),
      );
    }
  }

  Widget _buildConnectionErrorWidget(ThemeData theme) {
    if (!widget.connectionValid) {
      return BounceInDown(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TranslatedText(
              'channels.open.connection_failed',
              style: theme.textTheme.bodyText1.copyWith(
                color: sendManyErrorColor,
              ),
            )
          ],
        ),
      );
    } else {
      return Text(' ');
    }
  }
}
