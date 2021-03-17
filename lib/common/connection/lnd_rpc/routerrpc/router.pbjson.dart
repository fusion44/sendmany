///
//  Generated code. Do not modify.
//  source: routerrpc/router.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use failureDetailDescriptor instead')
const FailureDetail$json = const {
  '1': 'FailureDetail',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'NO_DETAIL', '2': 1},
    const {'1': 'ONION_DECODE', '2': 2},
    const {'1': 'LINK_NOT_ELIGIBLE', '2': 3},
    const {'1': 'ON_CHAIN_TIMEOUT', '2': 4},
    const {'1': 'HTLC_EXCEEDS_MAX', '2': 5},
    const {'1': 'INSUFFICIENT_BALANCE', '2': 6},
    const {'1': 'INCOMPLETE_FORWARD', '2': 7},
    const {'1': 'HTLC_ADD_FAILED', '2': 8},
    const {'1': 'FORWARDS_DISABLED', '2': 9},
    const {'1': 'INVOICE_CANCELED', '2': 10},
    const {'1': 'INVOICE_UNDERPAID', '2': 11},
    const {'1': 'INVOICE_EXPIRY_TOO_SOON', '2': 12},
    const {'1': 'INVOICE_NOT_OPEN', '2': 13},
    const {'1': 'MPP_INVOICE_TIMEOUT', '2': 14},
    const {'1': 'ADDRESS_MISMATCH', '2': 15},
    const {'1': 'SET_TOTAL_MISMATCH', '2': 16},
    const {'1': 'SET_TOTAL_TOO_LOW', '2': 17},
    const {'1': 'SET_OVERPAID', '2': 18},
    const {'1': 'UNKNOWN_INVOICE', '2': 19},
    const {'1': 'INVALID_KEYSEND', '2': 20},
    const {'1': 'MPP_IN_PROGRESS', '2': 21},
    const {'1': 'CIRCULAR_ROUTE', '2': 22},
  ],
};

/// Descriptor for `FailureDetail`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List failureDetailDescriptor = $convert.base64Decode('Cg1GYWlsdXJlRGV0YWlsEgsKB1VOS05PV04QABINCglOT19ERVRBSUwQARIQCgxPTklPTl9ERUNPREUQAhIVChFMSU5LX05PVF9FTElHSUJMRRADEhQKEE9OX0NIQUlOX1RJTUVPVVQQBBIUChBIVExDX0VYQ0VFRFNfTUFYEAUSGAoUSU5TVUZGSUNJRU5UX0JBTEFOQ0UQBhIWChJJTkNPTVBMRVRFX0ZPUldBUkQQBxITCg9IVExDX0FERF9GQUlMRUQQCBIVChFGT1JXQVJEU19ESVNBQkxFRBAJEhQKEElOVk9JQ0VfQ0FOQ0VMRUQQChIVChFJTlZPSUNFX1VOREVSUEFJRBALEhsKF0lOVk9JQ0VfRVhQSVJZX1RPT19TT09OEAwSFAoQSU5WT0lDRV9OT1RfT1BFThANEhcKE01QUF9JTlZPSUNFX1RJTUVPVVQQDhIUChBBRERSRVNTX01JU01BVENIEA8SFgoSU0VUX1RPVEFMX01JU01BVENIEBASFQoRU0VUX1RPVEFMX1RPT19MT1cQERIQCgxTRVRfT1ZFUlBBSUQQEhITCg9VTktOT1dOX0lOVk9JQ0UQExITCg9JTlZBTElEX0tFWVNFTkQQFBITCg9NUFBfSU5fUFJPR1JFU1MQFRISCg5DSVJDVUxBUl9ST1VURRAW');
@$core.Deprecated('Use paymentStateDescriptor instead')
const PaymentState$json = const {
  '1': 'PaymentState',
  '2': const [
    const {'1': 'IN_FLIGHT', '2': 0},
    const {'1': 'SUCCEEDED', '2': 1},
    const {'1': 'FAILED_TIMEOUT', '2': 2},
    const {'1': 'FAILED_NO_ROUTE', '2': 3},
    const {'1': 'FAILED_ERROR', '2': 4},
    const {'1': 'FAILED_INCORRECT_PAYMENT_DETAILS', '2': 5},
    const {'1': 'FAILED_INSUFFICIENT_BALANCE', '2': 6},
  ],
};

/// Descriptor for `PaymentState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List paymentStateDescriptor = $convert.base64Decode('CgxQYXltZW50U3RhdGUSDQoJSU5fRkxJR0hUEAASDQoJU1VDQ0VFREVEEAESEgoORkFJTEVEX1RJTUVPVVQQAhITCg9GQUlMRURfTk9fUk9VVEUQAxIQCgxGQUlMRURfRVJST1IQBBIkCiBGQUlMRURfSU5DT1JSRUNUX1BBWU1FTlRfREVUQUlMUxAFEh8KG0ZBSUxFRF9JTlNVRkZJQ0lFTlRfQkFMQU5DRRAG');
@$core.Deprecated('Use resolveHoldForwardActionDescriptor instead')
const ResolveHoldForwardAction$json = const {
  '1': 'ResolveHoldForwardAction',
  '2': const [
    const {'1': 'SETTLE', '2': 0},
    const {'1': 'FAIL', '2': 1},
    const {'1': 'RESUME', '2': 2},
  ],
};

