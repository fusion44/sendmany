import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../common/utils.dart';
import '../../common/widgets/widgets.dart';
import '../balance/bloc/bloc.dart';
import 'lightning/send_payment_page.dart';
import 'on_chain/send_coins/send_coins_page.dart';

final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

class SendPage extends StatefulWidget {
  static const String route_name = '/send_page_root';

  @override
  _SendPageState createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  bool _showPasteView = false;
  bool _pushedRoute = false;

  final TextEditingController _invoiceController = TextEditingController();
  QrInfo _qrinfo;
  bool _qrTestPassed = false;

  @override
  void dispose() {
    _invoiceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_pushedRoute) {
      // disable camera while other route is active
      return Container();
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: TranslatedText('wallet.send'),
        ),
        body: (_showPasteView
            ? _buildPasteFormWidget()
            : _buildQrScannerWidget()),
        floatingActionButton: _buildFAB(),
      ),
    );
  }

  QRScannerWidget _buildQrScannerWidget() {
    return QRScannerWidget(
      onStringFound: (String code) {
        if (!_pushedRoute) {
          _pushedRoute = true;
          var qrinfo = checkPaymentRequestType(code);
          switch (qrinfo.layer) {
            case PaymentLayer.lightning:
              _navigateToLnPayment(qrinfo);
              break;
            case PaymentLayer.onchain:
              _navigateToSendCoins(qrinfo);
              break;
            default:
              print('unknown');
          }
        }
      },
    );
  }

  Widget _buildFAB() {
    return FloatingActionButton(
      onPressed: () {
        setState(() {
          _showPasteView = !_showPasteView;
        });
      },
      tooltip: tr(context, 'qr.open_qr_scanner'),
      child: _showPasteView ? Icon(Icons.camera) : Icon(Icons.edit),
    );
  }

  Widget _buildPasteFormWidget() {
    return Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            onChanged: () {
              var passed = false;
              if (_formKey.currentState.validate()) passed = true;
              WidgetsBinding.instance.addPostFrameCallback((_) async {
                setState(() {
                  _qrTestPassed = passed;
                });
              });
            },
            child: TextFormField(
              maxLines: 6,
              autofocus: false,
              controller: _invoiceController,
              decoration: InputDecoration(
                labelText: tr(context, 'wallet.invoices.paste_invoice_here'),
              ),
              validator: (text) {
                _qrinfo = checkPaymentRequestType(text);
                switch (_qrinfo.layer) {
                  case PaymentLayer.lightning:
                  case PaymentLayer.onchain:
                    return null;
                  default:
                    return tr(context, 'wallet.invoices.invoice_invalid');
                }
              },
            ),
          ),
        ),
        _qrTestPassed
            ? ElevatedButton(
                onPressed: () {
                  if (_qrinfo.layer == PaymentLayer.lightning) {
                    _navigateToLnPayment(_qrinfo);
                  } else {
                    _navigateToSendCoins(_qrinfo);
                  }
                },
                child: TranslatedText('wallet.send_page.next_step'),
              )
            : ElevatedButton(
                onPressed: () {
                  _copyFromClipboard();
                },
                child: TranslatedText('wallet.send_page.paste_from_clipboard'),
              )
      ],
    );
  }

  Future _navigateToLnPayment(QrInfo qrinfo) async {
    var infoBloc = BlocProvider.of<LnInfoBloc>(context);
    var result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return BlocProvider<LnInfoBloc>(
            create: (context) => infoBloc,
            child: SendPaymentPage(qrinfo: qrinfo),
          );
        },
      ),
    );

    // payment succeeded, reset the state
    if (result != null) {
      _qrinfo = null;
      _qrTestPassed = false;
      _invoiceController.clear();
    }

    _pushedRoute = false;
  }

  void _navigateToSendCoins(QrInfo qrinfo) async {
    var infoBloc = BlocProvider.of<LnInfoBloc>(context);
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return BlocProvider<LnInfoBloc>(
            create: (context) => infoBloc,
            child: SendCoinsPage(qrinfo: qrinfo),
          );
        },
      ),
    );

    _qrinfo = null;
    _qrTestPassed = false;
    _invoiceController.clear();
    _pushedRoute = false;
  }

  Future _copyFromClipboard() async {
    var data = await Clipboard.getData('text/plain');
    _invoiceController.text = data.text;
  }
}
