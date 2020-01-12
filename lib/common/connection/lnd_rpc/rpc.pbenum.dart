///
//  Generated code. Do not modify.
//  source: rpc.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AddressType extends $pb.ProtobufEnum {
  static const AddressType WITNESS_PUBKEY_HASH =
      AddressType._(0, 'WITNESS_PUBKEY_HASH');
  static const AddressType NESTED_PUBKEY_HASH =
      AddressType._(1, 'NESTED_PUBKEY_HASH');
  static const AddressType UNUSED_WITNESS_PUBKEY_HASH =
      AddressType._(2, 'UNUSED_WITNESS_PUBKEY_HASH');
  static const AddressType UNUSED_NESTED_PUBKEY_HASH =
      AddressType._(3, 'UNUSED_NESTED_PUBKEY_HASH');

  static const $core.List<AddressType> values = <AddressType>[
    WITNESS_PUBKEY_HASH,
    NESTED_PUBKEY_HASH,
    UNUSED_WITNESS_PUBKEY_HASH,
    UNUSED_NESTED_PUBKEY_HASH,
  ];

  static final $core.Map<$core.int, AddressType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static AddressType valueOf($core.int value) => _byValue[value];

  const AddressType._($core.int v, $core.String n) : super(v, n);
}

class InvoiceHTLCState extends $pb.ProtobufEnum {
  static const InvoiceHTLCState ACCEPTED = InvoiceHTLCState._(0, 'ACCEPTED');
  static const InvoiceHTLCState SETTLED = InvoiceHTLCState._(1, 'SETTLED');
  static const InvoiceHTLCState CANCELED = InvoiceHTLCState._(2, 'CANCELED');

  static const $core.List<InvoiceHTLCState> values = <InvoiceHTLCState>[
    ACCEPTED,
    SETTLED,
    CANCELED,
  ];

  static final $core.Map<$core.int, InvoiceHTLCState> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static InvoiceHTLCState valueOf($core.int value) => _byValue[value];

  const InvoiceHTLCState._($core.int v, $core.String n) : super(v, n);
}

class FeatureBit extends $pb.ProtobufEnum {
  static const FeatureBit DATALOSS_PROTECT_REQ =
      FeatureBit._(0, 'DATALOSS_PROTECT_REQ');
  static const FeatureBit DATALOSS_PROTECT_OPT =
      FeatureBit._(1, 'DATALOSS_PROTECT_OPT');
  static const FeatureBit INITIAL_ROUING_SYNC =
      FeatureBit._(3, 'INITIAL_ROUING_SYNC');
  static const FeatureBit UPFRONT_SHUTDOWN_SCRIPT_REQ =
      FeatureBit._(4, 'UPFRONT_SHUTDOWN_SCRIPT_REQ');
  static const FeatureBit UPFRONT_SHUTDOWN_SCRIPT_OPT =
      FeatureBit._(5, 'UPFRONT_SHUTDOWN_SCRIPT_OPT');
  static const FeatureBit GOSSIP_QUERIES_REQ =
      FeatureBit._(6, 'GOSSIP_QUERIES_REQ');
  static const FeatureBit GOSSIP_QUERIES_OPT =
      FeatureBit._(7, 'GOSSIP_QUERIES_OPT');
  static const FeatureBit TLV_ONION_REQ = FeatureBit._(8, 'TLV_ONION_REQ');
  static const FeatureBit TLV_ONION_OPT = FeatureBit._(9, 'TLV_ONION_OPT');
  static const FeatureBit EXT_GOSSIP_QUERIES_REQ =
      FeatureBit._(10, 'EXT_GOSSIP_QUERIES_REQ');
  static const FeatureBit EXT_GOSSIP_QUERIES_OPT =
      FeatureBit._(11, 'EXT_GOSSIP_QUERIES_OPT');
  static const FeatureBit STATIC_REMOTE_KEY_REQ =
      FeatureBit._(12, 'STATIC_REMOTE_KEY_REQ');
  static const FeatureBit STATIC_REMOTE_KEY_OPT =
      FeatureBit._(13, 'STATIC_REMOTE_KEY_OPT');
  static const FeatureBit PAYMENT_ADDR_REQ =
      FeatureBit._(14, 'PAYMENT_ADDR_REQ');
  static const FeatureBit PAYMENT_ADDR_OPT =
      FeatureBit._(15, 'PAYMENT_ADDR_OPT');
  static const FeatureBit MPP_REQ = FeatureBit._(16, 'MPP_REQ');
  static const FeatureBit MPP_OPT = FeatureBit._(17, 'MPP_OPT');

