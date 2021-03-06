import 'dart:convert';

import 'package:convert/convert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../preferences/bloc.dart';
import '../connection/check_lnd_connection/check_lnd_connection_page.dart';
import '../models/lnd_connection_data.dart';
import '../utils.dart';
import '../validator.dart';
import '../widgets/widgets.dart';

class RetrieveConnectionInfoPage extends StatefulWidget {
  final bool showScanView;

  const RetrieveConnectionInfoPage({
    Key key,
    this.showScanView = true,
  }) : super(key: key);

  @override
  _RetrieveConnectionInfoPageState createState() =>
      _RetrieveConnectionInfoPageState();
}

class _RetrieveConnectionInfoPageState
    extends State<RetrieveConnectionInfoPage> {
  String _name = '';
  bool _nameValid = false;

  String _cert = '';
  bool _certValid = false;

  String _macaroon = '';
  bool _macaroonValid = false;

  String _host = '';
  bool _hostValid = false;

  int _port = 10009;
  bool _portValid = true;

  bool _allValid = false;
  bool _showScanView = false;

  bool _savingConnectionData = false;
  bool _connectionDataSaved = false;

  @override
  void initState() {
    _showScanView = widget.showScanView;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _showScanView ? _buildQrScannerWidget() : _buildManualEntry(),
      floatingActionButton: _buildFAB(),
    );
  }

  QRScannerWidget _buildQrScannerWidget() {
    return QRScannerWidget(
      onStringFound: (String code) {
        if (_showScanView && code.startsWith('lndconnect')) {
          _showScanView = false;
          var uri = Uri.parse(code);

          setState(() {
            _cert = uri.queryParameters['cert'];
            _macaroon = uri.queryParameters['macaroon'];
            _host = uri.host;
            _port = uri.port;
          });
        }
      },
    );
  }

  Widget _buildManualEntry() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(height: 40),
            FilledTextField(
              text: _name,
              textHint: tr(context, 'onboarding.node_name'),
              validator: (String text) {
                String ret;
                if (text.length > 1) {
                  _nameValid = true;
                } else {
                  _nameValid = false;
                  ret = 'Invalid';
                }
                _checkActionButtonEnabled();
                return ret;
              },
              textChanged: (String text) => _name = text,
            ),
            Container(height: 8.0),
            FilledTextField(
              text: _cert,
              textHint: tr(context, 'onboarding.certificate'),
              minLines: 3,
              maxLines: 6,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              validator: (String text) {
                String ret;
                if (text.length > 1) {
                  _certValid = true;
                } else {
                  _certValid = false;
                  ret = 'Invalid';
                }
                _checkActionButtonEnabled();
                return ret;
              },
              textChanged: (String text) => _cert = text,
            ),
            Container(height: 8.0),
            FilledTextField(
              text: _macaroon,
              textHint: tr(context, 'onboarding.macaroon'),
              minLines: 3,
              maxLines: 6,
              keyboardType: TextInputType.multiline,
              textInputAction: TextInputAction.newline,
              validator: (String text) {
                String ret;
                if (text.length > 1) {
                  _macaroonValid = true;
                } else {
                  _macaroonValid = false;
                  ret = 'Invalid';
                }
                _checkActionButtonEnabled();
                return ret;
              },
              textChanged: (String text) => _macaroon = text,
            ),
            Container(height: 8.0),
            _buildHostWidget(),
            _buildActionButton(),
          ],
        ),
      ),
    );
  }

  Stack _buildHostWidget({double padding = 16.0}) {
    var gap = 8.0;
    var portWidth = 120.0;
    var size = MediaQuery.of(context).size.width - portWidth - gap - padding;
    return Stack(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Container(
            width: size,
            child: FilledTextField(
              text: _host,
              textHint: tr(context, 'onboarding.host'),
              validator: (String host) {
                var v = Validator();
                String ret;

                if (v.onionAddress(host)) {
                  _hostValid = true;
                } else if (v.ip(host)) {
                  _hostValid = true;
                } else {
                  _hostValid = false;
                  ret = 'Invalid';
                }
                _checkActionButtonEnabled();
                return ret;
              },
              textChanged: (String text) => _host = text,
            ),
          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: portWidth,
            child: FilledTextField(
              text: _port.toString(),
              textHint: tr(context, 'onboarding.port'),
              keyboardType: TextInputType.number,
              validator: (String text) {
                String ret;
                if (Validator().positiveInt(text) && text.length < 6) {
                  _portValid = true;
                } else {
                  _portValid = false;
                  ret = 'Invalid';
                }
                _checkActionButtonEnabled();
                return ret;
              },
              textChanged: (String text) => _port = int.parse(text),
            ),
          ),
        )
      ],
    );
  }

  Widget _buildActionButton() {
    if (_savingConnectionData) {
      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: TextButton(
          onPressed: null,
          child: TranslatedText('onboarding.saving_connection_data'),
        ),
      );
    } else if (_connectionDataSaved) {
      Function onPressed = () {
        Navigator.pop(context, true);
      };

      return Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: TextButton(
          onPressed: onPressed,
          child: TranslatedText('onboarding.finish_connection_data_input'),
        ),
      );
    }

    Function onPressed = () {
      _navigateToCheckConnectionPage();
    };

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: TextButton(
        onPressed: _allValid ? onPressed : null,
        child: TranslatedText('onboarding.checking_connection'),
      ),
    );
  }

  void _checkActionButtonEnabled() {
    var updateUI = false;
    if (_nameValid &&
        _certValid &&
        _macaroonValid &&
        _hostValid &&
        _portValid &&
        !_allValid) {
      updateUI = true;
    } else if ((!_nameValid ||
            !_certValid ||
            !_macaroonValid ||
            !_hostValid ||
            !_portValid) &&
        _allValid) {
      updateUI = true;
    }

    if (updateUI) {
      WidgetsBinding.instance.addPostFrameCallback((_) async {
        setState(() {
          _allValid = !_allValid;
        });
      });
    }
  }

  void _navigateToCheckConnectionPage() async {
    var cdata = LndConnectionData(
      name: _name,
      certificate: _prepareCertificate(_cert),
      macaroon: _prepareMacaroon(_macaroon),
      host: _host,
      port: _port,
    );
    var result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return CheckLNDConnectionPage(data: cdata);
        },
      ),
    );

    switch (result.reason) {
      case CheckConnectionResultReason.userPositive:
        _addConnectionDataToSecureStorage(cdata);
        break;
      case CheckConnectionResultReason.userNegative:
        break;
      case CheckConnectionResultReason.connectionError:
        break;
    }
  }

  void _addConnectionDataToSecureStorage(
    LndConnectionData newConnection,
  ) async {
    setState(() {
      _savingConnectionData = true;
      _connectionDataSaved = false;
    });

    BlocProvider.of<PreferencesBloc>(context).add(
      AddConnectionEvent(newConnection),
    );

    setState(() {
      _savingConnectionData = false;
      _connectionDataSaved = true;
    });
  }

  Widget _buildFAB() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          _showScanView = !_showScanView;
        });
      },
      tooltip: tr(context, 'qr.open_qr_scanner'),
      child: _showScanView ? Icon(Icons.edit) : Icon(Icons.camera),
    );
  }

  List<int> _prepareCertificate(String certificate) {
    var cert = certificate.replaceAll(r'-', '+');
    cert = cert.replaceAll(r'_', '/');

    // The certificate must be power of 4 in length
    // Base64 defined '=' as the filler character
    cert = fillString(cert);

    cert = '''
-----BEGIN CERTIFICATE-----
$cert
-----END CERTIFICATE-----
''';

    return utf8.encode(cert);
  }

  String _prepareMacaroon(String macaroon) {
    var m = macaroon.replaceAll(r'-', '+');
    m = m.replaceAll(r'_', '/');
    m = fillString(macaroon);
    m = hex.encode(base64.decode(m));
    return m;
  }
}
