import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../node_info/feature.dart';
import 'hop_hint.dart';
import 'invoice_htlc.dart';

enum InvoiceState { open, settled, canceled, accepted }

class Invoice {
  /// An optional memo to attach along with the invoice. Used for
  /// record keeping purposes for the invoice's creator, and will
  /// also be set in the description field of the encoded payment
  /// request if the description_hash field is not being used.
  final String memo;

  /// The hex-encoded preimage (32 byte) which will allow settling
  /// an incoming HTLC payable to this preimage. When using REST,
  /// this field must be encoded as base64.
  final List<int> preimage;

  /// The hash of the preimage. When using REST, this field must be
  /// encoded as base64.
  final List<int> hash;

  /// The value of this invoice in satoshis The fields value and
  /// value_msat are mutually exclusive.
  final Int64 value;

  /// The value of this invoice in millisatoshis The fields value
  /// and value_msat are mutually exclusive.
  final Int64 valuemSat;

  /// When this invoice was created
  final DateTime creationDate;

  /// When this invoice was settled
  final DateTime settleDate;

  /// A bare-bones invoice for a payment within the Lightning Network.
  /// With the details of the invoice, the sender has all the data
  /// necessary to send a payment to the recipient.
  final String paymentRequest;

  /// Hash (SHA-256) of a description of the payment. Used if the
  /// description of payment (memo) is too long to naturally fit
  /// within the description field of an encoded payment request.
  final List<int> descriptionHash;

  /// Payment request expiry time in seconds. Default is 3600 (1 hour).
  final Int64 expiry;

  /// Fallback on-chain address.
  final String fallbackAddr;

  /// Delta to use for the time-lock of the CLTV extended to the final hop.
  final Int64 cltvExpiry;

  /// Route hints that can each be individually used to assist in reaching
  /// the invoice's destination.
  final List<List<HopHint>> routeHints;

  /// Whether this invoice should include routing hints for private channels.
  final bool private;

  /// 	The "add" index of this invoice. Each newly created invoice will
  /// increment this index making it monotonically increasing. Callers
  /// to the SubscribeInvoices call can use this to instantly get notified
  /// of all added invoices with an add_index greater than this one.
  final Int64 addIndex;

  /// The "settle" index of this invoice. Each newly settled invoice will
  /// increment this index making it monotonically increasing. Callers to
  /// the SubscribeInvoices call can use this to instantly get notified of
  /// all settled invoices with an settle_index greater than this one.
  final Int64 settleIndex;

  /// 	The amount that was accepted for this invoice, in millisatoshis.
  /// This will ONLY be set if this invoice has been settled. We provide
  /// this field as if the invoice was created with a zero value, then we
  /// need to record what amount was ultimately accepted. Additionally,
  /// it's possible that the sender paid MORE that was specified in the
  /// original invoice. So we'll record that here as well.
  final Int64 amtPaidmSat;

  /// The state the invoice is in.
  final InvoiceState state;

  /// List of HTLCs paying to this invoice. EXPERIMENTAL
  final List<InvoiceHTLC> htlcs;

  /// List of features advertised on the invoice.
  final List<Feature> features;

  /// Indicates if this invoice was a spontaneous payment that arrived
  /// via keysend.
  final bool isKeySend;

  Invoice({
    this.memo,
    this.preimage,
    this.hash,
    this.value,
    this.valuemSat,
    this.creationDate,
    this.settleDate,
    this.paymentRequest,
    this.descriptionHash,
    this.expiry,
    this.fallbackAddr,
    this.cltvExpiry,
    this.routeHints = const [],
    this.private,
    this.addIndex,
    this.settleIndex,
    this.amtPaidmSat,
    this.state,
    this.htlcs,
    this.features,
    this.isKeySend,
  });

  static Invoice fromGRPC(grpc.Invoice grpcInvoice) {
    InvoiceState state;
    switch (grpcInvoice.state) {
      case grpc.Invoice_InvoiceState.ACCEPTED:
        state = InvoiceState.accepted;
        break;
      case grpc.Invoice_InvoiceState.CANCELED:
        state = InvoiceState.canceled;
        break;
      case grpc.Invoice_InvoiceState.SETTLED:
        state = InvoiceState.settled;
        break;
      default:
        state = InvoiceState.open;
    }

    return Invoice(
      memo: grpcInvoice.memo,
      preimage: grpcInvoice.rPreimage,
      hash: grpcInvoice.rHash,
      value: grpcInvoice.value,
      valuemSat: grpcInvoice.valueMsat,
      creationDate: DateTime.fromMillisecondsSinceEpoch(
        grpcInvoice.creationDate.toInt() * 1000 ?? 0,
      ),
      settleDate: DateTime.fromMillisecondsSinceEpoch(
        grpcInvoice.settleDate.toInt() * 1000 ?? 0,
      ),
      paymentRequest: grpcInvoice.paymentRequest,
      descriptionHash: grpcInvoice.descriptionHash,
      expiry: grpcInvoice.expiry,
      fallbackAddr: grpcInvoice.fallbackAddr,
      cltvExpiry: grpcInvoice.cltvExpiry,
      routeHints: _buildRouteHintList(grpcInvoice.routeHints),
      private: grpcInvoice.private,
      addIndex: grpcInvoice.addIndex,
      settleIndex: grpcInvoice.settleIndex,
      amtPaidmSat: grpcInvoice.amtPaidMsat,
      state: state,
      htlcs: _buildHTLCList(grpcInvoice.htlcs),
      features: _buildFeaturesList(grpcInvoice.features),
      isKeySend: grpcInvoice.isKeysend,
    );
  }
}

List<Feature> _buildFeaturesList(Map<int, grpc.Feature> features) {
  final list = <Feature>[];
  features.forEach((key, f) => list.add(Feature.fromGrpc(key, f)));
  return list;
}

List<InvoiceHTLC> _buildHTLCList(List<grpc.InvoiceHTLC> htlcs) {
  final list = <InvoiceHTLC>[];
  htlcs.forEach((h) => list.add(InvoiceHTLC.fromGrpc(h)));
  return list;
}

List<List<HopHint>> _buildRouteHintList(List<grpc.RouteHint> hints) {
  final list = <List<HopHint>>[];
  hints.forEach((h) => list.add(_buildHopHintList(h)));
  return list;
}

List<HopHint> _buildHopHintList(grpc.RouteHint rh) {
  final list = <HopHint>[];
  rh.hopHints.forEach((hh) => list.add(HopHint.fromGrpc(hh)));
  return list;
}