/// Descriptor for `ResolveHoldForwardAction`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resolveHoldForwardActionDescriptor = $convert.base64Decode('ChhSZXNvbHZlSG9sZEZvcndhcmRBY3Rpb24SCgoGU0VUVExFEAASCAoERkFJTBABEgoKBlJFU1VNRRAC');
@$core.Deprecated('Use sendPaymentRequestDescriptor instead')
const SendPaymentRequest$json = const {
  '1': 'SendPaymentRequest',
  '2': const [
    const {'1': 'dest', '3': 1, '4': 1, '5': 12, '10': 'dest'},
    const {'1': 'amt', '3': 2, '4': 1, '5': 3, '10': 'amt'},
    const {'1': 'amt_msat', '3': 12, '4': 1, '5': 3, '10': 'amtMsat'},
    const {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    const {'1': 'final_cltv_delta', '3': 4, '4': 1, '5': 5, '10': 'finalCltvDelta'},
    const {'1': 'payment_addr', '3': 20, '4': 1, '5': 12, '10': 'paymentAddr'},
    const {'1': 'payment_request', '3': 5, '4': 1, '5': 9, '10': 'paymentRequest'},
    const {'1': 'timeout_seconds', '3': 6, '4': 1, '5': 5, '10': 'timeoutSeconds'},
    const {'1': 'fee_limit_sat', '3': 7, '4': 1, '5': 3, '10': 'feeLimitSat'},
    const {'1': 'fee_limit_msat', '3': 13, '4': 1, '5': 3, '10': 'feeLimitMsat'},
    const {
      '1': 'outgoing_chan_id',
      '3': 8,
      '4': 1,
      '5': 4,
      '8': const {'3': true, '6': 1},
      '10': 'outgoingChanId',
    },
    const {'1': 'outgoing_chan_ids', '3': 19, '4': 3, '5': 4, '10': 'outgoingChanIds'},
    const {'1': 'last_hop_pubkey', '3': 14, '4': 1, '5': 12, '10': 'lastHopPubkey'},
    const {'1': 'cltv_limit', '3': 9, '4': 1, '5': 5, '10': 'cltvLimit'},
    const {'1': 'route_hints', '3': 10, '4': 3, '5': 11, '6': '.lnrpc.RouteHint', '10': 'routeHints'},
    const {'1': 'dest_custom_records', '3': 11, '4': 3, '5': 11, '6': '.routerrpc.SendPaymentRequest.DestCustomRecordsEntry', '10': 'destCustomRecords'},
    const {'1': 'allow_self_payment', '3': 15, '4': 1, '5': 8, '10': 'allowSelfPayment'},
    const {'1': 'dest_features', '3': 16, '4': 3, '5': 14, '6': '.lnrpc.FeatureBit', '10': 'destFeatures'},
    const {'1': 'max_parts', '3': 17, '4': 1, '5': 13, '10': 'maxParts'},
    const {'1': 'no_inflight_updates', '3': 18, '4': 1, '5': 8, '10': 'noInflightUpdates'},
    const {'1': 'max_shard_size_msat', '3': 21, '4': 1, '5': 4, '10': 'maxShardSizeMsat'},
  ],
  '3': const [SendPaymentRequest_DestCustomRecordsEntry$json],
};

@$core.Deprecated('Use sendPaymentRequestDescriptor instead')
const SendPaymentRequest_DestCustomRecordsEntry$json = const {
  '1': 'DestCustomRecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `SendPaymentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendPaymentRequestDescriptor = $convert.base64Decode('ChJTZW5kUGF5bWVudFJlcXVlc3QSEgoEZGVzdBgBIAEoDFIEZGVzdBIQCgNhbXQYAiABKANSA2FtdBIZCghhbXRfbXNhdBgMIAEoA1IHYW10TXNhdBIhCgxwYXltZW50X2hhc2gYAyABKAxSC3BheW1lbnRIYXNoEigKEGZpbmFsX2NsdHZfZGVsdGEYBCABKAVSDmZpbmFsQ2x0dkRlbHRhEiEKDHBheW1lbnRfYWRkchgUIAEoDFILcGF5bWVudEFkZHISJwoPcGF5bWVudF9yZXF1ZXN0GAUgASgJUg5wYXltZW50UmVxdWVzdBInCg90aW1lb3V0X3NlY29uZHMYBiABKAVSDnRpbWVvdXRTZWNvbmRzEiIKDWZlZV9saW1pdF9zYXQYByABKANSC2ZlZUxpbWl0U2F0EiQKDmZlZV9saW1pdF9tc2F0GA0gASgDUgxmZWVMaW1pdE1zYXQSLgoQb3V0Z29pbmdfY2hhbl9pZBgIIAEoBEIEGAEwAVIOb3V0Z29pbmdDaGFuSWQSKgoRb3V0Z29pbmdfY2hhbl9pZHMYEyADKARSD291dGdvaW5nQ2hhbklkcxImCg9sYXN0X2hvcF9wdWJrZXkYDiABKAxSDWxhc3RIb3BQdWJrZXkSHQoKY2x0dl9saW1pdBgJIAEoBVIJY2x0dkxpbWl0EjEKC3JvdXRlX2hpbnRzGAogAygLMhAubG5ycGMuUm91dGVIaW50Ugpyb3V0ZUhpbnRzEmQKE2Rlc3RfY3VzdG9tX3JlY29yZHMYCyADKAsyNC5yb3V0ZXJycGMuU2VuZFBheW1lbnRSZXF1ZXN0LkRlc3RDdXN0b21SZWNvcmRzRW50cnlSEWRlc3RDdXN0b21SZWNvcmRzEiwKEmFsbG93X3NlbGZfcGF5bWVudBgPIAEoCFIQYWxsb3dTZWxmUGF5bWVudBI2Cg1kZXN0X2ZlYXR1cmVzGBAgAygOMhEubG5ycGMuRmVhdHVyZUJpdFIMZGVzdEZlYXR1cmVzEhsKCW1heF9wYXJ0cxgRIAEoDVIIbWF4UGFydHMSLgoTbm9faW5mbGlnaHRfdXBkYXRlcxgSIAEoCFIRbm9JbmZsaWdodFVwZGF0ZXMSLQoTbWF4X3NoYXJkX3NpemVfbXNhdBgVIAEoBFIQbWF4U2hhcmRTaXplTXNhdBpEChZEZXN0Q3VzdG9tUmVjb3Jkc0VudHJ5EhAKA2tleRgBIAEoBFIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use trackPaymentRequestDescriptor instead')
const TrackPaymentRequest$json = const {
  '1': 'TrackPaymentRequest',
  '2': const [
    const {'1': 'payment_hash', '3': 1, '4': 1, '5': 12, '10': 'paymentHash'},
    const {'1': 'no_inflight_updates', '3': 2, '4': 1, '5': 8, '10': 'noInflightUpdates'},
  ],
};

/// Descriptor for `TrackPaymentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List trackPaymentRequestDescriptor = $convert.base64Decode('ChNUcmFja1BheW1lbnRSZXF1ZXN0EiEKDHBheW1lbnRfaGFzaBgBIAEoDFILcGF5bWVudEhhc2gSLgoTbm9faW5mbGlnaHRfdXBkYXRlcxgCIAEoCFIRbm9JbmZsaWdodFVwZGF0ZXM=');
@$core.Deprecated('Use routeFeeRequestDescriptor instead')
const RouteFeeRequest$json = const {
  '1': 'RouteFeeRequest',
  '2': const [
    const {'1': 'dest', '3': 1, '4': 1, '5': 12, '10': 'dest'},
    const {'1': 'amt_sat', '3': 2, '4': 1, '5': 3, '10': 'amtSat'},
  ],
};

/// Descriptor for `RouteFeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routeFeeRequestDescriptor = $convert.base64Decode('Cg9Sb3V0ZUZlZVJlcXVlc3QSEgoEZGVzdBgBIAEoDFIEZGVzdBIXCgdhbXRfc2F0GAIgASgDUgZhbXRTYXQ=');
@$core.Deprecated('Use routeFeeResponseDescriptor instead')
const RouteFeeResponse$json = const {
  '1': 'RouteFeeResponse',
  '2': const [
    const {'1': 'routing_fee_msat', '3': 1, '4': 1, '5': 3, '10': 'routingFeeMsat'},
    const {'1': 'time_lock_delay', '3': 2, '4': 1, '5': 3, '10': 'timeLockDelay'},
  ],
};

/// Descriptor for `RouteFeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routeFeeResponseDescriptor = $convert.base64Decode('ChBSb3V0ZUZlZVJlc3BvbnNlEigKEHJvdXRpbmdfZmVlX21zYXQYASABKANSDnJvdXRpbmdGZWVNc2F0EiYKD3RpbWVfbG9ja19kZWxheRgCIAEoA1INdGltZUxvY2tEZWxheQ==');
@$core.Deprecated('Use sendToRouteRequestDescriptor instead')
const SendToRouteRequest$json = const {
  '1': 'SendToRouteRequest',
  '2': const [
    const {'1': 'payment_hash', '3': 1, '4': 1, '5': 12, '10': 'paymentHash'},
    const {'1': 'route', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Route', '10': 'route'},
  ],
};

/// Descriptor for `SendToRouteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendToRouteRequestDescriptor = $convert.base64Decode('ChJTZW5kVG9Sb3V0ZVJlcXVlc3QSIQoMcGF5bWVudF9oYXNoGAEgASgMUgtwYXltZW50SGFzaBIiCgVyb3V0ZRgCIAEoCzIMLmxucnBjLlJvdXRlUgVyb3V0ZQ==');
@$core.Deprecated('Use sendToRouteResponseDescriptor instead')
const SendToRouteResponse$json = const {
  '1': 'SendToRouteResponse',
  '2': const [
    const {'1': 'preimage', '3': 1, '4': 1, '5': 12, '10': 'preimage'},
    const {'1': 'failure', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Failure', '10': 'failure'},
  ],
};

/// Descriptor for `SendToRouteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendToRouteResponseDescriptor = $convert.base64Decode('ChNTZW5kVG9Sb3V0ZVJlc3BvbnNlEhoKCHByZWltYWdlGAEgASgMUghwcmVpbWFnZRIoCgdmYWlsdXJlGAIgASgLMg4ubG5ycGMuRmFpbHVyZVIHZmFpbHVyZQ==');
@$core.Deprecated('Use resetMissionControlRequestDescriptor instead')
const ResetMissionControlRequest$json = const {
  '1': 'ResetMissionControlRequest',
};

/// Descriptor for `ResetMissionControlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetMissionControlRequestDescriptor = $convert.base64Decode('ChpSZXNldE1pc3Npb25Db250cm9sUmVxdWVzdA==');
@$core.Deprecated('Use resetMissionControlResponseDescriptor instead')
const ResetMissionControlResponse$json = const {
  '1': 'ResetMissionControlResponse',
};

/// Descriptor for `ResetMissionControlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resetMissionControlResponseDescriptor = $convert.base64Decode('ChtSZXNldE1pc3Npb25Db250cm9sUmVzcG9uc2U=');
@$core.Deprecated('Use queryMissionControlRequestDescriptor instead')
const QueryMissionControlRequest$json = const {
  '1': 'QueryMissionControlRequest',
};

/// Descriptor for `QueryMissionControlRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryMissionControlRequestDescriptor = $convert.base64Decode('ChpRdWVyeU1pc3Npb25Db250cm9sUmVxdWVzdA==');
@$core.Deprecated('Use queryMissionControlResponseDescriptor instead')
const QueryMissionControlResponse$json = const {
  '1': 'QueryMissionControlResponse',
  '2': const [
    const {'1': 'pairs', '3': 2, '4': 3, '5': 11, '6': '.routerrpc.PairHistory', '10': 'pairs'},
  ],
  '9': const [
    const {'1': 1, '2': 2},
  ],
};

/// Descriptor for `QueryMissionControlResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryMissionControlResponseDescriptor = $convert.base64Decode('ChtRdWVyeU1pc3Npb25Db250cm9sUmVzcG9uc2USLAoFcGFpcnMYAiADKAsyFi5yb3V0ZXJycGMuUGFpckhpc3RvcnlSBXBhaXJzSgQIARAC');
@$core.Deprecated('Use pairHistoryDescriptor instead')
const PairHistory$json = const {
  '1': 'PairHistory',
  '2': const [
    const {'1': 'node_from', '3': 1, '4': 1, '5': 12, '10': 'nodeFrom'},
    const {'1': 'node_to', '3': 2, '4': 1, '5': 12, '10': 'nodeTo'},
    const {'1': 'history', '3': 7, '4': 1, '5': 11, '6': '.routerrpc.PairData', '10': 'history'},
  ],
  '9': const [
    const {'1': 3, '2': 4},
    const {'1': 4, '2': 5},
    const {'1': 5, '2': 6},
    const {'1': 6, '2': 7},
  ],
};

/// Descriptor for `PairHistory`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairHistoryDescriptor = $convert.base64Decode('CgtQYWlySGlzdG9yeRIbCglub2RlX2Zyb20YASABKAxSCG5vZGVGcm9tEhcKB25vZGVfdG8YAiABKAxSBm5vZGVUbxItCgdoaXN0b3J5GAcgASgLMhMucm91dGVycnBjLlBhaXJEYXRhUgdoaXN0b3J5SgQIAxAESgQIBBAFSgQIBRAGSgQIBhAH');
@$core.Deprecated('Use pairDataDescriptor instead')
const PairData$json = const {
  '1': 'PairData',
  '2': const [
    const {'1': 'fail_time', '3': 1, '4': 1, '5': 3, '10': 'failTime'},
    const {'1': 'fail_amt_sat', '3': 2, '4': 1, '5': 3, '10': 'failAmtSat'},
    const {'1': 'fail_amt_msat', '3': 4, '4': 1, '5': 3, '10': 'failAmtMsat'},
    const {'1': 'success_time', '3': 5, '4': 1, '5': 3, '10': 'successTime'},
    const {'1': 'success_amt_sat', '3': 6, '4': 1, '5': 3, '10': 'successAmtSat'},
    const {'1': 'success_amt_msat', '3': 7, '4': 1, '5': 3, '10': 'successAmtMsat'},
  ],
  '9': const [
    const {'1': 3, '2': 4},
  ],
};

/// Descriptor for `PairData`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pairDataDescriptor = $convert.base64Decode('CghQYWlyRGF0YRIbCglmYWlsX3RpbWUYASABKANSCGZhaWxUaW1lEiAKDGZhaWxfYW10X3NhdBgCIAEoA1IKZmFpbEFtdFNhdBIiCg1mYWlsX2FtdF9tc2F0GAQgASgDUgtmYWlsQW10TXNhdBIhCgxzdWNjZXNzX3RpbWUYBSABKANSC3N1Y2Nlc3NUaW1lEiYKD3N1Y2Nlc3NfYW10X3NhdBgGIAEoA1INc3VjY2Vzc0FtdFNhdBIoChBzdWNjZXNzX2FtdF9tc2F0GAcgASgDUg5zdWNjZXNzQW10TXNhdEoECAMQBA==');
@$core.Deprecated('Use queryProbabilityRequestDescriptor instead')
const QueryProbabilityRequest$json = const {
  '1': 'QueryProbabilityRequest',
  '2': const [
    const {'1': 'from_node', '3': 1, '4': 1, '5': 12, '10': 'fromNode'},
    const {'1': 'to_node', '3': 2, '4': 1, '5': 12, '10': 'toNode'},
    const {'1': 'amt_msat', '3': 3, '4': 1, '5': 3, '10': 'amtMsat'},
  ],
};

/// Descriptor for `QueryProbabilityRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryProbabilityRequestDescriptor = $convert.base64Decode('ChdRdWVyeVByb2JhYmlsaXR5UmVxdWVzdBIbCglmcm9tX25vZGUYASABKAxSCGZyb21Ob2RlEhcKB3RvX25vZGUYAiABKAxSBnRvTm9kZRIZCghhbXRfbXNhdBgDIAEoA1IHYW10TXNhdA==');
@$core.Deprecated('Use queryProbabilityResponseDescriptor instead')
const QueryProbabilityResponse$json = const {
  '1': 'QueryProbabilityResponse',
  '2': const [
    const {'1': 'probability', '3': 1, '4': 1, '5': 1, '10': 'probability'},
    const {'1': 'history', '3': 2, '4': 1, '5': 11, '6': '.routerrpc.PairData', '10': 'history'},
  ],
};

/// Descriptor for `QueryProbabilityResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryProbabilityResponseDescriptor = $convert.base64Decode('ChhRdWVyeVByb2JhYmlsaXR5UmVzcG9uc2USIAoLcHJvYmFiaWxpdHkYASABKAFSC3Byb2JhYmlsaXR5Ei0KB2hpc3RvcnkYAiABKAsyEy5yb3V0ZXJycGMuUGFpckRhdGFSB2hpc3Rvcnk=');
@$core.Deprecated('Use buildRouteRequestDescriptor instead')
const BuildRouteRequest$json = const {
  '1': 'BuildRouteRequest',
  '2': const [
    const {'1': 'amt_msat', '3': 1, '4': 1, '5': 3, '10': 'amtMsat'},
    const {'1': 'final_cltv_delta', '3': 2, '4': 1, '5': 5, '10': 'finalCltvDelta'},
    const {
      '1': 'outgoing_chan_id',
      '3': 3,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'outgoingChanId',
    },
    const {'1': 'hop_pubkeys', '3': 4, '4': 3, '5': 12, '10': 'hopPubkeys'},
    const {'1': 'payment_addr', '3': 5, '4': 1, '5': 12, '10': 'paymentAddr'},
  ],
};

/// Descriptor for `BuildRouteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buildRouteRequestDescriptor = $convert.base64Decode('ChFCdWlsZFJvdXRlUmVxdWVzdBIZCghhbXRfbXNhdBgBIAEoA1IHYW10TXNhdBIoChBmaW5hbF9jbHR2X2RlbHRhGAIgASgFUg5maW5hbENsdHZEZWx0YRIsChBvdXRnb2luZ19jaGFuX2lkGAMgASgEQgIwAVIOb3V0Z29pbmdDaGFuSWQSHwoLaG9wX3B1YmtleXMYBCADKAxSCmhvcFB1YmtleXMSIQoMcGF5bWVudF9hZGRyGAUgASgMUgtwYXltZW50QWRkcg==');
@$core.Deprecated('Use buildRouteResponseDescriptor instead')
const BuildRouteResponse$json = const {
  '1': 'BuildRouteResponse',
  '2': const [
    const {'1': 'route', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.Route', '10': 'route'},
  ],
};

/// Descriptor for `BuildRouteResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List buildRouteResponseDescriptor = $convert.base64Decode('ChJCdWlsZFJvdXRlUmVzcG9uc2USIgoFcm91dGUYASABKAsyDC5sbnJwYy5Sb3V0ZVIFcm91dGU=');
@$core.Deprecated('Use subscribeHtlcEventsRequestDescriptor instead')
const SubscribeHtlcEventsRequest$json = const {
  '1': 'SubscribeHtlcEventsRequest',
};

/// Descriptor for `SubscribeHtlcEventsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List subscribeHtlcEventsRequestDescriptor = $convert.base64Decode('ChpTdWJzY3JpYmVIdGxjRXZlbnRzUmVxdWVzdA==');
@$core.Deprecated('Use htlcEventDescriptor instead')
const HtlcEvent$json = const {
  '1': 'HtlcEvent',
  '2': const [
    const {'1': 'incoming_channel_id', '3': 1, '4': 1, '5': 4, '10': 'incomingChannelId'},
    const {'1': 'outgoing_channel_id', '3': 2, '4': 1, '5': 4, '10': 'outgoingChannelId'},
    const {'1': 'incoming_htlc_id', '3': 3, '4': 1, '5': 4, '10': 'incomingHtlcId'},
    const {'1': 'outgoing_htlc_id', '3': 4, '4': 1, '5': 4, '10': 'outgoingHtlcId'},
    const {'1': 'timestamp_ns', '3': 5, '4': 1, '5': 4, '10': 'timestampNs'},
    const {'1': 'event_type', '3': 6, '4': 1, '5': 14, '6': '.routerrpc.HtlcEvent.EventType', '10': 'eventType'},
    const {'1': 'forward_event', '3': 7, '4': 1, '5': 11, '6': '.routerrpc.ForwardEvent', '9': 0, '10': 'forwardEvent'},
    const {'1': 'forward_fail_event', '3': 8, '4': 1, '5': 11, '6': '.routerrpc.ForwardFailEvent', '9': 0, '10': 'forwardFailEvent'},
    const {'1': 'settle_event', '3': 9, '4': 1, '5': 11, '6': '.routerrpc.SettleEvent', '9': 0, '10': 'settleEvent'},
    const {'1': 'link_fail_event', '3': 10, '4': 1, '5': 11, '6': '.routerrpc.LinkFailEvent', '9': 0, '10': 'linkFailEvent'},
  ],
  '4': const [HtlcEvent_EventType$json],
  '8': const [
    const {'1': 'event'},
  ],
};

@$core.Deprecated('Use htlcEventDescriptor instead')
const HtlcEvent_EventType$json = const {
  '1': 'EventType',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'SEND', '2': 1},
    const {'1': 'RECEIVE', '2': 2},
    const {'1': 'FORWARD', '2': 3},
  ],
};

/// Descriptor for `HtlcEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List htlcEventDescriptor = $convert.base64Decode('CglIdGxjRXZlbnQSLgoTaW5jb21pbmdfY2hhbm5lbF9pZBgBIAEoBFIRaW5jb21pbmdDaGFubmVsSWQSLgoTb3V0Z29pbmdfY2hhbm5lbF9pZBgCIAEoBFIRb3V0Z29pbmdDaGFubmVsSWQSKAoQaW5jb21pbmdfaHRsY19pZBgDIAEoBFIOaW5jb21pbmdIdGxjSWQSKAoQb3V0Z29pbmdfaHRsY19pZBgEIAEoBFIOb3V0Z29pbmdIdGxjSWQSIQoMdGltZXN0YW1wX25zGAUgASgEUgt0aW1lc3RhbXBOcxI9CgpldmVudF90eXBlGAYgASgOMh4ucm91dGVycnBjLkh0bGNFdmVudC5FdmVudFR5cGVSCWV2ZW50VHlwZRI+Cg1mb3J3YXJkX2V2ZW50GAcgASgLMhcucm91dGVycnBjLkZvcndhcmRFdmVudEgAUgxmb3J3YXJkRXZlbnQSSwoSZm9yd2FyZF9mYWlsX2V2ZW50GAggASgLMhsucm91dGVycnBjLkZvcndhcmRGYWlsRXZlbnRIAFIQZm9yd2FyZEZhaWxFdmVudBI7CgxzZXR0bGVfZXZlbnQYCSABKAsyFi5yb3V0ZXJycGMuU2V0dGxlRXZlbnRIAFILc2V0dGxlRXZlbnQSQgoPbGlua19mYWlsX2V2ZW50GAogASgLMhgucm91dGVycnBjLkxpbmtGYWlsRXZlbnRIAFINbGlua0ZhaWxFdmVudCI8CglFdmVudFR5cGUSCwoHVU5LTk9XThAAEggKBFNFTkQQARILCgdSRUNFSVZFEAISCwoHRk9SV0FSRBADQgcKBWV2ZW50');
@$core.Deprecated('Use htlcInfoDescriptor instead')
const HtlcInfo$json = const {
  '1': 'HtlcInfo',
  '2': const [
    const {'1': 'incoming_timelock', '3': 1, '4': 1, '5': 13, '10': 'incomingTimelock'},
    const {'1': 'outgoing_timelock', '3': 2, '4': 1, '5': 13, '10': 'outgoingTimelock'},
    const {'1': 'incoming_amt_msat', '3': 3, '4': 1, '5': 4, '10': 'incomingAmtMsat'},
    const {'1': 'outgoing_amt_msat', '3': 4, '4': 1, '5': 4, '10': 'outgoingAmtMsat'},
  ],
};

/// Descriptor for `HtlcInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List htlcInfoDescriptor = $convert.base64Decode('CghIdGxjSW5mbxIrChFpbmNvbWluZ190aW1lbG9jaxgBIAEoDVIQaW5jb21pbmdUaW1lbG9jaxIrChFvdXRnb2luZ190aW1lbG9jaxgCIAEoDVIQb3V0Z29pbmdUaW1lbG9jaxIqChFpbmNvbWluZ19hbXRfbXNhdBgDIAEoBFIPaW5jb21pbmdBbXRNc2F0EioKEW91dGdvaW5nX2FtdF9tc2F0GAQgASgEUg9vdXRnb2luZ0FtdE1zYXQ=');
@$core.Deprecated('Use forwardEventDescriptor instead')
const ForwardEvent$json = const {
  '1': 'ForwardEvent',
  '2': const [
    const {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.routerrpc.HtlcInfo', '10': 'info'},
  ],
};

/// Descriptor for `ForwardEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forwardEventDescriptor = $convert.base64Decode('CgxGb3J3YXJkRXZlbnQSJwoEaW5mbxgBIAEoCzITLnJvdXRlcnJwYy5IdGxjSW5mb1IEaW5mbw==');
@$core.Deprecated('Use forwardFailEventDescriptor instead')
const ForwardFailEvent$json = const {
  '1': 'ForwardFailEvent',
};

/// Descriptor for `ForwardFailEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forwardFailEventDescriptor = $convert.base64Decode('ChBGb3J3YXJkRmFpbEV2ZW50');
@$core.Deprecated('Use settleEventDescriptor instead')
const SettleEvent$json = const {
  '1': 'SettleEvent',
};

/// Descriptor for `SettleEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List settleEventDescriptor = $convert.base64Decode('CgtTZXR0bGVFdmVudA==');
@$core.Deprecated('Use linkFailEventDescriptor instead')
const LinkFailEvent$json = const {
  '1': 'LinkFailEvent',
  '2': const [
    const {'1': 'info', '3': 1, '4': 1, '5': 11, '6': '.routerrpc.HtlcInfo', '10': 'info'},
    const {'1': 'wire_failure', '3': 2, '4': 1, '5': 14, '6': '.lnrpc.Failure.FailureCode', '10': 'wireFailure'},
    const {'1': 'failure_detail', '3': 3, '4': 1, '5': 14, '6': '.routerrpc.FailureDetail', '10': 'failureDetail'},
    const {'1': 'failure_string', '3': 4, '4': 1, '5': 9, '10': 'failureString'},
  ],
};

/// Descriptor for `LinkFailEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List linkFailEventDescriptor = $convert.base64Decode('Cg1MaW5rRmFpbEV2ZW50EicKBGluZm8YASABKAsyEy5yb3V0ZXJycGMuSHRsY0luZm9SBGluZm8SPQoMd2lyZV9mYWlsdXJlGAIgASgOMhoubG5ycGMuRmFpbHVyZS5GYWlsdXJlQ29kZVILd2lyZUZhaWx1cmUSPwoOZmFpbHVyZV9kZXRhaWwYAyABKA4yGC5yb3V0ZXJycGMuRmFpbHVyZURldGFpbFINZmFpbHVyZURldGFpbBIlCg5mYWlsdXJlX3N0cmluZxgEIAEoCVINZmFpbHVyZVN0cmluZw==');
@$core.Deprecated('Use paymentStatusDescriptor instead')
const PaymentStatus$json = const {
  '1': 'PaymentStatus',
  '2': const [
    const {'1': 'state', '3': 1, '4': 1, '5': 14, '6': '.routerrpc.PaymentState', '10': 'state'},
    const {'1': 'preimage', '3': 2, '4': 1, '5': 12, '10': 'preimage'},
    const {'1': 'htlcs', '3': 4, '4': 3, '5': 11, '6': '.lnrpc.HTLCAttempt', '10': 'htlcs'},
  ],
  '9': const [
    const {'1': 3, '2': 4},
  ],
};

/// Descriptor for `PaymentStatus`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentStatusDescriptor = $convert.base64Decode('Cg1QYXltZW50U3RhdHVzEi0KBXN0YXRlGAEgASgOMhcucm91dGVycnBjLlBheW1lbnRTdGF0ZVIFc3RhdGUSGgoIcHJlaW1hZ2UYAiABKAxSCHByZWltYWdlEigKBWh0bGNzGAQgAygLMhIubG5ycGMuSFRMQ0F0dGVtcHRSBWh0bGNzSgQIAxAE');
@$core.Deprecated('Use circuitKeyDescriptor instead')
const CircuitKey$json = const {
  '1': 'CircuitKey',
  '2': const [
    const {'1': 'chan_id', '3': 1, '4': 1, '5': 4, '10': 'chanId'},
    const {'1': 'htlc_id', '3': 2, '4': 1, '5': 4, '10': 'htlcId'},
  ],
};

/// Descriptor for `CircuitKey`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List circuitKeyDescriptor = $convert.base64Decode('CgpDaXJjdWl0S2V5EhcKB2NoYW5faWQYASABKARSBmNoYW5JZBIXCgdodGxjX2lkGAIgASgEUgZodGxjSWQ=');
@$core.Deprecated('Use forwardHtlcInterceptRequestDescriptor instead')
const ForwardHtlcInterceptRequest$json = const {
  '1': 'ForwardHtlcInterceptRequest',
  '2': const [
    const {'1': 'incoming_circuit_key', '3': 1, '4': 1, '5': 11, '6': '.routerrpc.CircuitKey', '10': 'incomingCircuitKey'},
    const {'1': 'incoming_amount_msat', '3': 5, '4': 1, '5': 4, '10': 'incomingAmountMsat'},
    const {'1': 'incoming_expiry', '3': 6, '4': 1, '5': 13, '10': 'incomingExpiry'},
    const {'1': 'payment_hash', '3': 2, '4': 1, '5': 12, '10': 'paymentHash'},
    const {'1': 'outgoing_requested_chan_id', '3': 7, '4': 1, '5': 4, '10': 'outgoingRequestedChanId'},
    const {'1': 'outgoing_amount_msat', '3': 3, '4': 1, '5': 4, '10': 'outgoingAmountMsat'},
    const {'1': 'outgoing_expiry', '3': 4, '4': 1, '5': 13, '10': 'outgoingExpiry'},
    const {'1': 'custom_records', '3': 8, '4': 3, '5': 11, '6': '.routerrpc.ForwardHtlcInterceptRequest.CustomRecordsEntry', '10': 'customRecords'},
    const {'1': 'onion_blob', '3': 9, '4': 1, '5': 12, '10': 'onionBlob'},
  ],
  '3': const [ForwardHtlcInterceptRequest_CustomRecordsEntry$json],
};

@$core.Deprecated('Use forwardHtlcInterceptRequestDescriptor instead')
const ForwardHtlcInterceptRequest_CustomRecordsEntry$json = const {
  '1': 'CustomRecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ForwardHtlcInterceptRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forwardHtlcInterceptRequestDescriptor = $convert.base64Decode('ChtGb3J3YXJkSHRsY0ludGVyY2VwdFJlcXVlc3QSRwoUaW5jb21pbmdfY2lyY3VpdF9rZXkYASABKAsyFS5yb3V0ZXJycGMuQ2lyY3VpdEtleVISaW5jb21pbmdDaXJjdWl0S2V5EjAKFGluY29taW5nX2Ftb3VudF9tc2F0GAUgASgEUhJpbmNvbWluZ0Ftb3VudE1zYXQSJwoPaW5jb21pbmdfZXhwaXJ5GAYgASgNUg5pbmNvbWluZ0V4cGlyeRIhCgxwYXltZW50X2hhc2gYAiABKAxSC3BheW1lbnRIYXNoEjsKGm91dGdvaW5nX3JlcXVlc3RlZF9jaGFuX2lkGAcgASgEUhdvdXRnb2luZ1JlcXVlc3RlZENoYW5JZBIwChRvdXRnb2luZ19hbW91bnRfbXNhdBgDIAEoBFISb3V0Z29pbmdBbW91bnRNc2F0EicKD291dGdvaW5nX2V4cGlyeRgEIAEoDVIOb3V0Z29pbmdFeHBpcnkSYAoOY3VzdG9tX3JlY29yZHMYCCADKAsyOS5yb3V0ZXJycGMuRm9yd2FyZEh0bGNJbnRlcmNlcHRSZXF1ZXN0LkN1c3RvbVJlY29yZHNFbnRyeVINY3VzdG9tUmVjb3JkcxIdCgpvbmlvbl9ibG9iGAkgASgMUglvbmlvbkJsb2IaQAoSQ3VzdG9tUmVjb3Jkc0VudHJ5EhAKA2tleRgBIAEoBFIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use forwardHtlcInterceptResponseDescriptor instead')
const ForwardHtlcInterceptResponse$json = const {
  '1': 'ForwardHtlcInterceptResponse',
  '2': const [
    const {'1': 'incoming_circuit_key', '3': 1, '4': 1, '5': 11, '6': '.routerrpc.CircuitKey', '10': 'incomingCircuitKey'},
    const {'1': 'action', '3': 2, '4': 1, '5': 14, '6': '.routerrpc.ResolveHoldForwardAction', '10': 'action'},
    const {'1': 'preimage', '3': 3, '4': 1, '5': 12, '10': 'preimage'},
  ],
};

/// Descriptor for `ForwardHtlcInterceptResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forwardHtlcInterceptResponseDescriptor = $convert.base64Decode('ChxGb3J3YXJkSHRsY0ludGVyY2VwdFJlc3BvbnNlEkcKFGluY29taW5nX2NpcmN1aXRfa2V5GAEgASgLMhUucm91dGVycnBjLkNpcmN1aXRLZXlSEmluY29taW5nQ2lyY3VpdEtleRI7CgZhY3Rpb24YAiABKA4yIy5yb3V0ZXJycGMuUmVzb2x2ZUhvbGRGb3J3YXJkQWN0aW9uUgZhY3Rpb24SGgoIcHJlaW1hZ2UYAyABKAxSCHByZWltYWdl');
