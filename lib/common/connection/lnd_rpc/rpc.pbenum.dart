///
//  Generated code. Do not modify.
//  source: rpc.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class AddressType extends $pb.ProtobufEnum {
  static const AddressType WITNESS_PUBKEY_HASH = AddressType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WITNESS_PUBKEY_HASH');
  static const AddressType NESTED_PUBKEY_HASH = AddressType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NESTED_PUBKEY_HASH');
  static const AddressType UNUSED_WITNESS_PUBKEY_HASH = AddressType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNUSED_WITNESS_PUBKEY_HASH');
  static const AddressType UNUSED_NESTED_PUBKEY_HASH = AddressType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNUSED_NESTED_PUBKEY_HASH');

  static const $core.List<AddressType> values = <AddressType> [
    WITNESS_PUBKEY_HASH,
    NESTED_PUBKEY_HASH,
    UNUSED_WITNESS_PUBKEY_HASH,
    UNUSED_NESTED_PUBKEY_HASH,
  ];

  static final $core.Map<$core.int, AddressType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static AddressType valueOf($core.int value) => _byValue[value];

  const AddressType._($core.int v, $core.String n) : super(v, n);
}

class CommitmentType extends $pb.ProtobufEnum {
  static const CommitmentType LEGACY = CommitmentType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEGACY');
  static const CommitmentType STATIC_REMOTE_KEY = CommitmentType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STATIC_REMOTE_KEY');
  static const CommitmentType ANCHORS = CommitmentType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANCHORS');
  static const CommitmentType UNKNOWN_COMMITMENT_TYPE = CommitmentType._(999, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_COMMITMENT_TYPE');

  static const $core.List<CommitmentType> values = <CommitmentType> [
    LEGACY,
    STATIC_REMOTE_KEY,
    ANCHORS,
    UNKNOWN_COMMITMENT_TYPE,
  ];

  static final $core.Map<$core.int, CommitmentType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static CommitmentType valueOf($core.int value) => _byValue[value];

  const CommitmentType._($core.int v, $core.String n) : super(v, n);
}

class Initiator extends $pb.ProtobufEnum {
  static const Initiator INITIATOR_UNKNOWN = Initiator._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INITIATOR_UNKNOWN');
  static const Initiator INITIATOR_LOCAL = Initiator._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INITIATOR_LOCAL');
  static const Initiator INITIATOR_REMOTE = Initiator._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INITIATOR_REMOTE');
  static const Initiator INITIATOR_BOTH = Initiator._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INITIATOR_BOTH');

  static const $core.List<Initiator> values = <Initiator> [
    INITIATOR_UNKNOWN,
    INITIATOR_LOCAL,
    INITIATOR_REMOTE,
    INITIATOR_BOTH,
  ];

  static final $core.Map<$core.int, Initiator> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Initiator valueOf($core.int value) => _byValue[value];

  const Initiator._($core.int v, $core.String n) : super(v, n);
}

class ResolutionType extends $pb.ProtobufEnum {
  static const ResolutionType TYPE_UNKNOWN = ResolutionType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TYPE_UNKNOWN');
  static const ResolutionType ANCHOR = ResolutionType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANCHOR');
  static const ResolutionType INCOMING_HTLC = ResolutionType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INCOMING_HTLC');
  static const ResolutionType OUTGOING_HTLC = ResolutionType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OUTGOING_HTLC');
  static const ResolutionType COMMIT = ResolutionType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMMIT');

  static const $core.List<ResolutionType> values = <ResolutionType> [
    TYPE_UNKNOWN,
    ANCHOR,
    INCOMING_HTLC,
    OUTGOING_HTLC,
    COMMIT,
  ];

  static final $core.Map<$core.int, ResolutionType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResolutionType valueOf($core.int value) => _byValue[value];

  const ResolutionType._($core.int v, $core.String n) : super(v, n);
}

class ResolutionOutcome extends $pb.ProtobufEnum {
  static const ResolutionOutcome OUTCOME_UNKNOWN = ResolutionOutcome._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OUTCOME_UNKNOWN');
  static const ResolutionOutcome CLAIMED = ResolutionOutcome._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLAIMED');
  static const ResolutionOutcome UNCLAIMED = ResolutionOutcome._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNCLAIMED');
  static const ResolutionOutcome ABANDONED = ResolutionOutcome._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ABANDONED');
  static const ResolutionOutcome FIRST_STAGE = ResolutionOutcome._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FIRST_STAGE');
  static const ResolutionOutcome TIMEOUT = ResolutionOutcome._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TIMEOUT');

