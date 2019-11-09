import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/validator.dart';
import 'package:sendmany/common/widgets/widgets.dart';

class ManualPartnerInputWidget extends StatefulWidget {
  final Function(String, String, int) checkConnection;
  final String pubKey;
  final String host;
  final int port;

  const ManualPartnerInputWidget({
    Key key,
    @required this.checkConnection,
    this.pubKey = '',
    this.host = '',
    this.port = 9735,
  }) : super(key: key);
  @override
  _ManualPartnerInputWidgetState createState() =>
      _ManualPartnerInputWidgetState();
}

class _ManualPartnerInputWidgetState extends State<ManualPartnerInputWidget> {
  final Validator _v = Validator();
  final TextEditingController _pubKeyController = TextEditingController();
  final TextEditingController _hostController = TextEditingController();
  final TextEditingController _portController = TextEditingController();

  String _pubKey;
  bool _pubKeyValid = false;

  String _host;
  bool _hostValid = false;

  int _port;
  bool _portValid = true;

  bool _allValid = false;

  @override
  void initState() {
    _pubKeyController.addListener(() {
      String pubKey = _pubKeyController.text;
      _pubKeyValid = _v.lnPubKey(pubKey);
      if (_pubKeyValid) _pubKey = pubKey;
      _checkDataValid();
      return _pubKeyValid ? null : 'invalid';
    });

    _hostController.addListener(() {
      String host = _hostController.text;
      String ret;
      if (_v.onionAddress(host)) {
        _hostValid = true;
      } else if (_v.ip(host)) {
        _hostValid = true;
      } else {
        _hostValid = false;
        ret = 'Invalid';
      }
      if (_hostValid) _host = host;
      _checkDataValid();
      return ret;
    });

    _portController.addListener(() {
      String port = _portController.text;
      _portValid = _v.positiveInt(port) && port.length < 6;
      if (_portValid) _port = int.parse(port);
      _checkDataValid();
      return _portValid ? null : 'invalid';
    });

    _pubKeyController.text = widget.pubKey;
    _hostController.text = widget.host;
    _portController.text = widget.port.toString();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          FilledTextFieldManual(
            controller: _pubKeyController,
            textHint: tr(context, 'channels.open.enter_partner_pubkey'),
            valid: _pubKeyValid,
          ),
          SizedBox(height: 4.0),
          _buildHostWidget(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton.icon(
                color: sendManyDarkGreen,
                icon: Icon(Icons.assignment_returned),
                label: TranslatedText('channels.open.get_from_clipboard'),
                onPressed: () {
                  Clipboard.getData('text/plain').then((data) {
                    if (data.text != null &&
                        data.text.isNotEmpty &&
                        data.text.contains('@') &&
                        data.text.contains(':')) {
                      List<String> connectionData = data.text.split('@');
                      connectionData = [
                        connectionData[0],
                        ...connectionData[1].split(':')
                      ];

                      _pubKeyController.text = connectionData[0];
                      _hostController.text = connectionData[1];
                      _portController.text = connectionData[2];

                      setState(() {});
                    } else {
                      showSnackbar(
                        context,
                        tr(context, 'No valid address found'),
                      );
                    }
                  });
                },
              ),
              SizedBox(width: 8.0),
              RaisedButton.icon(
                icon: Icon(MdiIcons.networkOutline),
                label: TranslatedText('channels.open.check_connection'),
                onPressed: _allValid
                    ? () {
                        widget.checkConnection(
                          _pubKey,
                          _host,
                          _port,
                        );
                      }
                    : null,
              )
            ],
          )
        ],
      ),
    );
  }

  Stack _buildHostWidget({double padding = 16.0}) {
    double gap = 8.0;
    double portWidth = 120.0;
    double size = MediaQuery.of(context).size.width - portWidth - gap - padding;
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: size,
            child: FilledTextFieldManual(
              controller: _hostController,
              textHint: tr(context, 'onboarding.host'),
              keyboardType: TextInputType.number,
              valid: _pubKeyValid,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: portWidth,
            child: FilledTextFieldManual(
              controller: _portController,
              textHint: tr(context, 'onboarding.port'),
              keyboardType: TextInputType.number,
              valid: _pubKeyValid,
            ),
          ),
        )
      ],
    );
  }

  void _checkDataValid() {
    if (_pubKeyValid && _hostValid && _portValid && !_allValid) {
      setState(() {
        _allValid = true;
      });
    } else if ((!_pubKeyValid || !_hostValid || !_portValid) && _allValid) {
      setState(() {
        _allValid = false;
      });
    }
  }
}
