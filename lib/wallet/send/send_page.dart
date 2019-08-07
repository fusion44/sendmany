import 'package:flutter/material.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/wallet/send/send_payment_widget.dart';
import 'package:torden/wallet/send/send_transaction_widget.dart';

class SendPage extends StatefulWidget {
  @override
  _SendPageState createState() => _SendPageState();
}

class _SendPageState extends State<SendPage> {
  bool showFAB = true;
  IconData fabIcon = Icons.edit;
  bool showPasteView = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
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
            SendPaymentWidget(
              showFAB: (bool showFAB) {
                setState(() {
                  showFAB = showFAB;
                });
              },
              showPasteView: showPasteView,
            ),
            SendTransactionWidget(
              showFAB: (bool showFAB) {
                setState(() {
                  showFAB = showFAB;
                });
              },
              showPasteView: showPasteView,
            ),
          ],
        ),
        floatingActionButton: _buildFAB(),
      ),
    );
  }

  _buildFAB() {
    if (showFAB) {
      return FloatingActionButton(
        onPressed: () {
          setState(() {
            showPasteView = !showPasteView;
          });
        },
        tooltip: tr(context, "qr.open_qr_scanner"),
        child: showPasteView ? Icon(Icons.camera) : Icon(Icons.edit),
      );
    }
  }
}