  static const $core.List<ResolutionOutcome> values = <ResolutionOutcome> [
    OUTCOME_UNKNOWN,
    CLAIMED,
    UNCLAIMED,
    ABANDONED,
    FIRST_STAGE,
    TIMEOUT,
  ];

  static final $core.Map<$core.int, ResolutionOutcome> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResolutionOutcome valueOf($core.int value) => _byValue[value];

  const ResolutionOutcome._($core.int v, $core.String n) : super(v, n);
}

class NodeMetricType extends $pb.ProtobufEnum {
  static const NodeMetricType UNKNOWN = NodeMetricType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const NodeMetricType BETWEENNESS_CENTRALITY = NodeMetricType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BETWEENNESS_CENTRALITY');

  static const $core.List<NodeMetricType> values = <NodeMetricType> [
    UNKNOWN,
    BETWEENNESS_CENTRALITY,
  ];

  static final $core.Map<$core.int, NodeMetricType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static NodeMetricType valueOf($core.int value) => _byValue[value];

  const NodeMetricType._($core.int v, $core.String n) : super(v, n);
}

class InvoiceHTLCState extends $pb.ProtobufEnum {
  static const InvoiceHTLCState ACCEPTED = InvoiceHTLCState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCEPTED');
  static const InvoiceHTLCState SETTLED = InvoiceHTLCState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SETTLED');
  static const InvoiceHTLCState CANCELED = InvoiceHTLCState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CANCELED');

  static const $core.List<InvoiceHTLCState> values = <InvoiceHTLCState> [
    ACCEPTED,
    SETTLED,
    CANCELED,
  ];

  static final $core.Map<$core.int, InvoiceHTLCState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static InvoiceHTLCState valueOf($core.int value) => _byValue[value];

  const InvoiceHTLCState._($core.int v, $core.String n) : super(v, n);
}

class PaymentFailureReason extends $pb.ProtobufEnum {
  static const PaymentFailureReason FAILURE_REASON_NONE = PaymentFailureReason._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE_REASON_NONE');
  static const PaymentFailureReason FAILURE_REASON_TIMEOUT = PaymentFailureReason._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE_REASON_TIMEOUT');
  static const PaymentFailureReason FAILURE_REASON_NO_ROUTE = PaymentFailureReason._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE_REASON_NO_ROUTE');
  static const PaymentFailureReason FAILURE_REASON_ERROR = PaymentFailureReason._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE_REASON_ERROR');
  static const PaymentFailureReason FAILURE_REASON_INCORRECT_PAYMENT_DETAILS = PaymentFailureReason._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE_REASON_INCORRECT_PAYMENT_DETAILS');
  static const PaymentFailureReason FAILURE_REASON_INSUFFICIENT_BALANCE = PaymentFailureReason._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILURE_REASON_INSUFFICIENT_BALANCE');

  static const $core.List<PaymentFailureReason> values = <PaymentFailureReason> [
    FAILURE_REASON_NONE,
    FAILURE_REASON_TIMEOUT,
    FAILURE_REASON_NO_ROUTE,
    FAILURE_REASON_ERROR,
    FAILURE_REASON_INCORRECT_PAYMENT_DETAILS,
    FAILURE_REASON_INSUFFICIENT_BALANCE,
  ];

  static final $core.Map<$core.int, PaymentFailureReason> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PaymentFailureReason valueOf($core.int value) => _byValue[value];