  static const $core.List<FeatureBit> values = <FeatureBit>[
    DATALOSS_PROTECT_REQ,
    DATALOSS_PROTECT_OPT,
    INITIAL_ROUING_SYNC,
    UPFRONT_SHUTDOWN_SCRIPT_REQ,
    UPFRONT_SHUTDOWN_SCRIPT_OPT,
    GOSSIP_QUERIES_REQ,
    GOSSIP_QUERIES_OPT,
    TLV_ONION_REQ,
    TLV_ONION_OPT,
    EXT_GOSSIP_QUERIES_REQ,
    EXT_GOSSIP_QUERIES_OPT,
    STATIC_REMOTE_KEY_REQ,
    STATIC_REMOTE_KEY_OPT,
    PAYMENT_ADDR_REQ,
    PAYMENT_ADDR_OPT,
    MPP_REQ,
    MPP_OPT,
  ];

  static final $core.Map<$core.int, FeatureBit> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static FeatureBit valueOf($core.int value) => _byValue[value];

  const FeatureBit._($core.int v, $core.String n) : super(v, n);
}

class ChannelCloseSummary_ClosureType extends $pb.ProtobufEnum {
  static const ChannelCloseSummary_ClosureType COOPERATIVE_CLOSE =
      ChannelCloseSummary_ClosureType._(0, 'COOPERATIVE_CLOSE');
  static const ChannelCloseSummary_ClosureType LOCAL_FORCE_CLOSE =
      ChannelCloseSummary_ClosureType._(1, 'LOCAL_FORCE_CLOSE');
  static const ChannelCloseSummary_ClosureType REMOTE_FORCE_CLOSE =
      ChannelCloseSummary_ClosureType._(2, 'REMOTE_FORCE_CLOSE');
  static const ChannelCloseSummary_ClosureType BREACH_CLOSE =
      ChannelCloseSummary_ClosureType._(3, 'BREACH_CLOSE');
  static const ChannelCloseSummary_ClosureType FUNDING_CANCELED =
      ChannelCloseSummary_ClosureType._(4, 'FUNDING_CANCELED');
  static const ChannelCloseSummary_ClosureType ABANDONED =
      ChannelCloseSummary_ClosureType._(5, 'ABANDONED');

  static const $core.List<ChannelCloseSummary_ClosureType> values =
      <ChannelCloseSummary_ClosureType>[
    COOPERATIVE_CLOSE,
    LOCAL_FORCE_CLOSE,
    REMOTE_FORCE_CLOSE,
    BREACH_CLOSE,
    FUNDING_CANCELED,
    ABANDONED,
  ];

  static final $core.Map<$core.int, ChannelCloseSummary_ClosureType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ChannelCloseSummary_ClosureType valueOf($core.int value) =>
      _byValue[value];

  const ChannelCloseSummary_ClosureType._($core.int v, $core.String n)
      : super(v, n);
}

class Peer_SyncType extends $pb.ProtobufEnum {
  static const Peer_SyncType UNKNOWN_SYNC = Peer_SyncType._(0, 'UNKNOWN_SYNC');
  static const Peer_SyncType ACTIVE_SYNC = Peer_SyncType._(1, 'ACTIVE_SYNC');
  static const Peer_SyncType PASSIVE_SYNC = Peer_SyncType._(2, 'PASSIVE_SYNC');

  static const $core.List<Peer_SyncType> values = <Peer_SyncType>[
    UNKNOWN_SYNC,
    ACTIVE_SYNC,
    PASSIVE_SYNC,
  ];

  static final $core.Map<$core.int, Peer_SyncType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Peer_SyncType valueOf($core.int value) => _byValue[value];

  const Peer_SyncType._($core.int v, $core.String n) : super(v, n);
}

class PeerEvent_EventType extends $pb.ProtobufEnum {
  static const PeerEvent_EventType PEER_ONLINE =
      PeerEvent_EventType._(0, 'PEER_ONLINE');
  static const PeerEvent_EventType PEER_OFFLINE =
      PeerEvent_EventType._(1, 'PEER_OFFLINE');

  static const $core.List<PeerEvent_EventType> values = <PeerEvent_EventType>[
    PEER_ONLINE,
    PEER_OFFLINE,
  ];

  static final $core.Map<$core.int, PeerEvent_EventType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static PeerEvent_EventType valueOf($core.int value) => _byValue[value];

