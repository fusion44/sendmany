import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/qr_scanner_widget.dart';
import 'package:torden/common/widgets/time_ago_widget.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/preferences/bloc.dart';
import 'package:torden/wallet/send/lightning/decode_payreq/bloc/decode_pay_req_bloc.dart';

import 'lightning/decode_payreq/bloc/bloc.dart';

class SendPage extends StatefulWidget {
  @override
  _SendPageState createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  bool showFAB = true;
  bool showPasteInvoiceView = false;
  DecodePayReqBloc _decodePayReqBloc;
  final _invoiceController = TextEditingController();

  @override
  void initState() {
    _decodePayReqBloc = DecodePayReqBloc();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: BlocBuilder(
        bloc: _decodePayReqBloc,
        builder: (BuildContext context, DecodePayReqState state) {
          return Scaffold(
            appBar: AppBar(
              title: TranslatedText("wallet.send"),
              bottom: TabBar(
                isScrollable: true,
                tabs: <Widget>[
                  Tab(text: tr(context, "wallet.lightning")),
                  Tab(text: tr(context, "wallet.onchain")),
                ],
              ),
            ),
            body: TabBarView(
              children: <Widget>[
                _buildUI(state),
                TranslatedText("wallet.onchain"),
              ],
            ),
            floatingActionButton: _buildFAB(),
          );
        },
      ),
    );
  }

  _buildFAB() {
    if (showFAB) {
      return FloatingActionButton(
        onPressed: () {
          setState(() {
            showPasteInvoiceView = !showPasteInvoiceView;
          });
        },
        tooltip: tr(context, "qr.open_qr_scanner"),
        child: showPasteInvoiceView ? Icon(Icons.edit) : Icon(Icons.camera),
      );
    }
  }

  _buildUI(DecodePayReqState state) {
    ThemeData theme = Theme.of(context);
    showFAB = true;

    if (state is InitialDecodePayReqBlocState) {
      showFAB = true;
      if (showPasteInvoiceView) {
        return Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Form(
                autovalidate: true,
                child: TextFormField(
                  maxLines: 6,
                  autofocus: false,
                  controller: _invoiceController,
                  decoration: InputDecoration(
                    labelText:
                        tr(context, "wallet.invoices.paste_invoice_here"),
                  ),
                  validator: (text) {
                    String reqString = text;
                    if (text.contains(":")) reqString = text.split(":")[1];
                    if (reqString.startsWith("ln") && reqString.length > 25) {
                      return null;
                    }
                    return tr(context, "wallet.invoices.invoice_invalid");
                  },
                ),
              ),
            ),
            RaisedButton(
              child: TranslatedText("wallet.invoices.check_invoice"),
              onPressed: () {
                String code = _invoiceController.value.text;
                _decodePayReqBloc.dispatch(DecodePayReqEvent(code));
              },
            )
          ],
        );
      } else {
        return QRScannerWidget(
          onStringFound: (String code) {
            _decodePayReqBloc.dispatch(DecodePayReqEvent(code));
          },
        );
      }
    } else if (state is DecodingPayReqState) {
      showFAB = false;
      return Center(
        child: Column(
          children: <Widget>[
            Container(height: 64.0),
            TranslatedText(
              "wallet.invoices.decoding",
              style: theme.textTheme.title,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 64.0),
              child: SpinKitRipple(color: tordenBlue200, size: 100),
            ),
          ],
        ),
      );
    } else if (state is DecodedPayReqState) {
      showFAB = false;
      return buildShowDecodedPayRequestUI(state, theme);
    } else if (state is DecodingPayReqErrorState) {
      showFAB = false;
      return Column(
        children: <Widget>[
          Text("Error: ${state.message}"),
          RaisedButton.icon(
            icon: Icon(Icons.sync),
            label: Text("Retry"),
            onPressed: () {
              _decodePayReqBloc.dispatch(ResetDecodePayReqEvent());
            },
          )
        ],
      );
    } else {
      return Center(child: Text("Unknown State: $state"));
    }
  }

  buildShowDecodedPayRequestUI(DecodedPayReqState state, ThemeData theme) {
    DateTime reqDate = DateTime.fromMillisecondsSinceEpoch(
      state.req.timestamp.toInt() * 1000,
    );
    DateTime expDate = reqDate.add(
      Duration(seconds: state.req.expiry.toInt()),
    );

    int diff = (DateTime.now().millisecondsSinceEpoch) -
        reqDate.millisecondsSinceEpoch;
    bool expired = diff > (state.req.expiry.toInt() * 1000);

    return SingleChildScrollView(
      child: TordenCard(
        tr(context, "wallet.invoices.header"),
        <Widget>[
          MoneyValueView(amount: state.req.numSatoshis, hero: true),
          Divider(),
          DataItem(
            text: state.req.description,
            label: tr(context, "wallet.invoices.description"),
          ),
          Divider(),
          DataItem(
            text: state.req.destination,
            label: tr(context, "wallet.invoices.destination"),
          ),
          Divider(),
          TimeAgoTextWidget(date: reqDate),
          Divider(),
          TimeAgoTextWidget(date: expDate),
          expired
              ? Text(
                  tr(context, "wallet.invoices.is_expired"),
                  style:
                      theme.textTheme.body1.copyWith(color: Colors.redAccent),
                )
              : Container(),
          Divider(),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: RaisedButton.icon(
                icon: Icon(Icons.flash_on),
                label: TranslatedText("wallet.invoices.pay"),
                onPressed: () {
                  // TODO: implement me
                  PreferencesBloc blc =
                      BlocProvider.of<PreferencesBloc>(context);
                  if (blc.currentState.language == "de") {
                    blc.dispatch(ChangeLanguageEvent(languageCode: "nb"));
                  } else {
                    blc.dispatch(ChangeLanguageEvent(languageCode: "de"));
                  }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
