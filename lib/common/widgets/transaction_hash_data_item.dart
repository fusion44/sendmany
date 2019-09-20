import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/wallet/balance/bloc/bloc.dart';
import 'package:url_launcher/url_launcher.dart';

class TransactionHashDataItem extends StatelessWidget {
  final String txhash;

  const TransactionHashDataItem({Key key, this.txhash}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LnInfoBloc, LnInfoState>(
      builder: (context, state) {
        if (state is LnInfoStateLoadingFinished) {
          return _buildRow(context, state.infoResponse.chains[0].network);
        }
        return _buildRow(context, "mainnet");
      },
    );
  }

  Row _buildRow(BuildContext context, String network) {
    return Row(
      children: <Widget>[
        Flexible(
          child: DataItem(
            label: tr(
              context,
              "wallet.transactions.hash",
            ),
            text: txhash,
          ),
        ),
        IconButton(
          icon: Icon(Icons.open_in_browser),
          onPressed: () {
            _launchURL(network);
          },
        ),
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {
            _shareTxid();
          },
        ),
        IconButton(
          icon: Icon(MdiIcons.qrcode),
          onPressed: () {
            _showQRDialog(context);
          },
        )
      ],
    );
  }

  void _shareTxid() {
    Share.text("", txhash, "text/plain");
  }

  Future<void> _showQRDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: TranslatedText("wallet.transactions.hash"),
          content: SingleChildScrollView(
            child: Container(
              width: 256,
              height: 256,
              child: QrImage(
                data: txhash,
                backgroundColor: Colors.white,
              ),
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: TranslatedText("wallet.transactions.close_txid_qr_dlg"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  _launchURL(String network) async {
    String url = "https://blockstream.info/tx/$txhash";
    if (network == "testnet") {
      url = "https://blockstream.info/$network/tx/$txhash";
    }

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