  const PaymentFailureReason._($core.int v, $core.String n) : super(v, n);
}

class FeatureBit extends $pb.ProtobufEnum {
  static const FeatureBit DATALOSS_PROTECT_REQ = FeatureBit._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATALOSS_PROTECT_REQ');
  static const FeatureBit DATALOSS_PROTECT_OPT = FeatureBit._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'DATALOSS_PROTECT_OPT');
  static const FeatureBit INITIAL_ROUING_SYNC = FeatureBit._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INITIAL_ROUING_SYNC');
  static const FeatureBit UPFRONT_SHUTDOWN_SCRIPT_REQ = FeatureBit._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPFRONT_SHUTDOWN_SCRIPT_REQ');
  static const FeatureBit UPFRONT_SHUTDOWN_SCRIPT_OPT = FeatureBit._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UPFRONT_SHUTDOWN_SCRIPT_OPT');
  static const FeatureBit GOSSIP_QUERIES_REQ = FeatureBit._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GOSSIP_QUERIES_REQ');
  static const FeatureBit GOSSIP_QUERIES_OPT = FeatureBit._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'GOSSIP_QUERIES_OPT');
  static const FeatureBit TLV_ONION_REQ = FeatureBit._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TLV_ONION_REQ');
  static const FeatureBit TLV_ONION_OPT = FeatureBit._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TLV_ONION_OPT');
  static const FeatureBit EXT_GOSSIP_QUERIES_REQ = FeatureBit._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXT_GOSSIP_QUERIES_REQ');
  static const FeatureBit EXT_GOSSIP_QUERIES_OPT = FeatureBit._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXT_GOSSIP_QUERIES_OPT');
  static const FeatureBit STATIC_REMOTE_KEY_REQ = FeatureBit._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STATIC_REMOTE_KEY_REQ');
  static const FeatureBit STATIC_REMOTE_KEY_OPT = FeatureBit._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'STATIC_REMOTE_KEY_OPT');
  static const FeatureBit PAYMENT_ADDR_REQ = FeatureBit._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYMENT_ADDR_REQ');
  static const FeatureBit PAYMENT_ADDR_OPT = FeatureBit._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PAYMENT_ADDR_OPT');
  static const FeatureBit MPP_REQ = FeatureBit._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MPP_REQ');
  static const FeatureBit MPP_OPT = FeatureBit._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MPP_OPT');
  static const FeatureBit WUMBO_CHANNELS_REQ = FeatureBit._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WUMBO_CHANNELS_REQ');
  static const FeatureBit WUMBO_CHANNELS_OPT = FeatureBit._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WUMBO_CHANNELS_OPT');
  static const FeatureBit ANCHORS_REQ = FeatureBit._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANCHORS_REQ');
  static const FeatureBit ANCHORS_OPT = FeatureBit._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANCHORS_OPT');
  static const FeatureBit ANCHORS_ZERO_FEE_HTLC_REQ = FeatureBit._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANCHORS_ZERO_FEE_HTLC_REQ');
  static const FeatureBit ANCHORS_ZERO_FEE_HTLC_OPT = FeatureBit._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANCHORS_ZERO_FEE_HTLC_OPT');

  static const $core.List<FeatureBit> values = <FeatureBit> [
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
    WUMBO_CHANNELS_REQ,
    WUMBO_CHANNELS_OPT,
    ANCHORS_REQ,
    ANCHORS_OPT,
    ANCHORS_ZERO_FEE_HTLC_REQ,
    ANCHORS_ZERO_FEE_HTLC_OPT,
  ];

  static final $core.Map<$core.int, FeatureBit> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FeatureBit valueOf($core.int value) => _byValue[value];

  const FeatureBit._($core.int v, $core.String n) : super(v, n);
}

class ChannelCloseSummary_ClosureType extends $pb.ProtobufEnum {
  static const ChannelCloseSummary_ClosureType COOPERATIVE_CLOSE = ChannelCloseSummary_ClosureType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COOPERATIVE_CLOSE');
  static const ChannelCloseSummary_ClosureType LOCAL_FORCE_CLOSE = ChannelCloseSummary_ClosureType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOCAL_FORCE_CLOSE');
  static const ChannelCloseSummary_ClosureType REMOTE_FORCE_CLOSE = ChannelCloseSummary_ClosureType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REMOTE_FORCE_CLOSE');
  static const ChannelCloseSummary_ClosureType BREACH_CLOSE = ChannelCloseSummary_ClosureType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'BREACH_CLOSE');
  static const ChannelCloseSummary_ClosureType FUNDING_CANCELED = ChannelCloseSummary_ClosureType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FUNDING_CANCELED');
  static const ChannelCloseSummary_ClosureType ABANDONED = ChannelCloseSummary_ClosureType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ABANDONED');

  static const $core.List<ChannelCloseSummary_ClosureType> values = <ChannelCloseSummary_ClosureType> [
    COOPERATIVE_CLOSE,
    LOCAL_FORCE_CLOSE,
    REMOTE_FORCE_CLOSE,
    BREACH_CLOSE,
    FUNDING_CANCELED,
    ABANDONED,
  ];

  static final $core.Map<$core.int, ChannelCloseSummary_ClosureType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChannelCloseSummary_ClosureType valueOf($core.int value) => _byValue[value];

  const ChannelCloseSummary_ClosureType._($core.int v, $core.String n) : super(v, n);
}

