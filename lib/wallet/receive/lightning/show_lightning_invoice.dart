import 'dart:ui' as ui;

import 'package:esys_flutter_share/esys_flutter_share.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:unicorndial/unicorndial.dart';

import '../../../common/constants.dart';
import '../../../common/models/models.dart';
import '../../../common/utils.dart';
import '../../../common/widgets/widgets.dart';
import 'add_invoice_bloc/bloc.dart';
import 'watch_invoices_bloc/bloc.dart';

class ShowLightningInvoice extends StatefulWidget {
  final String memo;

  final Int64 amount;
  final String onchainAddress;

  ShowLightningInvoice(this.memo, this.amount, this.onchainAddress);

  @override
  _ShowLightningInvoiceState createState() => _ShowLightningInvoiceState();
}

class _ShowLightningInvoiceState extends State<ShowLightningInvoice> {
  Int64 _addIndex = Int64.ZERO;
  final WatchInvoicesBloc _watchInvoicesBloc = WatchInvoicesBloc();
  final AddInvoiceBloc _addInvoicesBloc = AddInvoiceBloc();

  @override
  void initState() {
    _addInvoicesBloc.add(
      AddInvoiceEvent(
        widget.memo,
        widget.amount,
        widget.onchainAddress,
      ),
    );

    super.initState();
  }

  @override
  void dispose() {
    _watchInvoicesBloc.close();
    _addInvoicesBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return BlocBuilder<AddInvoiceBloc, AddInvoiceState>(
      bloc: _addInvoicesBloc,
      builder: (context, state) {
        if (state is InitialAddinvoiceState) {
          return Center(
              child: SpinKitRipple(color: sendManyBlue200, size: 150));
        } else if (state is AddedInvoiceState) {
          _addIndex = state.invoice.addIndex;
          return Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Center(
                  child: BlocListener<WatchInvoicesBloc, WatchInvoicesState>(
                    bloc: _watchInvoicesBloc,
                    listener: (context, state) {
                      if (state is InvoiceChangedState &&
                          state.invoice.addIndex == _addIndex &&
                          state.invoice.state == InvoiceState.settled) {
                        // pop back to overview
                        Navigator.pop(context);
                      }
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(height: 24.0),
                        TranslatedText(
                          'wallet.receive_page.show_receive_invoice_ln',
                          style: theme.textTheme.headline6,
                        ),
                        Container(height: 8.0),
                        QrImage(
                          data: state.invoice.paymentRequest,
                          version: QrVersions.auto,
                          size: MediaQuery.of(context).size.width * 0.8,
                          backgroundColor: Colors.white,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            if (Navigator.canPop(context)) {
                              Navigator.pop(context);
                            }
                          },
                          child: TranslatedText(
                            'wallet.invoices.paid_go_back_to_home',
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            floatingActionButton: _buildUnicornDial(
              state.invoice.paymentRequest,
            ),
          );
        } else {
          return Center(child: Text('Unknown state: $state'));
        }
      },
    );
  }

  Widget _buildUnicornDial(String paymentRequest) {
    var childButtons = <UnicornButton>[];

    childButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: tr(context, 'wallet.invoices.invoice_qr_image'),
        currentButton: FloatingActionButton(
          heroTag: 'qrImgBtn',
          mini: true,
          onPressed: () async {
            var painter = QrPainter(
              data: paymentRequest,
              version: QrVersions.auto,
              emptyColor: Colors.white,
            );
            final image = await painter.toImage(512);
            final data = await image.toByteData(
              format: ui.ImageByteFormat.png,
            );
            await Share.file(
              tr(context, 'wallet.invoices.invoice_qr_image'),
              'invoice.png',
              data.buffer.asUint8List(),
              'image/png',
              text: paymentRequest,
            );
          },
          child: Icon(MdiIcons.qrcode),
        ),
      ),
    );

    childButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: tr(context, 'wallet.invoices.lightning_uri'),
        currentButton: FloatingActionButton(
          heroTag: 'lnUrlBtn',
          mini: true,
          onPressed: () {
            Share.text(
              tr(context, 'wallet.invoices.lightning_invoice'),
              'lightning:$paymentRequest',
              'text/plain',
            );
          },
          child: Icon(Icons.link),
        ),
      ),
    );

    childButtons.add(
      UnicornButton(
        hasLabel: true,
        labelText: 'Payment Request',
        currentButton: FloatingActionButton(
          heroTag: 'payReqBtn',
          mini: true,
          onPressed: () {
            Share.text(
              tr(context, 'wallet.invoices.lightning_invoice'),
              paymentRequest,
              'text/plain',
            );
          },
          child: Icon(Icons.short_text),
        ),
      ),
    );

    return UnicornDialer(
      parentButton: Icon(Icons.share),
      childButtons: childButtons,
    );
  }
}