  const PeerEvent_EventType._($core.int v, $core.String n) : super(v, n);
}

class ChannelEventUpdate_UpdateType extends $pb.ProtobufEnum {
  static const ChannelEventUpdate_UpdateType OPEN_CHANNEL =
      ChannelEventUpdate_UpdateType._(0, 'OPEN_CHANNEL');
  static const ChannelEventUpdate_UpdateType CLOSED_CHANNEL =
      ChannelEventUpdate_UpdateType._(1, 'CLOSED_CHANNEL');
  static const ChannelEventUpdate_UpdateType ACTIVE_CHANNEL =
      ChannelEventUpdate_UpdateType._(2, 'ACTIVE_CHANNEL');
  static const ChannelEventUpdate_UpdateType INACTIVE_CHANNEL =
      ChannelEventUpdate_UpdateType._(3, 'INACTIVE_CHANNEL');

  static const $core.List<ChannelEventUpdate_UpdateType> values =
      <ChannelEventUpdate_UpdateType>[
    OPEN_CHANNEL,
    CLOSED_CHANNEL,
    ACTIVE_CHANNEL,
    INACTIVE_CHANNEL,
  ];

  static final $core.Map<$core.int, ChannelEventUpdate_UpdateType> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static ChannelEventUpdate_UpdateType valueOf($core.int value) =>
      _byValue[value];

  const ChannelEventUpdate_UpdateType._($core.int v, $core.String n)
      : super(v, n);
}

class Invoice_InvoiceState extends $pb.ProtobufEnum {
  static const Invoice_InvoiceState OPEN = Invoice_InvoiceState._(0, 'OPEN');
  static const Invoice_InvoiceState SETTLED =
      Invoice_InvoiceState._(1, 'SETTLED');
  static const Invoice_InvoiceState CANCELED =
      Invoice_InvoiceState._(2, 'CANCELED');
  static const Invoice_InvoiceState ACCEPTED =
      Invoice_InvoiceState._(3, 'ACCEPTED');

  static const $core.List<Invoice_InvoiceState> values = <Invoice_InvoiceState>[
    OPEN,
    SETTLED,
    CANCELED,
    ACCEPTED,
  ];

  static final $core.Map<$core.int, Invoice_InvoiceState> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Invoice_InvoiceState valueOf($core.int value) => _byValue[value];

  const Invoice_InvoiceState._($core.int v, $core.String n) : super(v, n);
}

class Payment_PaymentStatus extends $pb.ProtobufEnum {
  static const Payment_PaymentStatus UNKNOWN =
      Payment_PaymentStatus._(0, 'UNKNOWN');
  static const Payment_PaymentStatus IN_FLIGHT =
      Payment_PaymentStatus._(1, 'IN_FLIGHT');
  static const Payment_PaymentStatus SUCCEEDED =
      Payment_PaymentStatus._(2, 'SUCCEEDED');
  static const Payment_PaymentStatus FAILED =
      Payment_PaymentStatus._(3, 'FAILED');

  static const $core.List<Payment_PaymentStatus> values =
      <Payment_PaymentStatus>[
    UNKNOWN,
    IN_FLIGHT,
    SUCCEEDED,
    FAILED,
  ];

  static final $core.Map<$core.int, Payment_PaymentStatus> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Payment_PaymentStatus valueOf($core.int value) => _byValue[value];

  const Payment_PaymentStatus._($core.int v, $core.String n) : super(v, n);
}

class HTLCAttempt_HTLCStatus extends $pb.ProtobufEnum {
  static const HTLCAttempt_HTLCStatus IN_FLIGHT =
      HTLCAttempt_HTLCStatus._(0, 'IN_FLIGHT');
  static const HTLCAttempt_HTLCStatus SUCCEEDED =
      HTLCAttempt_HTLCStatus._(1, 'SUCCEEDED');
  static const HTLCAttempt_HTLCStatus FAILED =
      HTLCAttempt_HTLCStatus._(2, 'FAILED');

  static const $core.List<HTLCAttempt_HTLCStatus> values =
      <HTLCAttempt_HTLCStatus>[
    IN_FLIGHT,
    SUCCEEDED,
    FAILED,
  ];

  static final $core.Map<$core.int, HTLCAttempt_HTLCStatus> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static HTLCAttempt_HTLCStatus valueOf($core.int value) => _byValue[value];

  const HTLCAttempt_HTLCStatus._($core.int v, $core.String n) : super(v, n);
}