class Peer_SyncType extends $pb.ProtobufEnum {
  static const Peer_SyncType UNKNOWN_SYNC = Peer_SyncType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_SYNC');
  static const Peer_SyncType ACTIVE_SYNC = Peer_SyncType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTIVE_SYNC');
  static const Peer_SyncType PASSIVE_SYNC = Peer_SyncType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PASSIVE_SYNC');
  static const Peer_SyncType PINNED_SYNC = Peer_SyncType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PINNED_SYNC');

  static const $core.List<Peer_SyncType> values = <Peer_SyncType> [
    UNKNOWN_SYNC,
    ACTIVE_SYNC,
    PASSIVE_SYNC,
    PINNED_SYNC,
  ];

  static final $core.Map<$core.int, Peer_SyncType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Peer_SyncType valueOf($core.int value) => _byValue[value];

  const Peer_SyncType._($core.int v, $core.String n) : super(v, n);
}

class PeerEvent_EventType extends $pb.ProtobufEnum {
  static const PeerEvent_EventType PEER_ONLINE = PeerEvent_EventType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PEER_ONLINE');
  static const PeerEvent_EventType PEER_OFFLINE = PeerEvent_EventType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PEER_OFFLINE');

  static const $core.List<PeerEvent_EventType> values = <PeerEvent_EventType> [
    PEER_ONLINE,
    PEER_OFFLINE,
  ];

  static final $core.Map<$core.int, PeerEvent_EventType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PeerEvent_EventType valueOf($core.int value) => _byValue[value];

  const PeerEvent_EventType._($core.int v, $core.String n) : super(v, n);
}

class PendingChannelsResponse_ForceClosedChannel_AnchorState extends $pb.ProtobufEnum {
  static const PendingChannelsResponse_ForceClosedChannel_AnchorState LIMBO = PendingChannelsResponse_ForceClosedChannel_AnchorState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LIMBO');
  static const PendingChannelsResponse_ForceClosedChannel_AnchorState RECOVERED = PendingChannelsResponse_ForceClosedChannel_AnchorState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RECOVERED');
  static const PendingChannelsResponse_ForceClosedChannel_AnchorState LOST = PendingChannelsResponse_ForceClosedChannel_AnchorState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LOST');

  static const $core.List<PendingChannelsResponse_ForceClosedChannel_AnchorState> values = <PendingChannelsResponse_ForceClosedChannel_AnchorState> [
    LIMBO,
    RECOVERED,
    LOST,
  ];

  static final $core.Map<$core.int, PendingChannelsResponse_ForceClosedChannel_AnchorState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PendingChannelsResponse_ForceClosedChannel_AnchorState valueOf($core.int value) => _byValue[value];

  const PendingChannelsResponse_ForceClosedChannel_AnchorState._($core.int v, $core.String n) : super(v, n);
}

class ChannelEventUpdate_UpdateType extends $pb.ProtobufEnum {
  static const ChannelEventUpdate_UpdateType OPEN_CHANNEL = ChannelEventUpdate_UpdateType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OPEN_CHANNEL');
  static const ChannelEventUpdate_UpdateType CLOSED_CHANNEL = ChannelEventUpdate_UpdateType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CLOSED_CHANNEL');
  static const ChannelEventUpdate_UpdateType ACTIVE_CHANNEL = ChannelEventUpdate_UpdateType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACTIVE_CHANNEL');
  static const ChannelEventUpdate_UpdateType INACTIVE_CHANNEL = ChannelEventUpdate_UpdateType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INACTIVE_CHANNEL');
  static const ChannelEventUpdate_UpdateType PENDING_OPEN_CHANNEL = ChannelEventUpdate_UpdateType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PENDING_OPEN_CHANNEL');

  static const $core.List<ChannelEventUpdate_UpdateType> values = <ChannelEventUpdate_UpdateType> [
    OPEN_CHANNEL,
    CLOSED_CHANNEL,
    ACTIVE_CHANNEL,
    INACTIVE_CHANNEL,
    PENDING_OPEN_CHANNEL,
  ];

  static final $core.Map<$core.int, ChannelEventUpdate_UpdateType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ChannelEventUpdate_UpdateType valueOf($core.int value) => _byValue[value];

  const ChannelEventUpdate_UpdateType._($core.int v, $core.String n) : super(v, n);
}

class Invoice_InvoiceState extends $pb.ProtobufEnum {
  static const Invoice_InvoiceState OPEN = Invoice_InvoiceState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'OPEN');
  static const Invoice_InvoiceState SETTLED = Invoice_InvoiceState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SETTLED');
  static const Invoice_InvoiceState CANCELED = Invoice_InvoiceState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CANCELED');
  static const Invoice_InvoiceState ACCEPTED = Invoice_InvoiceState._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ACCEPTED');

  static const $core.List<Invoice_InvoiceState> values = <Invoice_InvoiceState> [
    OPEN,
    SETTLED,
    CANCELED,
    ACCEPTED,
  ];

  static final $core.Map<$core.int, Invoice_InvoiceState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Invoice_InvoiceState valueOf($core.int value) => _byValue[value];

  const Invoice_InvoiceState._($core.int v, $core.String n) : super(v, n);
}

class Payment_PaymentStatus extends $pb.ProtobufEnum {
  static const Payment_PaymentStatus UNKNOWN = Payment_PaymentStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const Payment_PaymentStatus IN_FLIGHT = Payment_PaymentStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IN_FLIGHT');
  static const Payment_PaymentStatus SUCCEEDED = Payment_PaymentStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCEEDED');
  static const Payment_PaymentStatus FAILED = Payment_PaymentStatus._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILED');

  static const $core.List<Payment_PaymentStatus> values = <Payment_PaymentStatus> [
    UNKNOWN,
    IN_FLIGHT,
    SUCCEEDED,
    FAILED,
  ];

  static final $core.Map<$core.int, Payment_PaymentStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Payment_PaymentStatus valueOf($core.int value) => _byValue[value];

  const Payment_PaymentStatus._($core.int v, $core.String n) : super(v, n);
}

class HTLCAttempt_HTLCStatus extends $pb.ProtobufEnum {
  static const HTLCAttempt_HTLCStatus IN_FLIGHT = HTLCAttempt_HTLCStatus._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IN_FLIGHT');
  static const HTLCAttempt_HTLCStatus SUCCEEDED = HTLCAttempt_HTLCStatus._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCEEDED');
  static const HTLCAttempt_HTLCStatus FAILED = HTLCAttempt_HTLCStatus._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILED');

  static const $core.List<HTLCAttempt_HTLCStatus> values = <HTLCAttempt_HTLCStatus> [
    IN_FLIGHT,
    SUCCEEDED,
    FAILED,
  ];

  static final $core.Map<$core.int, HTLCAttempt_HTLCStatus> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HTLCAttempt_HTLCStatus valueOf($core.int value) => _byValue[value];

  const HTLCAttempt_HTLCStatus._($core.int v, $core.String n) : super(v, n);
}

class Failure_FailureCode extends $pb.ProtobufEnum {
  static const Failure_FailureCode RESERVED = Failure_FailureCode._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RESERVED');
  static const Failure_FailureCode INCORRECT_OR_UNKNOWN_PAYMENT_DETAILS = Failure_FailureCode._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INCORRECT_OR_UNKNOWN_PAYMENT_DETAILS');
  static const Failure_FailureCode INCORRECT_PAYMENT_AMOUNT = Failure_FailureCode._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INCORRECT_PAYMENT_AMOUNT');
  static const Failure_FailureCode FINAL_INCORRECT_CLTV_EXPIRY = Failure_FailureCode._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FINAL_INCORRECT_CLTV_EXPIRY');
  static const Failure_FailureCode FINAL_INCORRECT_HTLC_AMOUNT = Failure_FailureCode._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FINAL_INCORRECT_HTLC_AMOUNT');
  static const Failure_FailureCode FINAL_EXPIRY_TOO_SOON = Failure_FailureCode._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FINAL_EXPIRY_TOO_SOON');
  static const Failure_FailureCode INVALID_REALM = Failure_FailureCode._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_REALM');
  static const Failure_FailureCode EXPIRY_TOO_SOON = Failure_FailureCode._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPIRY_TOO_SOON');
  static const Failure_FailureCode INVALID_ONION_VERSION = Failure_FailureCode._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_ONION_VERSION');
  static const Failure_FailureCode INVALID_ONION_HMAC = Failure_FailureCode._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_ONION_HMAC');
  static const Failure_FailureCode INVALID_ONION_KEY = Failure_FailureCode._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_ONION_KEY');
  static const Failure_FailureCode AMOUNT_BELOW_MINIMUM = Failure_FailureCode._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'AMOUNT_BELOW_MINIMUM');
  static const Failure_FailureCode FEE_INSUFFICIENT = Failure_FailureCode._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FEE_INSUFFICIENT');
  static const Failure_FailureCode INCORRECT_CLTV_EXPIRY = Failure_FailureCode._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INCORRECT_CLTV_EXPIRY');
  static const Failure_FailureCode CHANNEL_DISABLED = Failure_FailureCode._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CHANNEL_DISABLED');
  static const Failure_FailureCode TEMPORARY_CHANNEL_FAILURE = Failure_FailureCode._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEMPORARY_CHANNEL_FAILURE');
  static const Failure_FailureCode REQUIRED_NODE_FEATURE_MISSING = Failure_FailureCode._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REQUIRED_NODE_FEATURE_MISSING');
  static const Failure_FailureCode REQUIRED_CHANNEL_FEATURE_MISSING = Failure_FailureCode._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'REQUIRED_CHANNEL_FEATURE_MISSING');
  static const Failure_FailureCode UNKNOWN_NEXT_PEER = Failure_FailureCode._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_NEXT_PEER');
  static const Failure_FailureCode TEMPORARY_NODE_FAILURE = Failure_FailureCode._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'TEMPORARY_NODE_FAILURE');
  static const Failure_FailureCode PERMANENT_NODE_FAILURE = Failure_FailureCode._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PERMANENT_NODE_FAILURE');
  static const Failure_FailureCode PERMANENT_CHANNEL_FAILURE = Failure_FailureCode._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'PERMANENT_CHANNEL_FAILURE');
  static const Failure_FailureCode EXPIRY_TOO_FAR = Failure_FailureCode._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'EXPIRY_TOO_FAR');
  static const Failure_FailureCode MPP_TIMEOUT = Failure_FailureCode._(23, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MPP_TIMEOUT');
  static const Failure_FailureCode INTERNAL_FAILURE = Failure_FailureCode._(997, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INTERNAL_FAILURE');
  static const Failure_FailureCode UNKNOWN_FAILURE = Failure_FailureCode._(998, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_FAILURE');
  static const Failure_FailureCode UNREADABLE_FAILURE = Failure_FailureCode._(999, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNREADABLE_FAILURE');

  static const $core.List<Failure_FailureCode> values = <Failure_FailureCode> [
    RESERVED,
    INCORRECT_OR_UNKNOWN_PAYMENT_DETAILS,
    INCORRECT_PAYMENT_AMOUNT,
    FINAL_INCORRECT_CLTV_EXPIRY,
    FINAL_INCORRECT_HTLC_AMOUNT,
    FINAL_EXPIRY_TOO_SOON,
    INVALID_REALM,
    EXPIRY_TOO_SOON,
    INVALID_ONION_VERSION,
    INVALID_ONION_HMAC,
    INVALID_ONION_KEY,
    AMOUNT_BELOW_MINIMUM,
    FEE_INSUFFICIENT,
    INCORRECT_CLTV_EXPIRY,
    CHANNEL_DISABLED,
    TEMPORARY_CHANNEL_FAILURE,
    REQUIRED_NODE_FEATURE_MISSING,
    REQUIRED_CHANNEL_FEATURE_MISSING,
    UNKNOWN_NEXT_PEER,
    TEMPORARY_NODE_FAILURE,
    PERMANENT_NODE_FAILURE,
    PERMANENT_CHANNEL_FAILURE,
    EXPIRY_TOO_FAR,
    MPP_TIMEOUT,
    INTERNAL_FAILURE,
    UNKNOWN_FAILURE,
    UNREADABLE_FAILURE,
  ];

  static final $core.Map<$core.int, Failure_FailureCode> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Failure_FailureCode valueOf($core.int value) => _byValue[value];

  const Failure_FailureCode._($core.int v, $core.String n) : super(v, n);
}

