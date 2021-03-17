///
//  Generated code. Do not modify.
//  source: rpc.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use addressTypeDescriptor instead')
const AddressType$json = const {
  '1': 'AddressType',
  '2': const [
    const {'1': 'WITNESS_PUBKEY_HASH', '2': 0},
    const {'1': 'NESTED_PUBKEY_HASH', '2': 1},
    const {'1': 'UNUSED_WITNESS_PUBKEY_HASH', '2': 2},
    const {'1': 'UNUSED_NESTED_PUBKEY_HASH', '2': 3},
  ],
};

/// Descriptor for `AddressType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List addressTypeDescriptor = $convert.base64Decode('CgtBZGRyZXNzVHlwZRIXChNXSVRORVNTX1BVQktFWV9IQVNIEAASFgoSTkVTVEVEX1BVQktFWV9IQVNIEAESHgoaVU5VU0VEX1dJVE5FU1NfUFVCS0VZX0hBU0gQAhIdChlVTlVTRURfTkVTVEVEX1BVQktFWV9IQVNIEAM=');
@$core.Deprecated('Use commitmentTypeDescriptor instead')
const CommitmentType$json = const {
  '1': 'CommitmentType',
  '2': const [
    const {'1': 'LEGACY', '2': 0},
    const {'1': 'STATIC_REMOTE_KEY', '2': 1},
    const {'1': 'ANCHORS', '2': 2},
    const {'1': 'UNKNOWN_COMMITMENT_TYPE', '2': 999},
  ],
};

/// Descriptor for `CommitmentType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List commitmentTypeDescriptor = $convert.base64Decode('Cg5Db21taXRtZW50VHlwZRIKCgZMRUdBQ1kQABIVChFTVEFUSUNfUkVNT1RFX0tFWRABEgsKB0FOQ0hPUlMQAhIcChdVTktOT1dOX0NPTU1JVE1FTlRfVFlQRRDnBw==');
@$core.Deprecated('Use initiatorDescriptor instead')
const Initiator$json = const {
  '1': 'Initiator',
  '2': const [
    const {'1': 'INITIATOR_UNKNOWN', '2': 0},
    const {'1': 'INITIATOR_LOCAL', '2': 1},
    const {'1': 'INITIATOR_REMOTE', '2': 2},
    const {'1': 'INITIATOR_BOTH', '2': 3},
  ],
};

/// Descriptor for `Initiator`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List initiatorDescriptor = $convert.base64Decode('CglJbml0aWF0b3ISFQoRSU5JVElBVE9SX1VOS05PV04QABITCg9JTklUSUFUT1JfTE9DQUwQARIUChBJTklUSUFUT1JfUkVNT1RFEAISEgoOSU5JVElBVE9SX0JPVEgQAw==');
@$core.Deprecated('Use resolutionTypeDescriptor instead')
const ResolutionType$json = const {
  '1': 'ResolutionType',
  '2': const [
    const {'1': 'TYPE_UNKNOWN', '2': 0},
    const {'1': 'ANCHOR', '2': 1},
    const {'1': 'INCOMING_HTLC', '2': 2},
    const {'1': 'OUTGOING_HTLC', '2': 3},
    const {'1': 'COMMIT', '2': 4},
  ],
};

/// Descriptor for `ResolutionType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resolutionTypeDescriptor = $convert.base64Decode('Cg5SZXNvbHV0aW9uVHlwZRIQCgxUWVBFX1VOS05PV04QABIKCgZBTkNIT1IQARIRCg1JTkNPTUlOR19IVExDEAISEQoNT1VUR09JTkdfSFRMQxADEgoKBkNPTU1JVBAE');
@$core.Deprecated('Use resolutionOutcomeDescriptor instead')
const ResolutionOutcome$json = const {
  '1': 'ResolutionOutcome',
  '2': const [
    const {'1': 'OUTCOME_UNKNOWN', '2': 0},
    const {'1': 'CLAIMED', '2': 1},
    const {'1': 'UNCLAIMED', '2': 2},
    const {'1': 'ABANDONED', '2': 3},
    const {'1': 'FIRST_STAGE', '2': 4},
    const {'1': 'TIMEOUT', '2': 5},
  ],
};

/// Descriptor for `ResolutionOutcome`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List resolutionOutcomeDescriptor = $convert.base64Decode('ChFSZXNvbHV0aW9uT3V0Y29tZRITCg9PVVRDT01FX1VOS05PV04QABILCgdDTEFJTUVEEAESDQoJVU5DTEFJTUVEEAISDQoJQUJBTkRPTkVEEAMSDwoLRklSU1RfU1RBR0UQBBILCgdUSU1FT1VUEAU=');
@$core.Deprecated('Use nodeMetricTypeDescriptor instead')
const NodeMetricType$json = const {
  '1': 'NodeMetricType',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'BETWEENNESS_CENTRALITY', '2': 1},
  ],
};

/// Descriptor for `NodeMetricType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List nodeMetricTypeDescriptor = $convert.base64Decode('Cg5Ob2RlTWV0cmljVHlwZRILCgdVTktOT1dOEAASGgoWQkVUV0VFTk5FU1NfQ0VOVFJBTElUWRAB');
@$core.Deprecated('Use invoiceHTLCStateDescriptor instead')
const InvoiceHTLCState$json = const {
  '1': 'InvoiceHTLCState',
  '2': const [
    const {'1': 'ACCEPTED', '2': 0},
    const {'1': 'SETTLED', '2': 1},
    const {'1': 'CANCELED', '2': 2},
  ],
};

/// Descriptor for `InvoiceHTLCState`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List invoiceHTLCStateDescriptor = $convert.base64Decode('ChBJbnZvaWNlSFRMQ1N0YXRlEgwKCEFDQ0VQVEVEEAASCwoHU0VUVExFRBABEgwKCENBTkNFTEVEEAI=');
@$core.Deprecated('Use paymentFailureReasonDescriptor instead')
const PaymentFailureReason$json = const {
  '1': 'PaymentFailureReason',
  '2': const [
    const {'1': 'FAILURE_REASON_NONE', '2': 0},
    const {'1': 'FAILURE_REASON_TIMEOUT', '2': 1},
    const {'1': 'FAILURE_REASON_NO_ROUTE', '2': 2},
    const {'1': 'FAILURE_REASON_ERROR', '2': 3},
    const {'1': 'FAILURE_REASON_INCORRECT_PAYMENT_DETAILS', '2': 4},
    const {'1': 'FAILURE_REASON_INSUFFICIENT_BALANCE', '2': 5},
  ],
};

/// Descriptor for `PaymentFailureReason`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List paymentFailureReasonDescriptor = $convert.base64Decode('ChRQYXltZW50RmFpbHVyZVJlYXNvbhIXChNGQUlMVVJFX1JFQVNPTl9OT05FEAASGgoWRkFJTFVSRV9SRUFTT05fVElNRU9VVBABEhsKF0ZBSUxVUkVfUkVBU09OX05PX1JPVVRFEAISGAoURkFJTFVSRV9SRUFTT05fRVJST1IQAxIsCihGQUlMVVJFX1JFQVNPTl9JTkNPUlJFQ1RfUEFZTUVOVF9ERVRBSUxTEAQSJwojRkFJTFVSRV9SRUFTT05fSU5TVUZGSUNJRU5UX0JBTEFOQ0UQBQ==');
@$core.Deprecated('Use featureBitDescriptor instead')
const FeatureBit$json = const {
  '1': 'FeatureBit',
  '2': const [
    const {'1': 'DATALOSS_PROTECT_REQ', '2': 0},
    const {'1': 'DATALOSS_PROTECT_OPT', '2': 1},
    const {'1': 'INITIAL_ROUING_SYNC', '2': 3},
    const {'1': 'UPFRONT_SHUTDOWN_SCRIPT_REQ', '2': 4},
    const {'1': 'UPFRONT_SHUTDOWN_SCRIPT_OPT', '2': 5},
    const {'1': 'GOSSIP_QUERIES_REQ', '2': 6},
    const {'1': 'GOSSIP_QUERIES_OPT', '2': 7},
    const {'1': 'TLV_ONION_REQ', '2': 8},
    const {'1': 'TLV_ONION_OPT', '2': 9},
    const {'1': 'EXT_GOSSIP_QUERIES_REQ', '2': 10},
    const {'1': 'EXT_GOSSIP_QUERIES_OPT', '2': 11},
    const {'1': 'STATIC_REMOTE_KEY_REQ', '2': 12},
    const {'1': 'STATIC_REMOTE_KEY_OPT', '2': 13},
    const {'1': 'PAYMENT_ADDR_REQ', '2': 14},
    const {'1': 'PAYMENT_ADDR_OPT', '2': 15},
    const {'1': 'MPP_REQ', '2': 16},
    const {'1': 'MPP_OPT', '2': 17},
    const {'1': 'WUMBO_CHANNELS_REQ', '2': 18},
    const {'1': 'WUMBO_CHANNELS_OPT', '2': 19},
    const {'1': 'ANCHORS_REQ', '2': 20},
    const {'1': 'ANCHORS_OPT', '2': 21},
    const {'1': 'ANCHORS_ZERO_FEE_HTLC_REQ', '2': 22},
    const {'1': 'ANCHORS_ZERO_FEE_HTLC_OPT', '2': 23},
  ],
};

/// Descriptor for `FeatureBit`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List featureBitDescriptor = $convert.base64Decode('CgpGZWF0dXJlQml0EhgKFERBVEFMT1NTX1BST1RFQ1RfUkVREAASGAoUREFUQUxPU1NfUFJPVEVDVF9PUFQQARIXChNJTklUSUFMX1JPVUlOR19TWU5DEAMSHwobVVBGUk9OVF9TSFVURE9XTl9TQ1JJUFRfUkVREAQSHwobVVBGUk9OVF9TSFVURE9XTl9TQ1JJUFRfT1BUEAUSFgoSR09TU0lQX1FVRVJJRVNfUkVREAYSFgoSR09TU0lQX1FVRVJJRVNfT1BUEAcSEQoNVExWX09OSU9OX1JFURAIEhEKDVRMVl9PTklPTl9PUFQQCRIaChZFWFRfR09TU0lQX1FVRVJJRVNfUkVREAoSGgoWRVhUX0dPU1NJUF9RVUVSSUVTX09QVBALEhkKFVNUQVRJQ19SRU1PVEVfS0VZX1JFURAMEhkKFVNUQVRJQ19SRU1PVEVfS0VZX09QVBANEhQKEFBBWU1FTlRfQUREUl9SRVEQDhIUChBQQVlNRU5UX0FERFJfT1BUEA8SCwoHTVBQX1JFURAQEgsKB01QUF9PUFQQERIWChJXVU1CT19DSEFOTkVMU19SRVEQEhIWChJXVU1CT19DSEFOTkVMU19PUFQQExIPCgtBTkNIT1JTX1JFURAUEg8KC0FOQ0hPUlNfT1BUEBUSHQoZQU5DSE9SU19aRVJPX0ZFRV9IVExDX1JFURAWEh0KGUFOQ0hPUlNfWkVST19GRUVfSFRMQ19PUFQQFw==');
@$core.Deprecated('Use utxoDescriptor instead')
const Utxo$json = const {
  '1': 'Utxo',
  '2': const [
    const {'1': 'address_type', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.AddressType', '10': 'addressType'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'amount_sat', '3': 3, '4': 1, '5': 3, '10': 'amountSat'},
    const {'1': 'pk_script', '3': 4, '4': 1, '5': 9, '10': 'pkScript'},
    const {'1': 'outpoint', '3': 5, '4': 1, '5': 11, '6': '.lnrpc.OutPoint', '10': 'outpoint'},
    const {'1': 'confirmations', '3': 6, '4': 1, '5': 3, '10': 'confirmations'},
  ],
};

/// Descriptor for `Utxo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List utxoDescriptor = $convert.base64Decode('CgRVdHhvEjUKDGFkZHJlc3NfdHlwZRgBIAEoDjISLmxucnBjLkFkZHJlc3NUeXBlUgthZGRyZXNzVHlwZRIYCgdhZGRyZXNzGAIgASgJUgdhZGRyZXNzEh0KCmFtb3VudF9zYXQYAyABKANSCWFtb3VudFNhdBIbCglwa19zY3JpcHQYBCABKAlSCHBrU2NyaXB0EisKCG91dHBvaW50GAUgASgLMg8ubG5ycGMuT3V0UG9pbnRSCG91dHBvaW50EiQKDWNvbmZpcm1hdGlvbnMYBiABKANSDWNvbmZpcm1hdGlvbnM=');
@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = const {
  '1': 'Transaction',
  '2': const [
    const {'1': 'tx_hash', '3': 1, '4': 1, '5': 9, '10': 'txHash'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'num_confirmations', '3': 3, '4': 1, '5': 5, '10': 'numConfirmations'},
    const {'1': 'block_hash', '3': 4, '4': 1, '5': 9, '10': 'blockHash'},
    const {'1': 'block_height', '3': 5, '4': 1, '5': 5, '10': 'blockHeight'},
    const {'1': 'time_stamp', '3': 6, '4': 1, '5': 3, '10': 'timeStamp'},
    const {'1': 'total_fees', '3': 7, '4': 1, '5': 3, '10': 'totalFees'},
    const {'1': 'dest_addresses', '3': 8, '4': 3, '5': 9, '10': 'destAddresses'},
    const {'1': 'raw_tx_hex', '3': 9, '4': 1, '5': 9, '10': 'rawTxHex'},
    const {'1': 'label', '3': 10, '4': 1, '5': 9, '10': 'label'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode('CgtUcmFuc2FjdGlvbhIXCgd0eF9oYXNoGAEgASgJUgZ0eEhhc2gSFgoGYW1vdW50GAIgASgDUgZhbW91bnQSKwoRbnVtX2NvbmZpcm1hdGlvbnMYAyABKAVSEG51bUNvbmZpcm1hdGlvbnMSHQoKYmxvY2tfaGFzaBgEIAEoCVIJYmxvY2tIYXNoEiEKDGJsb2NrX2hlaWdodBgFIAEoBVILYmxvY2tIZWlnaHQSHQoKdGltZV9zdGFtcBgGIAEoA1IJdGltZVN0YW1wEh0KCnRvdGFsX2ZlZXMYByABKANSCXRvdGFsRmVlcxIlCg5kZXN0X2FkZHJlc3NlcxgIIAMoCVINZGVzdEFkZHJlc3NlcxIcCgpyYXdfdHhfaGV4GAkgASgJUghyYXdUeEhleBIUCgVsYWJlbBgKIAEoCVIFbGFiZWw=');
@$core.Deprecated('Use getTransactionsRequestDescriptor instead')
const GetTransactionsRequest$json = const {
  '1': 'GetTransactionsRequest',
  '2': const [
    const {'1': 'start_height', '3': 1, '4': 1, '5': 5, '10': 'startHeight'},
    const {'1': 'end_height', '3': 2, '4': 1, '5': 5, '10': 'endHeight'},
  ],
};

/// Descriptor for `GetTransactionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTransactionsRequestDescriptor = $convert.base64Decode('ChZHZXRUcmFuc2FjdGlvbnNSZXF1ZXN0EiEKDHN0YXJ0X2hlaWdodBgBIAEoBVILc3RhcnRIZWlnaHQSHQoKZW5kX2hlaWdodBgCIAEoBVIJZW5kSGVpZ2h0');
@$core.Deprecated('Use transactionDetailsDescriptor instead')
const TransactionDetails$json = const {
  '1': 'TransactionDetails',
  '2': const [
    const {'1': 'transactions', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Transaction', '10': 'transactions'},
  ],
};

/// Descriptor for `TransactionDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDetailsDescriptor = $convert.base64Decode('ChJUcmFuc2FjdGlvbkRldGFpbHMSNgoMdHJhbnNhY3Rpb25zGAEgAygLMhIubG5ycGMuVHJhbnNhY3Rpb25SDHRyYW5zYWN0aW9ucw==');
@$core.Deprecated('Use feeLimitDescriptor instead')
const FeeLimit$json = const {
  '1': 'FeeLimit',
  '2': const [
    const {'1': 'fixed', '3': 1, '4': 1, '5': 3, '9': 0, '10': 'fixed'},
    const {'1': 'fixed_msat', '3': 3, '4': 1, '5': 3, '9': 0, '10': 'fixedMsat'},
    const {'1': 'percent', '3': 2, '4': 1, '5': 3, '9': 0, '10': 'percent'},
  ],
  '8': const [
    const {'1': 'limit'},
  ],
};

/// Descriptor for `FeeLimit`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeLimitDescriptor = $convert.base64Decode('CghGZWVMaW1pdBIWCgVmaXhlZBgBIAEoA0gAUgVmaXhlZBIfCgpmaXhlZF9tc2F0GAMgASgDSABSCWZpeGVkTXNhdBIaCgdwZXJjZW50GAIgASgDSABSB3BlcmNlbnRCBwoFbGltaXQ=');
@$core.Deprecated('Use sendRequestDescriptor instead')
const SendRequest$json = const {
  '1': 'SendRequest',
  '2': const [
    const {'1': 'dest', '3': 1, '4': 1, '5': 12, '10': 'dest'},
    const {
      '1': 'dest_string',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'destString',
    },
    const {'1': 'amt', '3': 3, '4': 1, '5': 3, '10': 'amt'},
    const {'1': 'amt_msat', '3': 12, '4': 1, '5': 3, '10': 'amtMsat'},
    const {'1': 'payment_hash', '3': 4, '4': 1, '5': 12, '10': 'paymentHash'},
    const {
      '1': 'payment_hash_string',
      '3': 5,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'paymentHashString',
    },
    const {'1': 'payment_request', '3': 6, '4': 1, '5': 9, '10': 'paymentRequest'},
    const {'1': 'final_cltv_delta', '3': 7, '4': 1, '5': 5, '10': 'finalCltvDelta'},
    const {'1': 'fee_limit', '3': 8, '4': 1, '5': 11, '6': '.lnrpc.FeeLimit', '10': 'feeLimit'},
    const {
      '1': 'outgoing_chan_id',
      '3': 9,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'outgoingChanId',
    },
    const {'1': 'last_hop_pubkey', '3': 13, '4': 1, '5': 12, '10': 'lastHopPubkey'},
    const {'1': 'cltv_limit', '3': 10, '4': 1, '5': 13, '10': 'cltvLimit'},
    const {'1': 'dest_custom_records', '3': 11, '4': 3, '5': 11, '6': '.lnrpc.SendRequest.DestCustomRecordsEntry', '10': 'destCustomRecords'},
    const {'1': 'allow_self_payment', '3': 14, '4': 1, '5': 8, '10': 'allowSelfPayment'},
    const {'1': 'dest_features', '3': 15, '4': 3, '5': 14, '6': '.lnrpc.FeatureBit', '10': 'destFeatures'},
  ],
  '3': const [SendRequest_DestCustomRecordsEntry$json],
};

@$core.Deprecated('Use sendRequestDescriptor instead')
const SendRequest_DestCustomRecordsEntry$json = const {
  '1': 'DestCustomRecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `SendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendRequestDescriptor = $convert.base64Decode('CgtTZW5kUmVxdWVzdBISCgRkZXN0GAEgASgMUgRkZXN0EiMKC2Rlc3Rfc3RyaW5nGAIgASgJQgIYAVIKZGVzdFN0cmluZxIQCgNhbXQYAyABKANSA2FtdBIZCghhbXRfbXNhdBgMIAEoA1IHYW10TXNhdBIhCgxwYXltZW50X2hhc2gYBCABKAxSC3BheW1lbnRIYXNoEjIKE3BheW1lbnRfaGFzaF9zdHJpbmcYBSABKAlCAhgBUhFwYXltZW50SGFzaFN0cmluZxInCg9wYXltZW50X3JlcXVlc3QYBiABKAlSDnBheW1lbnRSZXF1ZXN0EigKEGZpbmFsX2NsdHZfZGVsdGEYByABKAVSDmZpbmFsQ2x0dkRlbHRhEiwKCWZlZV9saW1pdBgIIAEoCzIPLmxucnBjLkZlZUxpbWl0UghmZWVMaW1pdBIsChBvdXRnb2luZ19jaGFuX2lkGAkgASgEQgIwAVIOb3V0Z29pbmdDaGFuSWQSJgoPbGFzdF9ob3BfcHVia2V5GA0gASgMUg1sYXN0SG9wUHVia2V5Eh0KCmNsdHZfbGltaXQYCiABKA1SCWNsdHZMaW1pdBJZChNkZXN0X2N1c3RvbV9yZWNvcmRzGAsgAygLMikubG5ycGMuU2VuZFJlcXVlc3QuRGVzdEN1c3RvbVJlY29yZHNFbnRyeVIRZGVzdEN1c3RvbVJlY29yZHMSLAoSYWxsb3dfc2VsZl9wYXltZW50GA4gASgIUhBhbGxvd1NlbGZQYXltZW50EjYKDWRlc3RfZmVhdHVyZXMYDyADKA4yES5sbnJwYy5GZWF0dXJlQml0UgxkZXN0RmVhdHVyZXMaRAoWRGVzdEN1c3RvbVJlY29yZHNFbnRyeRIQCgNrZXkYASABKARSA2tleRIUCgV2YWx1ZRgCIAEoDFIFdmFsdWU6AjgB');
@$core.Deprecated('Use sendResponseDescriptor instead')
const SendResponse$json = const {
  '1': 'SendResponse',
  '2': const [
    const {'1': 'payment_error', '3': 1, '4': 1, '5': 9, '10': 'paymentError'},
    const {'1': 'payment_preimage', '3': 2, '4': 1, '5': 12, '10': 'paymentPreimage'},
    const {'1': 'payment_route', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.Route', '10': 'paymentRoute'},
    const {'1': 'payment_hash', '3': 4, '4': 1, '5': 12, '10': 'paymentHash'},
  ],
};

/// Descriptor for `SendResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendResponseDescriptor = $convert.base64Decode('CgxTZW5kUmVzcG9uc2USIwoNcGF5bWVudF9lcnJvchgBIAEoCVIMcGF5bWVudEVycm9yEikKEHBheW1lbnRfcHJlaW1hZ2UYAiABKAxSD3BheW1lbnRQcmVpbWFnZRIxCg1wYXltZW50X3JvdXRlGAMgASgLMgwubG5ycGMuUm91dGVSDHBheW1lbnRSb3V0ZRIhCgxwYXltZW50X2hhc2gYBCABKAxSC3BheW1lbnRIYXNo');
@$core.Deprecated('Use sendToRouteRequestDescriptor instead')
const SendToRouteRequest$json = const {
  '1': 'SendToRouteRequest',
  '2': const [
    const {'1': 'payment_hash', '3': 1, '4': 1, '5': 12, '10': 'paymentHash'},
    const {
      '1': 'payment_hash_string',
      '3': 2,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'paymentHashString',
    },
    const {'1': 'route', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.Route', '10': 'route'},
  ],
  '9': const [
    const {'1': 3, '2': 4},
  ],
};

/// Descriptor for `SendToRouteRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendToRouteRequestDescriptor = $convert.base64Decode('ChJTZW5kVG9Sb3V0ZVJlcXVlc3QSIQoMcGF5bWVudF9oYXNoGAEgASgMUgtwYXltZW50SGFzaBIyChNwYXltZW50X2hhc2hfc3RyaW5nGAIgASgJQgIYAVIRcGF5bWVudEhhc2hTdHJpbmcSIgoFcm91dGUYBCABKAsyDC5sbnJwYy5Sb3V0ZVIFcm91dGVKBAgDEAQ=');
@$core.Deprecated('Use channelAcceptRequestDescriptor instead')
const ChannelAcceptRequest$json = const {
  '1': 'ChannelAcceptRequest',
  '2': const [
    const {'1': 'node_pubkey', '3': 1, '4': 1, '5': 12, '10': 'nodePubkey'},
    const {'1': 'chain_hash', '3': 2, '4': 1, '5': 12, '10': 'chainHash'},
    const {'1': 'pending_chan_id', '3': 3, '4': 1, '5': 12, '10': 'pendingChanId'},
    const {'1': 'funding_amt', '3': 4, '4': 1, '5': 4, '10': 'fundingAmt'},
    const {'1': 'push_amt', '3': 5, '4': 1, '5': 4, '10': 'pushAmt'},
    const {'1': 'dust_limit', '3': 6, '4': 1, '5': 4, '10': 'dustLimit'},
    const {'1': 'max_value_in_flight', '3': 7, '4': 1, '5': 4, '10': 'maxValueInFlight'},
    const {'1': 'channel_reserve', '3': 8, '4': 1, '5': 4, '10': 'channelReserve'},
    const {'1': 'min_htlc', '3': 9, '4': 1, '5': 4, '10': 'minHtlc'},
    const {'1': 'fee_per_kw', '3': 10, '4': 1, '5': 4, '10': 'feePerKw'},
    const {'1': 'csv_delay', '3': 11, '4': 1, '5': 13, '10': 'csvDelay'},
    const {'1': 'max_accepted_htlcs', '3': 12, '4': 1, '5': 13, '10': 'maxAcceptedHtlcs'},
    const {'1': 'channel_flags', '3': 13, '4': 1, '5': 13, '10': 'channelFlags'},
  ],
};

/// Descriptor for `ChannelAcceptRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelAcceptRequestDescriptor = $convert.base64Decode('ChRDaGFubmVsQWNjZXB0UmVxdWVzdBIfCgtub2RlX3B1YmtleRgBIAEoDFIKbm9kZVB1YmtleRIdCgpjaGFpbl9oYXNoGAIgASgMUgljaGFpbkhhc2gSJgoPcGVuZGluZ19jaGFuX2lkGAMgASgMUg1wZW5kaW5nQ2hhbklkEh8KC2Z1bmRpbmdfYW10GAQgASgEUgpmdW5kaW5nQW10EhkKCHB1c2hfYW10GAUgASgEUgdwdXNoQW10Eh0KCmR1c3RfbGltaXQYBiABKARSCWR1c3RMaW1pdBItChNtYXhfdmFsdWVfaW5fZmxpZ2h0GAcgASgEUhBtYXhWYWx1ZUluRmxpZ2h0EicKD2NoYW5uZWxfcmVzZXJ2ZRgIIAEoBFIOY2hhbm5lbFJlc2VydmUSGQoIbWluX2h0bGMYCSABKARSB21pbkh0bGMSHAoKZmVlX3Blcl9rdxgKIAEoBFIIZmVlUGVyS3cSGwoJY3N2X2RlbGF5GAsgASgNUghjc3ZEZWxheRIsChJtYXhfYWNjZXB0ZWRfaHRsY3MYDCABKA1SEG1heEFjY2VwdGVkSHRsY3MSIwoNY2hhbm5lbF9mbGFncxgNIAEoDVIMY2hhbm5lbEZsYWdz');
@$core.Deprecated('Use channelAcceptResponseDescriptor instead')
const ChannelAcceptResponse$json = const {
  '1': 'ChannelAcceptResponse',
  '2': const [
    const {'1': 'accept', '3': 1, '4': 1, '5': 8, '10': 'accept'},
    const {'1': 'pending_chan_id', '3': 2, '4': 1, '5': 12, '10': 'pendingChanId'},
    const {'1': 'error', '3': 3, '4': 1, '5': 9, '10': 'error'},
    const {'1': 'upfront_shutdown', '3': 4, '4': 1, '5': 9, '10': 'upfrontShutdown'},
    const {'1': 'csv_delay', '3': 5, '4': 1, '5': 13, '10': 'csvDelay'},
    const {'1': 'reserve_sat', '3': 6, '4': 1, '5': 4, '10': 'reserveSat'},
    const {'1': 'in_flight_max_msat', '3': 7, '4': 1, '5': 4, '10': 'inFlightMaxMsat'},
    const {'1': 'max_htlc_count', '3': 8, '4': 1, '5': 13, '10': 'maxHtlcCount'},
    const {'1': 'min_htlc_in', '3': 9, '4': 1, '5': 4, '10': 'minHtlcIn'},
    const {'1': 'min_accept_depth', '3': 10, '4': 1, '5': 13, '10': 'minAcceptDepth'},
  ],
};

/// Descriptor for `ChannelAcceptResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelAcceptResponseDescriptor = $convert.base64Decode('ChVDaGFubmVsQWNjZXB0UmVzcG9uc2USFgoGYWNjZXB0GAEgASgIUgZhY2NlcHQSJgoPcGVuZGluZ19jaGFuX2lkGAIgASgMUg1wZW5kaW5nQ2hhbklkEhQKBWVycm9yGAMgASgJUgVlcnJvchIpChB1cGZyb250X3NodXRkb3duGAQgASgJUg91cGZyb250U2h1dGRvd24SGwoJY3N2X2RlbGF5GAUgASgNUghjc3ZEZWxheRIfCgtyZXNlcnZlX3NhdBgGIAEoBFIKcmVzZXJ2ZVNhdBIrChJpbl9mbGlnaHRfbWF4X21zYXQYByABKARSD2luRmxpZ2h0TWF4TXNhdBIkCg5tYXhfaHRsY19jb3VudBgIIAEoDVIMbWF4SHRsY0NvdW50Eh4KC21pbl9odGxjX2luGAkgASgEUgltaW5IdGxjSW4SKAoQbWluX2FjY2VwdF9kZXB0aBgKIAEoDVIObWluQWNjZXB0RGVwdGg=');
@$core.Deprecated('Use channelPointDescriptor instead')
const ChannelPoint$json = const {
  '1': 'ChannelPoint',
  '2': const [
    const {'1': 'funding_txid_bytes', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'fundingTxidBytes'},
    const {'1': 'funding_txid_str', '3': 2, '4': 1, '5': 9, '9': 0, '10': 'fundingTxidStr'},
    const {'1': 'output_index', '3': 3, '4': 1, '5': 13, '10': 'outputIndex'},
  ],
  '8': const [
    const {'1': 'funding_txid'},
  ],
};

/// Descriptor for `ChannelPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelPointDescriptor = $convert.base64Decode('CgxDaGFubmVsUG9pbnQSLgoSZnVuZGluZ190eGlkX2J5dGVzGAEgASgMSABSEGZ1bmRpbmdUeGlkQnl0ZXMSKgoQZnVuZGluZ190eGlkX3N0chgCIAEoCUgAUg5mdW5kaW5nVHhpZFN0chIhCgxvdXRwdXRfaW5kZXgYAyABKA1SC291dHB1dEluZGV4Qg4KDGZ1bmRpbmdfdHhpZA==');
@$core.Deprecated('Use outPointDescriptor instead')
const OutPoint$json = const {
  '1': 'OutPoint',
  '2': const [
    const {'1': 'txid_bytes', '3': 1, '4': 1, '5': 12, '10': 'txidBytes'},
    const {'1': 'txid_str', '3': 2, '4': 1, '5': 9, '10': 'txidStr'},
    const {'1': 'output_index', '3': 3, '4': 1, '5': 13, '10': 'outputIndex'},
  ],
};

/// Descriptor for `OutPoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outPointDescriptor = $convert.base64Decode('CghPdXRQb2ludBIdCgp0eGlkX2J5dGVzGAEgASgMUgl0eGlkQnl0ZXMSGQoIdHhpZF9zdHIYAiABKAlSB3R4aWRTdHISIQoMb3V0cHV0X2luZGV4GAMgASgNUgtvdXRwdXRJbmRleA==');
@$core.Deprecated('Use lightningAddressDescriptor instead')
const LightningAddress$json = const {
  '1': 'LightningAddress',
  '2': const [
    const {'1': 'pubkey', '3': 1, '4': 1, '5': 9, '10': 'pubkey'},
    const {'1': 'host', '3': 2, '4': 1, '5': 9, '10': 'host'},
  ],
};

/// Descriptor for `LightningAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lightningAddressDescriptor = $convert.base64Decode('ChBMaWdodG5pbmdBZGRyZXNzEhYKBnB1YmtleRgBIAEoCVIGcHVia2V5EhIKBGhvc3QYAiABKAlSBGhvc3Q=');
@$core.Deprecated('Use estimateFeeRequestDescriptor instead')
const EstimateFeeRequest$json = const {
  '1': 'EstimateFeeRequest',
  '2': const [
    const {'1': 'AddrToAmount', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.EstimateFeeRequest.AddrToAmountEntry', '10': 'AddrToAmount'},
    const {'1': 'target_conf', '3': 2, '4': 1, '5': 5, '10': 'targetConf'},
  ],
  '3': const [EstimateFeeRequest_AddrToAmountEntry$json],
};

@$core.Deprecated('Use estimateFeeRequestDescriptor instead')
const EstimateFeeRequest_AddrToAmountEntry$json = const {
  '1': 'AddrToAmountEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `EstimateFeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List estimateFeeRequestDescriptor = $convert.base64Decode('ChJFc3RpbWF0ZUZlZVJlcXVlc3QSTwoMQWRkclRvQW1vdW50GAEgAygLMisubG5ycGMuRXN0aW1hdGVGZWVSZXF1ZXN0LkFkZHJUb0Ftb3VudEVudHJ5UgxBZGRyVG9BbW91bnQSHwoLdGFyZ2V0X2NvbmYYAiABKAVSCnRhcmdldENvbmYaPwoRQWRkclRvQW1vdW50RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKANSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use estimateFeeResponseDescriptor instead')
const EstimateFeeResponse$json = const {
  '1': 'EstimateFeeResponse',
  '2': const [
    const {'1': 'fee_sat', '3': 1, '4': 1, '5': 3, '10': 'feeSat'},
    const {'1': 'feerate_sat_per_byte', '3': 2, '4': 1, '5': 3, '10': 'feerateSatPerByte'},
  ],
};

/// Descriptor for `EstimateFeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List estimateFeeResponseDescriptor = $convert.base64Decode('ChNFc3RpbWF0ZUZlZVJlc3BvbnNlEhcKB2ZlZV9zYXQYASABKANSBmZlZVNhdBIvChRmZWVyYXRlX3NhdF9wZXJfYnl0ZRgCIAEoA1IRZmVlcmF0ZVNhdFBlckJ5dGU=');
@$core.Deprecated('Use sendManyRequestDescriptor instead')
const SendManyRequest$json = const {
  '1': 'SendManyRequest',
  '2': const [
    const {'1': 'AddrToAmount', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.SendManyRequest.AddrToAmountEntry', '10': 'AddrToAmount'},
    const {'1': 'target_conf', '3': 3, '4': 1, '5': 5, '10': 'targetConf'},
    const {'1': 'sat_per_byte', '3': 5, '4': 1, '5': 3, '10': 'satPerByte'},
    const {'1': 'label', '3': 6, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'min_confs', '3': 7, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'spend_unconfirmed', '3': 8, '4': 1, '5': 8, '10': 'spendUnconfirmed'},
  ],
  '3': const [SendManyRequest_AddrToAmountEntry$json],
};

@$core.Deprecated('Use sendManyRequestDescriptor instead')
const SendManyRequest_AddrToAmountEntry$json = const {
  '1': 'AddrToAmountEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 3, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `SendManyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendManyRequestDescriptor = $convert.base64Decode('Cg9TZW5kTWFueVJlcXVlc3QSTAoMQWRkclRvQW1vdW50GAEgAygLMigubG5ycGMuU2VuZE1hbnlSZXF1ZXN0LkFkZHJUb0Ftb3VudEVudHJ5UgxBZGRyVG9BbW91bnQSHwoLdGFyZ2V0X2NvbmYYAyABKAVSCnRhcmdldENvbmYSIAoMc2F0X3Blcl9ieXRlGAUgASgDUgpzYXRQZXJCeXRlEhQKBWxhYmVsGAYgASgJUgVsYWJlbBIbCgltaW5fY29uZnMYByABKAVSCG1pbkNvbmZzEisKEXNwZW5kX3VuY29uZmlybWVkGAggASgIUhBzcGVuZFVuY29uZmlybWVkGj8KEUFkZHJUb0Ftb3VudEVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgDUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use sendManyResponseDescriptor instead')
const SendManyResponse$json = const {
  '1': 'SendManyResponse',
  '2': const [
    const {'1': 'txid', '3': 1, '4': 1, '5': 9, '10': 'txid'},
  ],
};

/// Descriptor for `SendManyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendManyResponseDescriptor = $convert.base64Decode('ChBTZW5kTWFueVJlc3BvbnNlEhIKBHR4aWQYASABKAlSBHR4aWQ=');
@$core.Deprecated('Use sendCoinsRequestDescriptor instead')
const SendCoinsRequest$json = const {
  '1': 'SendCoinsRequest',
  '2': const [
    const {'1': 'addr', '3': 1, '4': 1, '5': 9, '10': 'addr'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'target_conf', '3': 3, '4': 1, '5': 5, '10': 'targetConf'},
    const {'1': 'sat_per_byte', '3': 5, '4': 1, '5': 3, '10': 'satPerByte'},
    const {'1': 'send_all', '3': 6, '4': 1, '5': 8, '10': 'sendAll'},
    const {'1': 'label', '3': 7, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'min_confs', '3': 8, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'spend_unconfirmed', '3': 9, '4': 1, '5': 8, '10': 'spendUnconfirmed'},
  ],
};

/// Descriptor for `SendCoinsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendCoinsRequestDescriptor = $convert.base64Decode('ChBTZW5kQ29pbnNSZXF1ZXN0EhIKBGFkZHIYASABKAlSBGFkZHISFgoGYW1vdW50GAIgASgDUgZhbW91bnQSHwoLdGFyZ2V0X2NvbmYYAyABKAVSCnRhcmdldENvbmYSIAoMc2F0X3Blcl9ieXRlGAUgASgDUgpzYXRQZXJCeXRlEhkKCHNlbmRfYWxsGAYgASgIUgdzZW5kQWxsEhQKBWxhYmVsGAcgASgJUgVsYWJlbBIbCgltaW5fY29uZnMYCCABKAVSCG1pbkNvbmZzEisKEXNwZW5kX3VuY29uZmlybWVkGAkgASgIUhBzcGVuZFVuY29uZmlybWVk');
@$core.Deprecated('Use sendCoinsResponseDescriptor instead')
const SendCoinsResponse$json = const {
  '1': 'SendCoinsResponse',
  '2': const [
    const {'1': 'txid', '3': 1, '4': 1, '5': 9, '10': 'txid'},
  ],
};

/// Descriptor for `SendCoinsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendCoinsResponseDescriptor = $convert.base64Decode('ChFTZW5kQ29pbnNSZXNwb25zZRISCgR0eGlkGAEgASgJUgR0eGlk');
@$core.Deprecated('Use listUnspentRequestDescriptor instead')
const ListUnspentRequest$json = const {
  '1': 'ListUnspentRequest',
  '2': const [
    const {'1': 'min_confs', '3': 1, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'max_confs', '3': 2, '4': 1, '5': 5, '10': 'maxConfs'},
  ],
};

/// Descriptor for `ListUnspentRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUnspentRequestDescriptor = $convert.base64Decode('ChJMaXN0VW5zcGVudFJlcXVlc3QSGwoJbWluX2NvbmZzGAEgASgFUghtaW5Db25mcxIbCgltYXhfY29uZnMYAiABKAVSCG1heENvbmZz');
@$core.Deprecated('Use listUnspentResponseDescriptor instead')
const ListUnspentResponse$json = const {
  '1': 'ListUnspentResponse',
  '2': const [
    const {'1': 'utxos', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Utxo', '10': 'utxos'},
  ],
};

/// Descriptor for `ListUnspentResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listUnspentResponseDescriptor = $convert.base64Decode('ChNMaXN0VW5zcGVudFJlc3BvbnNlEiEKBXV0eG9zGAEgAygLMgsubG5ycGMuVXR4b1IFdXR4b3M=');
@$core.Deprecated('Use newAddressRequestDescriptor instead')
const NewAddressRequest$json = const {
  '1': 'NewAddressRequest',
  '2': const [
    const {'1': 'type', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.AddressType', '10': 'type'},
  ],
};

/// Descriptor for `NewAddressRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newAddressRequestDescriptor = $convert.base64Decode('ChFOZXdBZGRyZXNzUmVxdWVzdBImCgR0eXBlGAEgASgOMhIubG5ycGMuQWRkcmVzc1R5cGVSBHR5cGU=');
@$core.Deprecated('Use newAddressResponseDescriptor instead')
const NewAddressResponse$json = const {
  '1': 'NewAddressResponse',
  '2': const [
    const {'1': 'address', '3': 1, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `NewAddressResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List newAddressResponseDescriptor = $convert.base64Decode('ChJOZXdBZGRyZXNzUmVzcG9uc2USGAoHYWRkcmVzcxgBIAEoCVIHYWRkcmVzcw==');
@$core.Deprecated('Use signMessageRequestDescriptor instead')
const SignMessageRequest$json = const {
  '1': 'SignMessageRequest',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 12, '10': 'msg'},
  ],
};

/// Descriptor for `SignMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signMessageRequestDescriptor = $convert.base64Decode('ChJTaWduTWVzc2FnZVJlcXVlc3QSEAoDbXNnGAEgASgMUgNtc2c=');
@$core.Deprecated('Use signMessageResponseDescriptor instead')
const SignMessageResponse$json = const {
  '1': 'SignMessageResponse',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `SignMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signMessageResponseDescriptor = $convert.base64Decode('ChNTaWduTWVzc2FnZVJlc3BvbnNlEhwKCXNpZ25hdHVyZRgBIAEoCVIJc2lnbmF0dXJl');
@$core.Deprecated('Use verifyMessageRequestDescriptor instead')
const VerifyMessageRequest$json = const {
  '1': 'VerifyMessageRequest',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 12, '10': 'msg'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 9, '10': 'signature'},
  ],
};

/// Descriptor for `VerifyMessageRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyMessageRequestDescriptor = $convert.base64Decode('ChRWZXJpZnlNZXNzYWdlUmVxdWVzdBIQCgNtc2cYASABKAxSA21zZxIcCglzaWduYXR1cmUYAiABKAlSCXNpZ25hdHVyZQ==');
@$core.Deprecated('Use verifyMessageResponseDescriptor instead')
const VerifyMessageResponse$json = const {
  '1': 'VerifyMessageResponse',
  '2': const [
    const {'1': 'valid', '3': 1, '4': 1, '5': 8, '10': 'valid'},
    const {'1': 'pubkey', '3': 2, '4': 1, '5': 9, '10': 'pubkey'},
  ],
};

/// Descriptor for `VerifyMessageResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyMessageResponseDescriptor = $convert.base64Decode('ChVWZXJpZnlNZXNzYWdlUmVzcG9uc2USFAoFdmFsaWQYASABKAhSBXZhbGlkEhYKBnB1YmtleRgCIAEoCVIGcHVia2V5');
@$core.Deprecated('Use connectPeerRequestDescriptor instead')
const ConnectPeerRequest$json = const {
  '1': 'ConnectPeerRequest',
  '2': const [
    const {'1': 'addr', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.LightningAddress', '10': 'addr'},
    const {'1': 'perm', '3': 2, '4': 1, '5': 8, '10': 'perm'},
    const {'1': 'timeout', '3': 3, '4': 1, '5': 4, '10': 'timeout'},
  ],
};

/// Descriptor for `ConnectPeerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectPeerRequestDescriptor = $convert.base64Decode('ChJDb25uZWN0UGVlclJlcXVlc3QSKwoEYWRkchgBIAEoCzIXLmxucnBjLkxpZ2h0bmluZ0FkZHJlc3NSBGFkZHISEgoEcGVybRgCIAEoCFIEcGVybRIYCgd0aW1lb3V0GAMgASgEUgd0aW1lb3V0');
@$core.Deprecated('Use connectPeerResponseDescriptor instead')
const ConnectPeerResponse$json = const {
  '1': 'ConnectPeerResponse',
};

/// Descriptor for `ConnectPeerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List connectPeerResponseDescriptor = $convert.base64Decode('ChNDb25uZWN0UGVlclJlc3BvbnNl');
@$core.Deprecated('Use disconnectPeerRequestDescriptor instead')
const DisconnectPeerRequest$json = const {
  '1': 'DisconnectPeerRequest',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 9, '10': 'pubKey'},
  ],
};

/// Descriptor for `DisconnectPeerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disconnectPeerRequestDescriptor = $convert.base64Decode('ChVEaXNjb25uZWN0UGVlclJlcXVlc3QSFwoHcHViX2tleRgBIAEoCVIGcHViS2V5');
@$core.Deprecated('Use disconnectPeerResponseDescriptor instead')
const DisconnectPeerResponse$json = const {
  '1': 'DisconnectPeerResponse',
};

/// Descriptor for `DisconnectPeerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List disconnectPeerResponseDescriptor = $convert.base64Decode('ChZEaXNjb25uZWN0UGVlclJlc3BvbnNl');
@$core.Deprecated('Use hTLCDescriptor instead')
const HTLC$json = const {
  '1': 'HTLC',
  '2': const [
    const {'1': 'incoming', '3': 1, '4': 1, '5': 8, '10': 'incoming'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'hash_lock', '3': 3, '4': 1, '5': 12, '10': 'hashLock'},
    const {'1': 'expiration_height', '3': 4, '4': 1, '5': 13, '10': 'expirationHeight'},
    const {'1': 'htlc_index', '3': 5, '4': 1, '5': 4, '10': 'htlcIndex'},
    const {'1': 'forwarding_channel', '3': 6, '4': 1, '5': 4, '10': 'forwardingChannel'},
    const {'1': 'forwarding_htlc_index', '3': 7, '4': 1, '5': 4, '10': 'forwardingHtlcIndex'},
  ],
};

/// Descriptor for `HTLC`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTLCDescriptor = $convert.base64Decode('CgRIVExDEhoKCGluY29taW5nGAEgASgIUghpbmNvbWluZxIWCgZhbW91bnQYAiABKANSBmFtb3VudBIbCgloYXNoX2xvY2sYAyABKAxSCGhhc2hMb2NrEisKEWV4cGlyYXRpb25faGVpZ2h0GAQgASgNUhBleHBpcmF0aW9uSGVpZ2h0Eh0KCmh0bGNfaW5kZXgYBSABKARSCWh0bGNJbmRleBItChJmb3J3YXJkaW5nX2NoYW5uZWwYBiABKARSEWZvcndhcmRpbmdDaGFubmVsEjIKFWZvcndhcmRpbmdfaHRsY19pbmRleBgHIAEoBFITZm9yd2FyZGluZ0h0bGNJbmRleA==');
@$core.Deprecated('Use channelConstraintsDescriptor instead')
const ChannelConstraints$json = const {
  '1': 'ChannelConstraints',
  '2': const [
    const {'1': 'csv_delay', '3': 1, '4': 1, '5': 13, '10': 'csvDelay'},
    const {'1': 'chan_reserve_sat', '3': 2, '4': 1, '5': 4, '10': 'chanReserveSat'},
    const {'1': 'dust_limit_sat', '3': 3, '4': 1, '5': 4, '10': 'dustLimitSat'},
    const {'1': 'max_pending_amt_msat', '3': 4, '4': 1, '5': 4, '10': 'maxPendingAmtMsat'},
    const {'1': 'min_htlc_msat', '3': 5, '4': 1, '5': 4, '10': 'minHtlcMsat'},
    const {'1': 'max_accepted_htlcs', '3': 6, '4': 1, '5': 13, '10': 'maxAcceptedHtlcs'},
  ],
};

/// Descriptor for `ChannelConstraints`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelConstraintsDescriptor = $convert.base64Decode('ChJDaGFubmVsQ29uc3RyYWludHMSGwoJY3N2X2RlbGF5GAEgASgNUghjc3ZEZWxheRIoChBjaGFuX3Jlc2VydmVfc2F0GAIgASgEUg5jaGFuUmVzZXJ2ZVNhdBIkCg5kdXN0X2xpbWl0X3NhdBgDIAEoBFIMZHVzdExpbWl0U2F0Ei8KFG1heF9wZW5kaW5nX2FtdF9tc2F0GAQgASgEUhFtYXhQZW5kaW5nQW10TXNhdBIiCg1taW5faHRsY19tc2F0GAUgASgEUgttaW5IdGxjTXNhdBIsChJtYXhfYWNjZXB0ZWRfaHRsY3MYBiABKA1SEG1heEFjY2VwdGVkSHRsY3M=');
@$core.Deprecated('Use channelDescriptor instead')
const Channel$json = const {
  '1': 'Channel',
  '2': const [
    const {'1': 'active', '3': 1, '4': 1, '5': 8, '10': 'active'},
    const {'1': 'remote_pubkey', '3': 2, '4': 1, '5': 9, '10': 'remotePubkey'},
    const {'1': 'channel_point', '3': 3, '4': 1, '5': 9, '10': 'channelPoint'},
    const {
      '1': 'chan_id',
      '3': 4,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'capacity', '3': 5, '4': 1, '5': 3, '10': 'capacity'},
    const {'1': 'local_balance', '3': 6, '4': 1, '5': 3, '10': 'localBalance'},
    const {'1': 'remote_balance', '3': 7, '4': 1, '5': 3, '10': 'remoteBalance'},
    const {'1': 'commit_fee', '3': 8, '4': 1, '5': 3, '10': 'commitFee'},
    const {'1': 'commit_weight', '3': 9, '4': 1, '5': 3, '10': 'commitWeight'},
    const {'1': 'fee_per_kw', '3': 10, '4': 1, '5': 3, '10': 'feePerKw'},
    const {'1': 'unsettled_balance', '3': 11, '4': 1, '5': 3, '10': 'unsettledBalance'},
    const {'1': 'total_satoshis_sent', '3': 12, '4': 1, '5': 3, '10': 'totalSatoshisSent'},
    const {'1': 'total_satoshis_received', '3': 13, '4': 1, '5': 3, '10': 'totalSatoshisReceived'},
    const {'1': 'num_updates', '3': 14, '4': 1, '5': 4, '10': 'numUpdates'},
    const {'1': 'pending_htlcs', '3': 15, '4': 3, '5': 11, '6': '.lnrpc.HTLC', '10': 'pendingHtlcs'},
    const {
      '1': 'csv_delay',
      '3': 16,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'csvDelay',
    },
    const {'1': 'private', '3': 17, '4': 1, '5': 8, '10': 'private'},
    const {'1': 'initiator', '3': 18, '4': 1, '5': 8, '10': 'initiator'},
    const {'1': 'chan_status_flags', '3': 19, '4': 1, '5': 9, '10': 'chanStatusFlags'},
    const {
      '1': 'local_chan_reserve_sat',
      '3': 20,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'localChanReserveSat',
    },
    const {
      '1': 'remote_chan_reserve_sat',
      '3': 21,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'remoteChanReserveSat',
    },
    const {
      '1': 'static_remote_key',
      '3': 22,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'staticRemoteKey',
    },
    const {'1': 'commitment_type', '3': 26, '4': 1, '5': 14, '6': '.lnrpc.CommitmentType', '10': 'commitmentType'},
    const {'1': 'lifetime', '3': 23, '4': 1, '5': 3, '10': 'lifetime'},
    const {'1': 'uptime', '3': 24, '4': 1, '5': 3, '10': 'uptime'},
    const {'1': 'close_address', '3': 25, '4': 1, '5': 9, '10': 'closeAddress'},
    const {'1': 'push_amount_sat', '3': 27, '4': 1, '5': 4, '10': 'pushAmountSat'},
    const {'1': 'thaw_height', '3': 28, '4': 1, '5': 13, '10': 'thawHeight'},
    const {'1': 'local_constraints', '3': 29, '4': 1, '5': 11, '6': '.lnrpc.ChannelConstraints', '10': 'localConstraints'},
    const {'1': 'remote_constraints', '3': 30, '4': 1, '5': 11, '6': '.lnrpc.ChannelConstraints', '10': 'remoteConstraints'},
  ],
};

/// Descriptor for `Channel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelDescriptor = $convert.base64Decode('CgdDaGFubmVsEhYKBmFjdGl2ZRgBIAEoCFIGYWN0aXZlEiMKDXJlbW90ZV9wdWJrZXkYAiABKAlSDHJlbW90ZVB1YmtleRIjCg1jaGFubmVsX3BvaW50GAMgASgJUgxjaGFubmVsUG9pbnQSGwoHY2hhbl9pZBgEIAEoBEICMAFSBmNoYW5JZBIaCghjYXBhY2l0eRgFIAEoA1IIY2FwYWNpdHkSIwoNbG9jYWxfYmFsYW5jZRgGIAEoA1IMbG9jYWxCYWxhbmNlEiUKDnJlbW90ZV9iYWxhbmNlGAcgASgDUg1yZW1vdGVCYWxhbmNlEh0KCmNvbW1pdF9mZWUYCCABKANSCWNvbW1pdEZlZRIjCg1jb21taXRfd2VpZ2h0GAkgASgDUgxjb21taXRXZWlnaHQSHAoKZmVlX3Blcl9rdxgKIAEoA1IIZmVlUGVyS3cSKwoRdW5zZXR0bGVkX2JhbGFuY2UYCyABKANSEHVuc2V0dGxlZEJhbGFuY2USLgoTdG90YWxfc2F0b3NoaXNfc2VudBgMIAEoA1IRdG90YWxTYXRvc2hpc1NlbnQSNgoXdG90YWxfc2F0b3NoaXNfcmVjZWl2ZWQYDSABKANSFXRvdGFsU2F0b3NoaXNSZWNlaXZlZBIfCgtudW1fdXBkYXRlcxgOIAEoBFIKbnVtVXBkYXRlcxIwCg1wZW5kaW5nX2h0bGNzGA8gAygLMgsubG5ycGMuSFRMQ1IMcGVuZGluZ0h0bGNzEh8KCWNzdl9kZWxheRgQIAEoDUICGAFSCGNzdkRlbGF5EhgKB3ByaXZhdGUYESABKAhSB3ByaXZhdGUSHAoJaW5pdGlhdG9yGBIgASgIUglpbml0aWF0b3ISKgoRY2hhbl9zdGF0dXNfZmxhZ3MYEyABKAlSD2NoYW5TdGF0dXNGbGFncxI3ChZsb2NhbF9jaGFuX3Jlc2VydmVfc2F0GBQgASgDQgIYAVITbG9jYWxDaGFuUmVzZXJ2ZVNhdBI5ChdyZW1vdGVfY2hhbl9yZXNlcnZlX3NhdBgVIAEoA0ICGAFSFHJlbW90ZUNoYW5SZXNlcnZlU2F0Ei4KEXN0YXRpY19yZW1vdGVfa2V5GBYgASgIQgIYAVIPc3RhdGljUmVtb3RlS2V5Ej4KD2NvbW1pdG1lbnRfdHlwZRgaIAEoDjIVLmxucnBjLkNvbW1pdG1lbnRUeXBlUg5jb21taXRtZW50VHlwZRIaCghsaWZldGltZRgXIAEoA1IIbGlmZXRpbWUSFgoGdXB0aW1lGBggASgDUgZ1cHRpbWUSIwoNY2xvc2VfYWRkcmVzcxgZIAEoCVIMY2xvc2VBZGRyZXNzEiYKD3B1c2hfYW1vdW50X3NhdBgbIAEoBFINcHVzaEFtb3VudFNhdBIfCgt0aGF3X2hlaWdodBgcIAEoDVIKdGhhd0hlaWdodBJGChFsb2NhbF9jb25zdHJhaW50cxgdIAEoCzIZLmxucnBjLkNoYW5uZWxDb25zdHJhaW50c1IQbG9jYWxDb25zdHJhaW50cxJIChJyZW1vdGVfY29uc3RyYWludHMYHiABKAsyGS5sbnJwYy5DaGFubmVsQ29uc3RyYWludHNSEXJlbW90ZUNvbnN0cmFpbnRz');
@$core.Deprecated('Use listChannelsRequestDescriptor instead')
const ListChannelsRequest$json = const {
  '1': 'ListChannelsRequest',
  '2': const [
    const {'1': 'active_only', '3': 1, '4': 1, '5': 8, '10': 'activeOnly'},
    const {'1': 'inactive_only', '3': 2, '4': 1, '5': 8, '10': 'inactiveOnly'},
    const {'1': 'public_only', '3': 3, '4': 1, '5': 8, '10': 'publicOnly'},
    const {'1': 'private_only', '3': 4, '4': 1, '5': 8, '10': 'privateOnly'},
    const {'1': 'peer', '3': 5, '4': 1, '5': 12, '10': 'peer'},
  ],
};

/// Descriptor for `ListChannelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listChannelsRequestDescriptor = $convert.base64Decode('ChNMaXN0Q2hhbm5lbHNSZXF1ZXN0Eh8KC2FjdGl2ZV9vbmx5GAEgASgIUgphY3RpdmVPbmx5EiMKDWluYWN0aXZlX29ubHkYAiABKAhSDGluYWN0aXZlT25seRIfCgtwdWJsaWNfb25seRgDIAEoCFIKcHVibGljT25seRIhCgxwcml2YXRlX29ubHkYBCABKAhSC3ByaXZhdGVPbmx5EhIKBHBlZXIYBSABKAxSBHBlZXI=');
@$core.Deprecated('Use listChannelsResponseDescriptor instead')
const ListChannelsResponse$json = const {
  '1': 'ListChannelsResponse',
  '2': const [
    const {'1': 'channels', '3': 11, '4': 3, '5': 11, '6': '.lnrpc.Channel', '10': 'channels'},
  ],
};

/// Descriptor for `ListChannelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listChannelsResponseDescriptor = $convert.base64Decode('ChRMaXN0Q2hhbm5lbHNSZXNwb25zZRIqCghjaGFubmVscxgLIAMoCzIOLmxucnBjLkNoYW5uZWxSCGNoYW5uZWxz');
@$core.Deprecated('Use channelCloseSummaryDescriptor instead')
const ChannelCloseSummary$json = const {
  '1': 'ChannelCloseSummary',
  '2': const [
    const {'1': 'channel_point', '3': 1, '4': 1, '5': 9, '10': 'channelPoint'},
    const {
      '1': 'chan_id',
      '3': 2,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'chain_hash', '3': 3, '4': 1, '5': 9, '10': 'chainHash'},
    const {'1': 'closing_tx_hash', '3': 4, '4': 1, '5': 9, '10': 'closingTxHash'},
    const {'1': 'remote_pubkey', '3': 5, '4': 1, '5': 9, '10': 'remotePubkey'},
    const {'1': 'capacity', '3': 6, '4': 1, '5': 3, '10': 'capacity'},
    const {'1': 'close_height', '3': 7, '4': 1, '5': 13, '10': 'closeHeight'},
    const {'1': 'settled_balance', '3': 8, '4': 1, '5': 3, '10': 'settledBalance'},
    const {'1': 'time_locked_balance', '3': 9, '4': 1, '5': 3, '10': 'timeLockedBalance'},
    const {'1': 'close_type', '3': 10, '4': 1, '5': 14, '6': '.lnrpc.ChannelCloseSummary.ClosureType', '10': 'closeType'},
    const {'1': 'open_initiator', '3': 11, '4': 1, '5': 14, '6': '.lnrpc.Initiator', '10': 'openInitiator'},
    const {'1': 'close_initiator', '3': 12, '4': 1, '5': 14, '6': '.lnrpc.Initiator', '10': 'closeInitiator'},
    const {'1': 'resolutions', '3': 13, '4': 3, '5': 11, '6': '.lnrpc.Resolution', '10': 'resolutions'},
  ],
  '4': const [ChannelCloseSummary_ClosureType$json],
};

@$core.Deprecated('Use channelCloseSummaryDescriptor instead')
const ChannelCloseSummary_ClosureType$json = const {
  '1': 'ClosureType',
  '2': const [
    const {'1': 'COOPERATIVE_CLOSE', '2': 0},
    const {'1': 'LOCAL_FORCE_CLOSE', '2': 1},
    const {'1': 'REMOTE_FORCE_CLOSE', '2': 2},
    const {'1': 'BREACH_CLOSE', '2': 3},
    const {'1': 'FUNDING_CANCELED', '2': 4},
    const {'1': 'ABANDONED', '2': 5},
  ],
};

/// Descriptor for `ChannelCloseSummary`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelCloseSummaryDescriptor = $convert.base64Decode('ChNDaGFubmVsQ2xvc2VTdW1tYXJ5EiMKDWNoYW5uZWxfcG9pbnQYASABKAlSDGNoYW5uZWxQb2ludBIbCgdjaGFuX2lkGAIgASgEQgIwAVIGY2hhbklkEh0KCmNoYWluX2hhc2gYAyABKAlSCWNoYWluSGFzaBImCg9jbG9zaW5nX3R4X2hhc2gYBCABKAlSDWNsb3NpbmdUeEhhc2gSIwoNcmVtb3RlX3B1YmtleRgFIAEoCVIMcmVtb3RlUHVia2V5EhoKCGNhcGFjaXR5GAYgASgDUghjYXBhY2l0eRIhCgxjbG9zZV9oZWlnaHQYByABKA1SC2Nsb3NlSGVpZ2h0EicKD3NldHRsZWRfYmFsYW5jZRgIIAEoA1IOc2V0dGxlZEJhbGFuY2USLgoTdGltZV9sb2NrZWRfYmFsYW5jZRgJIAEoA1IRdGltZUxvY2tlZEJhbGFuY2USRQoKY2xvc2VfdHlwZRgKIAEoDjImLmxucnBjLkNoYW5uZWxDbG9zZVN1bW1hcnkuQ2xvc3VyZVR5cGVSCWNsb3NlVHlwZRI3Cg5vcGVuX2luaXRpYXRvchgLIAEoDjIQLmxucnBjLkluaXRpYXRvclINb3BlbkluaXRpYXRvchI5Cg9jbG9zZV9pbml0aWF0b3IYDCABKA4yEC5sbnJwYy5Jbml0aWF0b3JSDmNsb3NlSW5pdGlhdG9yEjMKC3Jlc29sdXRpb25zGA0gAygLMhEubG5ycGMuUmVzb2x1dGlvblILcmVzb2x1dGlvbnMiigEKC0Nsb3N1cmVUeXBlEhUKEUNPT1BFUkFUSVZFX0NMT1NFEAASFQoRTE9DQUxfRk9SQ0VfQ0xPU0UQARIWChJSRU1PVEVfRk9SQ0VfQ0xPU0UQAhIQCgxCUkVBQ0hfQ0xPU0UQAxIUChBGVU5ESU5HX0NBTkNFTEVEEAQSDQoJQUJBTkRPTkVEEAU=');
@$core.Deprecated('Use resolutionDescriptor instead')
const Resolution$json = const {
  '1': 'Resolution',
  '2': const [
    const {'1': 'resolution_type', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.ResolutionType', '10': 'resolutionType'},
    const {'1': 'outcome', '3': 2, '4': 1, '5': 14, '6': '.lnrpc.ResolutionOutcome', '10': 'outcome'},
    const {'1': 'outpoint', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.OutPoint', '10': 'outpoint'},
    const {'1': 'amount_sat', '3': 4, '4': 1, '5': 4, '10': 'amountSat'},
    const {'1': 'sweep_txid', '3': 5, '4': 1, '5': 9, '10': 'sweepTxid'},
  ],
};

/// Descriptor for `Resolution`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List resolutionDescriptor = $convert.base64Decode('CgpSZXNvbHV0aW9uEj4KD3Jlc29sdXRpb25fdHlwZRgBIAEoDjIVLmxucnBjLlJlc29sdXRpb25UeXBlUg5yZXNvbHV0aW9uVHlwZRIyCgdvdXRjb21lGAIgASgOMhgubG5ycGMuUmVzb2x1dGlvbk91dGNvbWVSB291dGNvbWUSKwoIb3V0cG9pbnQYAyABKAsyDy5sbnJwYy5PdXRQb2ludFIIb3V0cG9pbnQSHQoKYW1vdW50X3NhdBgEIAEoBFIJYW1vdW50U2F0Eh0KCnN3ZWVwX3R4aWQYBSABKAlSCXN3ZWVwVHhpZA==');
@$core.Deprecated('Use closedChannelsRequestDescriptor instead')
const ClosedChannelsRequest$json = const {
  '1': 'ClosedChannelsRequest',
  '2': const [
    const {'1': 'cooperative', '3': 1, '4': 1, '5': 8, '10': 'cooperative'},
    const {'1': 'local_force', '3': 2, '4': 1, '5': 8, '10': 'localForce'},
    const {'1': 'remote_force', '3': 3, '4': 1, '5': 8, '10': 'remoteForce'},
    const {'1': 'breach', '3': 4, '4': 1, '5': 8, '10': 'breach'},
    const {'1': 'funding_canceled', '3': 5, '4': 1, '5': 8, '10': 'fundingCanceled'},
    const {'1': 'abandoned', '3': 6, '4': 1, '5': 8, '10': 'abandoned'},
  ],
};

/// Descriptor for `ClosedChannelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closedChannelsRequestDescriptor = $convert.base64Decode('ChVDbG9zZWRDaGFubmVsc1JlcXVlc3QSIAoLY29vcGVyYXRpdmUYASABKAhSC2Nvb3BlcmF0aXZlEh8KC2xvY2FsX2ZvcmNlGAIgASgIUgpsb2NhbEZvcmNlEiEKDHJlbW90ZV9mb3JjZRgDIAEoCFILcmVtb3RlRm9yY2USFgoGYnJlYWNoGAQgASgIUgZicmVhY2gSKQoQZnVuZGluZ19jYW5jZWxlZBgFIAEoCFIPZnVuZGluZ0NhbmNlbGVkEhwKCWFiYW5kb25lZBgGIAEoCFIJYWJhbmRvbmVk');
@$core.Deprecated('Use closedChannelsResponseDescriptor instead')
const ClosedChannelsResponse$json = const {
  '1': 'ClosedChannelsResponse',
  '2': const [
    const {'1': 'channels', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.ChannelCloseSummary', '10': 'channels'},
  ],
};

/// Descriptor for `ClosedChannelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closedChannelsResponseDescriptor = $convert.base64Decode('ChZDbG9zZWRDaGFubmVsc1Jlc3BvbnNlEjYKCGNoYW5uZWxzGAEgAygLMhoubG5ycGMuQ2hhbm5lbENsb3NlU3VtbWFyeVIIY2hhbm5lbHM=');
@$core.Deprecated('Use peerDescriptor instead')
const Peer$json = const {
  '1': 'Peer',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'address', '3': 3, '4': 1, '5': 9, '10': 'address'},
    const {'1': 'bytes_sent', '3': 4, '4': 1, '5': 4, '10': 'bytesSent'},
    const {'1': 'bytes_recv', '3': 5, '4': 1, '5': 4, '10': 'bytesRecv'},
    const {'1': 'sat_sent', '3': 6, '4': 1, '5': 3, '10': 'satSent'},
    const {'1': 'sat_recv', '3': 7, '4': 1, '5': 3, '10': 'satRecv'},
    const {'1': 'inbound', '3': 8, '4': 1, '5': 8, '10': 'inbound'},
    const {'1': 'ping_time', '3': 9, '4': 1, '5': 3, '10': 'pingTime'},
    const {'1': 'sync_type', '3': 10, '4': 1, '5': 14, '6': '.lnrpc.Peer.SyncType', '10': 'syncType'},
    const {'1': 'features', '3': 11, '4': 3, '5': 11, '6': '.lnrpc.Peer.FeaturesEntry', '10': 'features'},
    const {'1': 'errors', '3': 12, '4': 3, '5': 11, '6': '.lnrpc.TimestampedError', '10': 'errors'},
    const {'1': 'flap_count', '3': 13, '4': 1, '5': 5, '10': 'flapCount'},
    const {'1': 'last_flap_ns', '3': 14, '4': 1, '5': 3, '10': 'lastFlapNs'},
  ],
  '3': const [Peer_FeaturesEntry$json],
  '4': const [Peer_SyncType$json],
};

@$core.Deprecated('Use peerDescriptor instead')
const Peer_FeaturesEntry$json = const {
  '1': 'FeaturesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Feature', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use peerDescriptor instead')
const Peer_SyncType$json = const {
  '1': 'SyncType',
  '2': const [
    const {'1': 'UNKNOWN_SYNC', '2': 0},
    const {'1': 'ACTIVE_SYNC', '2': 1},
    const {'1': 'PASSIVE_SYNC', '2': 2},
    const {'1': 'PINNED_SYNC', '2': 3},
  ],
};

/// Descriptor for `Peer`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerDescriptor = $convert.base64Decode('CgRQZWVyEhcKB3B1Yl9rZXkYASABKAlSBnB1YktleRIYCgdhZGRyZXNzGAMgASgJUgdhZGRyZXNzEh0KCmJ5dGVzX3NlbnQYBCABKARSCWJ5dGVzU2VudBIdCgpieXRlc19yZWN2GAUgASgEUglieXRlc1JlY3YSGQoIc2F0X3NlbnQYBiABKANSB3NhdFNlbnQSGQoIc2F0X3JlY3YYByABKANSB3NhdFJlY3YSGAoHaW5ib3VuZBgIIAEoCFIHaW5ib3VuZBIbCglwaW5nX3RpbWUYCSABKANSCHBpbmdUaW1lEjEKCXN5bmNfdHlwZRgKIAEoDjIULmxucnBjLlBlZXIuU3luY1R5cGVSCHN5bmNUeXBlEjUKCGZlYXR1cmVzGAsgAygLMhkubG5ycGMuUGVlci5GZWF0dXJlc0VudHJ5UghmZWF0dXJlcxIvCgZlcnJvcnMYDCADKAsyFy5sbnJwYy5UaW1lc3RhbXBlZEVycm9yUgZlcnJvcnMSHQoKZmxhcF9jb3VudBgNIAEoBVIJZmxhcENvdW50EiAKDGxhc3RfZmxhcF9ucxgOIAEoA1IKbGFzdEZsYXBOcxpLCg1GZWF0dXJlc0VudHJ5EhAKA2tleRgBIAEoDVIDa2V5EiQKBXZhbHVlGAIgASgLMg4ubG5ycGMuRmVhdHVyZVIFdmFsdWU6AjgBIlAKCFN5bmNUeXBlEhAKDFVOS05PV05fU1lOQxAAEg8KC0FDVElWRV9TWU5DEAESEAoMUEFTU0lWRV9TWU5DEAISDwoLUElOTkVEX1NZTkMQAw==');
@$core.Deprecated('Use timestampedErrorDescriptor instead')
const TimestampedError$json = const {
  '1': 'TimestampedError',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 4, '10': 'timestamp'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `TimestampedError`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List timestampedErrorDescriptor = $convert.base64Decode('ChBUaW1lc3RhbXBlZEVycm9yEhwKCXRpbWVzdGFtcBgBIAEoBFIJdGltZXN0YW1wEhQKBWVycm9yGAIgASgJUgVlcnJvcg==');
@$core.Deprecated('Use listPeersRequestDescriptor instead')
const ListPeersRequest$json = const {
  '1': 'ListPeersRequest',
  '2': const [
    const {'1': 'latest_error', '3': 1, '4': 1, '5': 8, '10': 'latestError'},
  ],
};

/// Descriptor for `ListPeersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPeersRequestDescriptor = $convert.base64Decode('ChBMaXN0UGVlcnNSZXF1ZXN0EiEKDGxhdGVzdF9lcnJvchgBIAEoCFILbGF0ZXN0RXJyb3I=');
@$core.Deprecated('Use listPeersResponseDescriptor instead')
const ListPeersResponse$json = const {
  '1': 'ListPeersResponse',
  '2': const [
    const {'1': 'peers', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Peer', '10': 'peers'},
  ],
};

/// Descriptor for `ListPeersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPeersResponseDescriptor = $convert.base64Decode('ChFMaXN0UGVlcnNSZXNwb25zZRIhCgVwZWVycxgBIAMoCzILLmxucnBjLlBlZXJSBXBlZXJz');
@$core.Deprecated('Use peerEventSubscriptionDescriptor instead')
const PeerEventSubscription$json = const {
  '1': 'PeerEventSubscription',
};

/// Descriptor for `PeerEventSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerEventSubscriptionDescriptor = $convert.base64Decode('ChVQZWVyRXZlbnRTdWJzY3JpcHRpb24=');
@$core.Deprecated('Use peerEventDescriptor instead')
const PeerEvent$json = const {
  '1': 'PeerEvent',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'type', '3': 2, '4': 1, '5': 14, '6': '.lnrpc.PeerEvent.EventType', '10': 'type'},
  ],
  '4': const [PeerEvent_EventType$json],
};

@$core.Deprecated('Use peerEventDescriptor instead')
const PeerEvent_EventType$json = const {
  '1': 'EventType',
  '2': const [
    const {'1': 'PEER_ONLINE', '2': 0},
    const {'1': 'PEER_OFFLINE', '2': 1},
  ],
};

/// Descriptor for `PeerEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List peerEventDescriptor = $convert.base64Decode('CglQZWVyRXZlbnQSFwoHcHViX2tleRgBIAEoCVIGcHViS2V5Ei4KBHR5cGUYAiABKA4yGi5sbnJwYy5QZWVyRXZlbnQuRXZlbnRUeXBlUgR0eXBlIi4KCUV2ZW50VHlwZRIPCgtQRUVSX09OTElORRAAEhAKDFBFRVJfT0ZGTElORRAB');
@$core.Deprecated('Use getInfoRequestDescriptor instead')
const GetInfoRequest$json = const {
  '1': 'GetInfoRequest',
};

/// Descriptor for `GetInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInfoRequestDescriptor = $convert.base64Decode('Cg5HZXRJbmZvUmVxdWVzdA==');
@$core.Deprecated('Use getInfoResponseDescriptor instead')
const GetInfoResponse$json = const {
  '1': 'GetInfoResponse',
  '2': const [
    const {'1': 'version', '3': 14, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'commit_hash', '3': 20, '4': 1, '5': 9, '10': 'commitHash'},
    const {'1': 'identity_pubkey', '3': 1, '4': 1, '5': 9, '10': 'identityPubkey'},
    const {'1': 'alias', '3': 2, '4': 1, '5': 9, '10': 'alias'},
    const {'1': 'color', '3': 17, '4': 1, '5': 9, '10': 'color'},
    const {'1': 'num_pending_channels', '3': 3, '4': 1, '5': 13, '10': 'numPendingChannels'},
    const {'1': 'num_active_channels', '3': 4, '4': 1, '5': 13, '10': 'numActiveChannels'},
    const {'1': 'num_inactive_channels', '3': 15, '4': 1, '5': 13, '10': 'numInactiveChannels'},
    const {'1': 'num_peers', '3': 5, '4': 1, '5': 13, '10': 'numPeers'},
    const {'1': 'block_height', '3': 6, '4': 1, '5': 13, '10': 'blockHeight'},
    const {'1': 'block_hash', '3': 8, '4': 1, '5': 9, '10': 'blockHash'},
    const {'1': 'best_header_timestamp', '3': 13, '4': 1, '5': 3, '10': 'bestHeaderTimestamp'},
    const {'1': 'synced_to_chain', '3': 9, '4': 1, '5': 8, '10': 'syncedToChain'},
    const {'1': 'synced_to_graph', '3': 18, '4': 1, '5': 8, '10': 'syncedToGraph'},
    const {
      '1': 'testnet',
      '3': 10,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'testnet',
    },
    const {'1': 'chains', '3': 16, '4': 3, '5': 11, '6': '.lnrpc.Chain', '10': 'chains'},
    const {'1': 'uris', '3': 12, '4': 3, '5': 9, '10': 'uris'},
    const {'1': 'features', '3': 19, '4': 3, '5': 11, '6': '.lnrpc.GetInfoResponse.FeaturesEntry', '10': 'features'},
  ],
  '3': const [GetInfoResponse_FeaturesEntry$json],
  '9': const [
    const {'1': 11, '2': 12},
  ],
};

@$core.Deprecated('Use getInfoResponseDescriptor instead')
const GetInfoResponse_FeaturesEntry$json = const {
  '1': 'FeaturesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Feature', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `GetInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getInfoResponseDescriptor = $convert.base64Decode('Cg9HZXRJbmZvUmVzcG9uc2USGAoHdmVyc2lvbhgOIAEoCVIHdmVyc2lvbhIfCgtjb21taXRfaGFzaBgUIAEoCVIKY29tbWl0SGFzaBInCg9pZGVudGl0eV9wdWJrZXkYASABKAlSDmlkZW50aXR5UHVia2V5EhQKBWFsaWFzGAIgASgJUgVhbGlhcxIUCgVjb2xvchgRIAEoCVIFY29sb3ISMAoUbnVtX3BlbmRpbmdfY2hhbm5lbHMYAyABKA1SEm51bVBlbmRpbmdDaGFubmVscxIuChNudW1fYWN0aXZlX2NoYW5uZWxzGAQgASgNUhFudW1BY3RpdmVDaGFubmVscxIyChVudW1faW5hY3RpdmVfY2hhbm5lbHMYDyABKA1SE251bUluYWN0aXZlQ2hhbm5lbHMSGwoJbnVtX3BlZXJzGAUgASgNUghudW1QZWVycxIhCgxibG9ja19oZWlnaHQYBiABKA1SC2Jsb2NrSGVpZ2h0Eh0KCmJsb2NrX2hhc2gYCCABKAlSCWJsb2NrSGFzaBIyChViZXN0X2hlYWRlcl90aW1lc3RhbXAYDSABKANSE2Jlc3RIZWFkZXJUaW1lc3RhbXASJgoPc3luY2VkX3RvX2NoYWluGAkgASgIUg1zeW5jZWRUb0NoYWluEiYKD3N5bmNlZF90b19ncmFwaBgSIAEoCFINc3luY2VkVG9HcmFwaBIcCgd0ZXN0bmV0GAogASgIQgIYAVIHdGVzdG5ldBIkCgZjaGFpbnMYECADKAsyDC5sbnJwYy5DaGFpblIGY2hhaW5zEhIKBHVyaXMYDCADKAlSBHVyaXMSQAoIZmVhdHVyZXMYEyADKAsyJC5sbnJwYy5HZXRJbmZvUmVzcG9uc2UuRmVhdHVyZXNFbnRyeVIIZmVhdHVyZXMaSwoNRmVhdHVyZXNFbnRyeRIQCgNrZXkYASABKA1SA2tleRIkCgV2YWx1ZRgCIAEoCzIOLmxucnBjLkZlYXR1cmVSBXZhbHVlOgI4AUoECAsQDA==');
@$core.Deprecated('Use getRecoveryInfoRequestDescriptor instead')
const GetRecoveryInfoRequest$json = const {
  '1': 'GetRecoveryInfoRequest',
};

/// Descriptor for `GetRecoveryInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecoveryInfoRequestDescriptor = $convert.base64Decode('ChZHZXRSZWNvdmVyeUluZm9SZXF1ZXN0');
@$core.Deprecated('Use getRecoveryInfoResponseDescriptor instead')
const GetRecoveryInfoResponse$json = const {
  '1': 'GetRecoveryInfoResponse',
  '2': const [
    const {'1': 'recovery_mode', '3': 1, '4': 1, '5': 8, '10': 'recoveryMode'},
    const {'1': 'recovery_finished', '3': 2, '4': 1, '5': 8, '10': 'recoveryFinished'},
    const {'1': 'progress', '3': 3, '4': 1, '5': 1, '10': 'progress'},
  ],
};

/// Descriptor for `GetRecoveryInfoResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getRecoveryInfoResponseDescriptor = $convert.base64Decode('ChdHZXRSZWNvdmVyeUluZm9SZXNwb25zZRIjCg1yZWNvdmVyeV9tb2RlGAEgASgIUgxyZWNvdmVyeU1vZGUSKwoRcmVjb3ZlcnlfZmluaXNoZWQYAiABKAhSEHJlY292ZXJ5RmluaXNoZWQSGgoIcHJvZ3Jlc3MYAyABKAFSCHByb2dyZXNz');
@$core.Deprecated('Use chainDescriptor instead')
const Chain$json = const {
  '1': 'Chain',
  '2': const [
    const {'1': 'chain', '3': 1, '4': 1, '5': 9, '10': 'chain'},
    const {'1': 'network', '3': 2, '4': 1, '5': 9, '10': 'network'},
  ],
};

/// Descriptor for `Chain`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chainDescriptor = $convert.base64Decode('CgVDaGFpbhIUCgVjaGFpbhgBIAEoCVIFY2hhaW4SGAoHbmV0d29yaxgCIAEoCVIHbmV0d29yaw==');
@$core.Deprecated('Use confirmationUpdateDescriptor instead')
const ConfirmationUpdate$json = const {
  '1': 'ConfirmationUpdate',
  '2': const [
    const {'1': 'block_sha', '3': 1, '4': 1, '5': 12, '10': 'blockSha'},
    const {'1': 'block_height', '3': 2, '4': 1, '5': 5, '10': 'blockHeight'},
    const {'1': 'num_confs_left', '3': 3, '4': 1, '5': 13, '10': 'numConfsLeft'},
  ],
};

/// Descriptor for `ConfirmationUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confirmationUpdateDescriptor = $convert.base64Decode('ChJDb25maXJtYXRpb25VcGRhdGUSGwoJYmxvY2tfc2hhGAEgASgMUghibG9ja1NoYRIhCgxibG9ja19oZWlnaHQYAiABKAVSC2Jsb2NrSGVpZ2h0EiQKDm51bV9jb25mc19sZWZ0GAMgASgNUgxudW1Db25mc0xlZnQ=');
@$core.Deprecated('Use channelOpenUpdateDescriptor instead')
const ChannelOpenUpdate$json = const {
  '1': 'ChannelOpenUpdate',
  '2': const [
    const {'1': 'channel_point', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'channelPoint'},
  ],
};

/// Descriptor for `ChannelOpenUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelOpenUpdateDescriptor = $convert.base64Decode('ChFDaGFubmVsT3BlblVwZGF0ZRI4Cg1jaGFubmVsX3BvaW50GAEgASgLMhMubG5ycGMuQ2hhbm5lbFBvaW50UgxjaGFubmVsUG9pbnQ=');
@$core.Deprecated('Use channelCloseUpdateDescriptor instead')
const ChannelCloseUpdate$json = const {
  '1': 'ChannelCloseUpdate',
  '2': const [
    const {'1': 'closing_txid', '3': 1, '4': 1, '5': 12, '10': 'closingTxid'},
    const {'1': 'success', '3': 2, '4': 1, '5': 8, '10': 'success'},
  ],
};

/// Descriptor for `ChannelCloseUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelCloseUpdateDescriptor = $convert.base64Decode('ChJDaGFubmVsQ2xvc2VVcGRhdGUSIQoMY2xvc2luZ190eGlkGAEgASgMUgtjbG9zaW5nVHhpZBIYCgdzdWNjZXNzGAIgASgIUgdzdWNjZXNz');
@$core.Deprecated('Use closeChannelRequestDescriptor instead')
const CloseChannelRequest$json = const {
  '1': 'CloseChannelRequest',
  '2': const [
    const {'1': 'channel_point', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'channelPoint'},
    const {'1': 'force', '3': 2, '4': 1, '5': 8, '10': 'force'},
    const {'1': 'target_conf', '3': 3, '4': 1, '5': 5, '10': 'targetConf'},
    const {'1': 'sat_per_byte', '3': 4, '4': 1, '5': 3, '10': 'satPerByte'},
    const {'1': 'delivery_address', '3': 5, '4': 1, '5': 9, '10': 'deliveryAddress'},
  ],
};

/// Descriptor for `CloseChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeChannelRequestDescriptor = $convert.base64Decode('ChNDbG9zZUNoYW5uZWxSZXF1ZXN0EjgKDWNoYW5uZWxfcG9pbnQYASABKAsyEy5sbnJwYy5DaGFubmVsUG9pbnRSDGNoYW5uZWxQb2ludBIUCgVmb3JjZRgCIAEoCFIFZm9yY2USHwoLdGFyZ2V0X2NvbmYYAyABKAVSCnRhcmdldENvbmYSIAoMc2F0X3Blcl9ieXRlGAQgASgDUgpzYXRQZXJCeXRlEikKEGRlbGl2ZXJ5X2FkZHJlc3MYBSABKAlSD2RlbGl2ZXJ5QWRkcmVzcw==');
@$core.Deprecated('Use closeStatusUpdateDescriptor instead')
const CloseStatusUpdate$json = const {
  '1': 'CloseStatusUpdate',
  '2': const [
    const {'1': 'close_pending', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.PendingUpdate', '9': 0, '10': 'closePending'},
    const {'1': 'chan_close', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.ChannelCloseUpdate', '9': 0, '10': 'chanClose'},
  ],
  '8': const [
    const {'1': 'update'},
  ],
};

/// Descriptor for `CloseStatusUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closeStatusUpdateDescriptor = $convert.base64Decode('ChFDbG9zZVN0YXR1c1VwZGF0ZRI7Cg1jbG9zZV9wZW5kaW5nGAEgASgLMhQubG5ycGMuUGVuZGluZ1VwZGF0ZUgAUgxjbG9zZVBlbmRpbmcSOgoKY2hhbl9jbG9zZRgDIAEoCzIZLmxucnBjLkNoYW5uZWxDbG9zZVVwZGF0ZUgAUgljaGFuQ2xvc2VCCAoGdXBkYXRl');
@$core.Deprecated('Use pendingUpdateDescriptor instead')
const PendingUpdate$json = const {
  '1': 'PendingUpdate',
  '2': const [
    const {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    const {'1': 'output_index', '3': 2, '4': 1, '5': 13, '10': 'outputIndex'},
  ],
};

/// Descriptor for `PendingUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingUpdateDescriptor = $convert.base64Decode('Cg1QZW5kaW5nVXBkYXRlEhIKBHR4aWQYASABKAxSBHR4aWQSIQoMb3V0cHV0X2luZGV4GAIgASgNUgtvdXRwdXRJbmRleA==');
@$core.Deprecated('Use readyForPsbtFundingDescriptor instead')
const ReadyForPsbtFunding$json = const {
  '1': 'ReadyForPsbtFunding',
  '2': const [
    const {'1': 'funding_address', '3': 1, '4': 1, '5': 9, '10': 'fundingAddress'},
    const {'1': 'funding_amount', '3': 2, '4': 1, '5': 3, '10': 'fundingAmount'},
    const {'1': 'psbt', '3': 3, '4': 1, '5': 12, '10': 'psbt'},
  ],
};

/// Descriptor for `ReadyForPsbtFunding`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List readyForPsbtFundingDescriptor = $convert.base64Decode('ChNSZWFkeUZvclBzYnRGdW5kaW5nEicKD2Z1bmRpbmdfYWRkcmVzcxgBIAEoCVIOZnVuZGluZ0FkZHJlc3MSJQoOZnVuZGluZ19hbW91bnQYAiABKANSDWZ1bmRpbmdBbW91bnQSEgoEcHNidBgDIAEoDFIEcHNidA==');
@$core.Deprecated('Use openChannelRequestDescriptor instead')
const OpenChannelRequest$json = const {
  '1': 'OpenChannelRequest',
  '2': const [
    const {'1': 'node_pubkey', '3': 2, '4': 1, '5': 12, '10': 'nodePubkey'},
    const {
      '1': 'node_pubkey_string',
      '3': 3,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'nodePubkeyString',
    },
    const {'1': 'local_funding_amount', '3': 4, '4': 1, '5': 3, '10': 'localFundingAmount'},
    const {'1': 'push_sat', '3': 5, '4': 1, '5': 3, '10': 'pushSat'},
    const {'1': 'target_conf', '3': 6, '4': 1, '5': 5, '10': 'targetConf'},
    const {'1': 'sat_per_byte', '3': 7, '4': 1, '5': 3, '10': 'satPerByte'},
    const {'1': 'private', '3': 8, '4': 1, '5': 8, '10': 'private'},
    const {'1': 'min_htlc_msat', '3': 9, '4': 1, '5': 3, '10': 'minHtlcMsat'},
    const {'1': 'remote_csv_delay', '3': 10, '4': 1, '5': 13, '10': 'remoteCsvDelay'},
    const {'1': 'min_confs', '3': 11, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'spend_unconfirmed', '3': 12, '4': 1, '5': 8, '10': 'spendUnconfirmed'},
    const {'1': 'close_address', '3': 13, '4': 1, '5': 9, '10': 'closeAddress'},
    const {'1': 'funding_shim', '3': 14, '4': 1, '5': 11, '6': '.lnrpc.FundingShim', '10': 'fundingShim'},
    const {'1': 'remote_max_value_in_flight_msat', '3': 15, '4': 1, '5': 4, '10': 'remoteMaxValueInFlightMsat'},
    const {'1': 'remote_max_htlcs', '3': 16, '4': 1, '5': 13, '10': 'remoteMaxHtlcs'},
    const {'1': 'max_local_csv', '3': 17, '4': 1, '5': 13, '10': 'maxLocalCsv'},
  ],
};

/// Descriptor for `OpenChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openChannelRequestDescriptor = $convert.base64Decode('ChJPcGVuQ2hhbm5lbFJlcXVlc3QSHwoLbm9kZV9wdWJrZXkYAiABKAxSCm5vZGVQdWJrZXkSMAoSbm9kZV9wdWJrZXlfc3RyaW5nGAMgASgJQgIYAVIQbm9kZVB1YmtleVN0cmluZxIwChRsb2NhbF9mdW5kaW5nX2Ftb3VudBgEIAEoA1ISbG9jYWxGdW5kaW5nQW1vdW50EhkKCHB1c2hfc2F0GAUgASgDUgdwdXNoU2F0Eh8KC3RhcmdldF9jb25mGAYgASgFUgp0YXJnZXRDb25mEiAKDHNhdF9wZXJfYnl0ZRgHIAEoA1IKc2F0UGVyQnl0ZRIYCgdwcml2YXRlGAggASgIUgdwcml2YXRlEiIKDW1pbl9odGxjX21zYXQYCSABKANSC21pbkh0bGNNc2F0EigKEHJlbW90ZV9jc3ZfZGVsYXkYCiABKA1SDnJlbW90ZUNzdkRlbGF5EhsKCW1pbl9jb25mcxgLIAEoBVIIbWluQ29uZnMSKwoRc3BlbmRfdW5jb25maXJtZWQYDCABKAhSEHNwZW5kVW5jb25maXJtZWQSIwoNY2xvc2VfYWRkcmVzcxgNIAEoCVIMY2xvc2VBZGRyZXNzEjUKDGZ1bmRpbmdfc2hpbRgOIAEoCzISLmxucnBjLkZ1bmRpbmdTaGltUgtmdW5kaW5nU2hpbRJDCh9yZW1vdGVfbWF4X3ZhbHVlX2luX2ZsaWdodF9tc2F0GA8gASgEUhpyZW1vdGVNYXhWYWx1ZUluRmxpZ2h0TXNhdBIoChByZW1vdGVfbWF4X2h0bGNzGBAgASgNUg5yZW1vdGVNYXhIdGxjcxIiCg1tYXhfbG9jYWxfY3N2GBEgASgNUgttYXhMb2NhbENzdg==');
@$core.Deprecated('Use openStatusUpdateDescriptor instead')
const OpenStatusUpdate$json = const {
  '1': 'OpenStatusUpdate',
  '2': const [
    const {'1': 'chan_pending', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.PendingUpdate', '9': 0, '10': 'chanPending'},
    const {'1': 'chan_open', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.ChannelOpenUpdate', '9': 0, '10': 'chanOpen'},
    const {'1': 'psbt_fund', '3': 5, '4': 1, '5': 11, '6': '.lnrpc.ReadyForPsbtFunding', '9': 0, '10': 'psbtFund'},
    const {'1': 'pending_chan_id', '3': 4, '4': 1, '5': 12, '10': 'pendingChanId'},
  ],
  '8': const [
    const {'1': 'update'},
  ],
};

/// Descriptor for `OpenStatusUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List openStatusUpdateDescriptor = $convert.base64Decode('ChBPcGVuU3RhdHVzVXBkYXRlEjkKDGNoYW5fcGVuZGluZxgBIAEoCzIULmxucnBjLlBlbmRpbmdVcGRhdGVIAFILY2hhblBlbmRpbmcSNwoJY2hhbl9vcGVuGAMgASgLMhgubG5ycGMuQ2hhbm5lbE9wZW5VcGRhdGVIAFIIY2hhbk9wZW4SOQoJcHNidF9mdW5kGAUgASgLMhoubG5ycGMuUmVhZHlGb3JQc2J0RnVuZGluZ0gAUghwc2J0RnVuZBImCg9wZW5kaW5nX2NoYW5faWQYBCABKAxSDXBlbmRpbmdDaGFuSWRCCAoGdXBkYXRl');
@$core.Deprecated('Use keyLocatorDescriptor instead')
const KeyLocator$json = const {
  '1': 'KeyLocator',
  '2': const [
    const {'1': 'key_family', '3': 1, '4': 1, '5': 5, '10': 'keyFamily'},
    const {'1': 'key_index', '3': 2, '4': 1, '5': 5, '10': 'keyIndex'},
  ],
};

/// Descriptor for `KeyLocator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyLocatorDescriptor = $convert.base64Decode('CgpLZXlMb2NhdG9yEh0KCmtleV9mYW1pbHkYASABKAVSCWtleUZhbWlseRIbCglrZXlfaW5kZXgYAiABKAVSCGtleUluZGV4');
@$core.Deprecated('Use keyDescriptorDescriptor instead')
const KeyDescriptor$json = const {
  '1': 'KeyDescriptor',
  '2': const [
    const {'1': 'raw_key_bytes', '3': 1, '4': 1, '5': 12, '10': 'rawKeyBytes'},
    const {'1': 'key_loc', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.KeyLocator', '10': 'keyLoc'},
  ],
};

/// Descriptor for `KeyDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyDescriptorDescriptor = $convert.base64Decode('Cg1LZXlEZXNjcmlwdG9yEiIKDXJhd19rZXlfYnl0ZXMYASABKAxSC3Jhd0tleUJ5dGVzEioKB2tleV9sb2MYAiABKAsyES5sbnJwYy5LZXlMb2NhdG9yUgZrZXlMb2M=');
@$core.Deprecated('Use chanPointShimDescriptor instead')
const ChanPointShim$json = const {
  '1': 'ChanPointShim',
  '2': const [
    const {'1': 'amt', '3': 1, '4': 1, '5': 3, '10': 'amt'},
    const {'1': 'chan_point', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'chanPoint'},
    const {'1': 'local_key', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.KeyDescriptor', '10': 'localKey'},
    const {'1': 'remote_key', '3': 4, '4': 1, '5': 12, '10': 'remoteKey'},
    const {'1': 'pending_chan_id', '3': 5, '4': 1, '5': 12, '10': 'pendingChanId'},
    const {'1': 'thaw_height', '3': 6, '4': 1, '5': 13, '10': 'thawHeight'},
  ],
};

/// Descriptor for `ChanPointShim`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chanPointShimDescriptor = $convert.base64Decode('Cg1DaGFuUG9pbnRTaGltEhAKA2FtdBgBIAEoA1IDYW10EjIKCmNoYW5fcG9pbnQYAiABKAsyEy5sbnJwYy5DaGFubmVsUG9pbnRSCWNoYW5Qb2ludBIxCglsb2NhbF9rZXkYAyABKAsyFC5sbnJwYy5LZXlEZXNjcmlwdG9yUghsb2NhbEtleRIdCgpyZW1vdGVfa2V5GAQgASgMUglyZW1vdGVLZXkSJgoPcGVuZGluZ19jaGFuX2lkGAUgASgMUg1wZW5kaW5nQ2hhbklkEh8KC3RoYXdfaGVpZ2h0GAYgASgNUgp0aGF3SGVpZ2h0');
@$core.Deprecated('Use psbtShimDescriptor instead')
const PsbtShim$json = const {
  '1': 'PsbtShim',
  '2': const [
    const {'1': 'pending_chan_id', '3': 1, '4': 1, '5': 12, '10': 'pendingChanId'},
    const {'1': 'base_psbt', '3': 2, '4': 1, '5': 12, '10': 'basePsbt'},
    const {'1': 'no_publish', '3': 3, '4': 1, '5': 8, '10': 'noPublish'},
  ],
};

/// Descriptor for `PsbtShim`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List psbtShimDescriptor = $convert.base64Decode('CghQc2J0U2hpbRImCg9wZW5kaW5nX2NoYW5faWQYASABKAxSDXBlbmRpbmdDaGFuSWQSGwoJYmFzZV9wc2J0GAIgASgMUghiYXNlUHNidBIdCgpub19wdWJsaXNoGAMgASgIUglub1B1Ymxpc2g=');
@$core.Deprecated('Use fundingShimDescriptor instead')
const FundingShim$json = const {
  '1': 'FundingShim',
  '2': const [
    const {'1': 'chan_point_shim', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChanPointShim', '9': 0, '10': 'chanPointShim'},
    const {'1': 'psbt_shim', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.PsbtShim', '9': 0, '10': 'psbtShim'},
  ],
  '8': const [
    const {'1': 'shim'},
  ],
};

/// Descriptor for `FundingShim`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundingShimDescriptor = $convert.base64Decode('CgtGdW5kaW5nU2hpbRI+Cg9jaGFuX3BvaW50X3NoaW0YASABKAsyFC5sbnJwYy5DaGFuUG9pbnRTaGltSABSDWNoYW5Qb2ludFNoaW0SLgoJcHNidF9zaGltGAIgASgLMg8ubG5ycGMuUHNidFNoaW1IAFIIcHNidFNoaW1CBgoEc2hpbQ==');
@$core.Deprecated('Use fundingShimCancelDescriptor instead')
const FundingShimCancel$json = const {
  '1': 'FundingShimCancel',
  '2': const [
    const {'1': 'pending_chan_id', '3': 1, '4': 1, '5': 12, '10': 'pendingChanId'},
  ],
};

/// Descriptor for `FundingShimCancel`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundingShimCancelDescriptor = $convert.base64Decode('ChFGdW5kaW5nU2hpbUNhbmNlbBImCg9wZW5kaW5nX2NoYW5faWQYASABKAxSDXBlbmRpbmdDaGFuSWQ=');
@$core.Deprecated('Use fundingPsbtVerifyDescriptor instead')
const FundingPsbtVerify$json = const {
  '1': 'FundingPsbtVerify',
  '2': const [
    const {'1': 'funded_psbt', '3': 1, '4': 1, '5': 12, '10': 'fundedPsbt'},
    const {'1': 'pending_chan_id', '3': 2, '4': 1, '5': 12, '10': 'pendingChanId'},
  ],
};

/// Descriptor for `FundingPsbtVerify`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundingPsbtVerifyDescriptor = $convert.base64Decode('ChFGdW5kaW5nUHNidFZlcmlmeRIfCgtmdW5kZWRfcHNidBgBIAEoDFIKZnVuZGVkUHNidBImCg9wZW5kaW5nX2NoYW5faWQYAiABKAxSDXBlbmRpbmdDaGFuSWQ=');
@$core.Deprecated('Use fundingPsbtFinalizeDescriptor instead')
const FundingPsbtFinalize$json = const {
  '1': 'FundingPsbtFinalize',
  '2': const [
    const {'1': 'signed_psbt', '3': 1, '4': 1, '5': 12, '10': 'signedPsbt'},
    const {'1': 'pending_chan_id', '3': 2, '4': 1, '5': 12, '10': 'pendingChanId'},
    const {'1': 'final_raw_tx', '3': 3, '4': 1, '5': 12, '10': 'finalRawTx'},
  ],
};

/// Descriptor for `FundingPsbtFinalize`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundingPsbtFinalizeDescriptor = $convert.base64Decode('ChNGdW5kaW5nUHNidEZpbmFsaXplEh8KC3NpZ25lZF9wc2J0GAEgASgMUgpzaWduZWRQc2J0EiYKD3BlbmRpbmdfY2hhbl9pZBgCIAEoDFINcGVuZGluZ0NoYW5JZBIgCgxmaW5hbF9yYXdfdHgYAyABKAxSCmZpbmFsUmF3VHg=');
@$core.Deprecated('Use fundingTransitionMsgDescriptor instead')
const FundingTransitionMsg$json = const {
  '1': 'FundingTransitionMsg',
  '2': const [
    const {'1': 'shim_register', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.FundingShim', '9': 0, '10': 'shimRegister'},
    const {'1': 'shim_cancel', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.FundingShimCancel', '9': 0, '10': 'shimCancel'},
    const {'1': 'psbt_verify', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.FundingPsbtVerify', '9': 0, '10': 'psbtVerify'},
    const {'1': 'psbt_finalize', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.FundingPsbtFinalize', '9': 0, '10': 'psbtFinalize'},
  ],
  '8': const [
    const {'1': 'trigger'},
  ],
};

/// Descriptor for `FundingTransitionMsg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundingTransitionMsgDescriptor = $convert.base64Decode('ChRGdW5kaW5nVHJhbnNpdGlvbk1zZxI5Cg1zaGltX3JlZ2lzdGVyGAEgASgLMhIubG5ycGMuRnVuZGluZ1NoaW1IAFIMc2hpbVJlZ2lzdGVyEjsKC3NoaW1fY2FuY2VsGAIgASgLMhgubG5ycGMuRnVuZGluZ1NoaW1DYW5jZWxIAFIKc2hpbUNhbmNlbBI7Cgtwc2J0X3ZlcmlmeRgDIAEoCzIYLmxucnBjLkZ1bmRpbmdQc2J0VmVyaWZ5SABSCnBzYnRWZXJpZnkSQQoNcHNidF9maW5hbGl6ZRgEIAEoCzIaLmxucnBjLkZ1bmRpbmdQc2J0RmluYWxpemVIAFIMcHNidEZpbmFsaXplQgkKB3RyaWdnZXI=');
@$core.Deprecated('Use fundingStateStepRespDescriptor instead')
const FundingStateStepResp$json = const {
  '1': 'FundingStateStepResp',
};

/// Descriptor for `FundingStateStepResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundingStateStepRespDescriptor = $convert.base64Decode('ChRGdW5kaW5nU3RhdGVTdGVwUmVzcA==');
@$core.Deprecated('Use pendingHTLCDescriptor instead')
const PendingHTLC$json = const {
  '1': 'PendingHTLC',
  '2': const [
    const {'1': 'incoming', '3': 1, '4': 1, '5': 8, '10': 'incoming'},
    const {'1': 'amount', '3': 2, '4': 1, '5': 3, '10': 'amount'},
    const {'1': 'outpoint', '3': 3, '4': 1, '5': 9, '10': 'outpoint'},
    const {'1': 'maturity_height', '3': 4, '4': 1, '5': 13, '10': 'maturityHeight'},
    const {'1': 'blocks_til_maturity', '3': 5, '4': 1, '5': 5, '10': 'blocksTilMaturity'},
    const {'1': 'stage', '3': 6, '4': 1, '5': 13, '10': 'stage'},
  ],
};

/// Descriptor for `PendingHTLC`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingHTLCDescriptor = $convert.base64Decode('CgtQZW5kaW5nSFRMQxIaCghpbmNvbWluZxgBIAEoCFIIaW5jb21pbmcSFgoGYW1vdW50GAIgASgDUgZhbW91bnQSGgoIb3V0cG9pbnQYAyABKAlSCG91dHBvaW50EicKD21hdHVyaXR5X2hlaWdodBgEIAEoDVIObWF0dXJpdHlIZWlnaHQSLgoTYmxvY2tzX3RpbF9tYXR1cml0eRgFIAEoBVIRYmxvY2tzVGlsTWF0dXJpdHkSFAoFc3RhZ2UYBiABKA1SBXN0YWdl');
@$core.Deprecated('Use pendingChannelsRequestDescriptor instead')
const PendingChannelsRequest$json = const {
  '1': 'PendingChannelsRequest',
};

/// Descriptor for `PendingChannelsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingChannelsRequestDescriptor = $convert.base64Decode('ChZQZW5kaW5nQ2hhbm5lbHNSZXF1ZXN0');
@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse$json = const {
  '1': 'PendingChannelsResponse',
  '2': const [
    const {'1': 'total_limbo_balance', '3': 1, '4': 1, '5': 3, '10': 'totalLimboBalance'},
    const {'1': 'pending_open_channels', '3': 2, '4': 3, '5': 11, '6': '.lnrpc.PendingChannelsResponse.PendingOpenChannel', '10': 'pendingOpenChannels'},
    const {
      '1': 'pending_closing_channels',
      '3': 3,
      '4': 3,
      '5': 11,
      '6': '.lnrpc.PendingChannelsResponse.ClosedChannel',
      '8': const {'3': true},
      '10': 'pendingClosingChannels',
    },
    const {'1': 'pending_force_closing_channels', '3': 4, '4': 3, '5': 11, '6': '.lnrpc.PendingChannelsResponse.ForceClosedChannel', '10': 'pendingForceClosingChannels'},
    const {'1': 'waiting_close_channels', '3': 5, '4': 3, '5': 11, '6': '.lnrpc.PendingChannelsResponse.WaitingCloseChannel', '10': 'waitingCloseChannels'},
  ],
  '3': const [PendingChannelsResponse_PendingChannel$json, PendingChannelsResponse_PendingOpenChannel$json, PendingChannelsResponse_WaitingCloseChannel$json, PendingChannelsResponse_Commitments$json, PendingChannelsResponse_ClosedChannel$json, PendingChannelsResponse_ForceClosedChannel$json],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_PendingChannel$json = const {
  '1': 'PendingChannel',
  '2': const [
    const {'1': 'remote_node_pub', '3': 1, '4': 1, '5': 9, '10': 'remoteNodePub'},
    const {'1': 'channel_point', '3': 2, '4': 1, '5': 9, '10': 'channelPoint'},
    const {'1': 'capacity', '3': 3, '4': 1, '5': 3, '10': 'capacity'},
    const {'1': 'local_balance', '3': 4, '4': 1, '5': 3, '10': 'localBalance'},
    const {'1': 'remote_balance', '3': 5, '4': 1, '5': 3, '10': 'remoteBalance'},
    const {'1': 'local_chan_reserve_sat', '3': 6, '4': 1, '5': 3, '10': 'localChanReserveSat'},
    const {'1': 'remote_chan_reserve_sat', '3': 7, '4': 1, '5': 3, '10': 'remoteChanReserveSat'},
    const {'1': 'initiator', '3': 8, '4': 1, '5': 14, '6': '.lnrpc.Initiator', '10': 'initiator'},
    const {'1': 'commitment_type', '3': 9, '4': 1, '5': 14, '6': '.lnrpc.CommitmentType', '10': 'commitmentType'},
  ],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_PendingOpenChannel$json = const {
  '1': 'PendingOpenChannel',
  '2': const [
    const {'1': 'channel', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.PendingChannelsResponse.PendingChannel', '10': 'channel'},
    const {'1': 'confirmation_height', '3': 2, '4': 1, '5': 13, '10': 'confirmationHeight'},
    const {'1': 'commit_fee', '3': 4, '4': 1, '5': 3, '10': 'commitFee'},
    const {'1': 'commit_weight', '3': 5, '4': 1, '5': 3, '10': 'commitWeight'},
    const {'1': 'fee_per_kw', '3': 6, '4': 1, '5': 3, '10': 'feePerKw'},
  ],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_WaitingCloseChannel$json = const {
  '1': 'WaitingCloseChannel',
  '2': const [
    const {'1': 'channel', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.PendingChannelsResponse.PendingChannel', '10': 'channel'},
    const {'1': 'limbo_balance', '3': 2, '4': 1, '5': 3, '10': 'limboBalance'},
    const {'1': 'commitments', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.PendingChannelsResponse.Commitments', '10': 'commitments'},
  ],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_Commitments$json = const {
  '1': 'Commitments',
  '2': const [
    const {'1': 'local_txid', '3': 1, '4': 1, '5': 9, '10': 'localTxid'},
    const {'1': 'remote_txid', '3': 2, '4': 1, '5': 9, '10': 'remoteTxid'},
    const {'1': 'remote_pending_txid', '3': 3, '4': 1, '5': 9, '10': 'remotePendingTxid'},
    const {'1': 'local_commit_fee_sat', '3': 4, '4': 1, '5': 4, '10': 'localCommitFeeSat'},
    const {'1': 'remote_commit_fee_sat', '3': 5, '4': 1, '5': 4, '10': 'remoteCommitFeeSat'},
    const {'1': 'remote_pending_commit_fee_sat', '3': 6, '4': 1, '5': 4, '10': 'remotePendingCommitFeeSat'},
  ],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_ClosedChannel$json = const {
  '1': 'ClosedChannel',
  '2': const [
    const {'1': 'channel', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.PendingChannelsResponse.PendingChannel', '10': 'channel'},
    const {'1': 'closing_txid', '3': 2, '4': 1, '5': 9, '10': 'closingTxid'},
  ],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_ForceClosedChannel$json = const {
  '1': 'ForceClosedChannel',
  '2': const [
    const {'1': 'channel', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.PendingChannelsResponse.PendingChannel', '10': 'channel'},
    const {'1': 'closing_txid', '3': 2, '4': 1, '5': 9, '10': 'closingTxid'},
    const {'1': 'limbo_balance', '3': 3, '4': 1, '5': 3, '10': 'limboBalance'},
    const {'1': 'maturity_height', '3': 4, '4': 1, '5': 13, '10': 'maturityHeight'},
    const {'1': 'blocks_til_maturity', '3': 5, '4': 1, '5': 5, '10': 'blocksTilMaturity'},
    const {'1': 'recovered_balance', '3': 6, '4': 1, '5': 3, '10': 'recoveredBalance'},
    const {'1': 'pending_htlcs', '3': 8, '4': 3, '5': 11, '6': '.lnrpc.PendingHTLC', '10': 'pendingHtlcs'},
    const {'1': 'anchor', '3': 9, '4': 1, '5': 14, '6': '.lnrpc.PendingChannelsResponse.ForceClosedChannel.AnchorState', '10': 'anchor'},
  ],
  '4': const [PendingChannelsResponse_ForceClosedChannel_AnchorState$json],
};

@$core.Deprecated('Use pendingChannelsResponseDescriptor instead')
const PendingChannelsResponse_ForceClosedChannel_AnchorState$json = const {
  '1': 'AnchorState',
  '2': const [
    const {'1': 'LIMBO', '2': 0},
    const {'1': 'RECOVERED', '2': 1},
    const {'1': 'LOST', '2': 2},
  ],
};

/// Descriptor for `PendingChannelsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingChannelsResponseDescriptor = $convert.base64Decode('ChdQZW5kaW5nQ2hhbm5lbHNSZXNwb25zZRIuChN0b3RhbF9saW1ib19iYWxhbmNlGAEgASgDUhF0b3RhbExpbWJvQmFsYW5jZRJlChVwZW5kaW5nX29wZW5fY2hhbm5lbHMYAiADKAsyMS5sbnJwYy5QZW5kaW5nQ2hhbm5lbHNSZXNwb25zZS5QZW5kaW5nT3BlbkNoYW5uZWxSE3BlbmRpbmdPcGVuQ2hhbm5lbHMSagoYcGVuZGluZ19jbG9zaW5nX2NoYW5uZWxzGAMgAygLMiwubG5ycGMuUGVuZGluZ0NoYW5uZWxzUmVzcG9uc2UuQ2xvc2VkQ2hhbm5lbEICGAFSFnBlbmRpbmdDbG9zaW5nQ2hhbm5lbHMSdgoecGVuZGluZ19mb3JjZV9jbG9zaW5nX2NoYW5uZWxzGAQgAygLMjEubG5ycGMuUGVuZGluZ0NoYW5uZWxzUmVzcG9uc2UuRm9yY2VDbG9zZWRDaGFubmVsUhtwZW5kaW5nRm9yY2VDbG9zaW5nQ2hhbm5lbHMSaAoWd2FpdGluZ19jbG9zZV9jaGFubmVscxgFIAMoCzIyLmxucnBjLlBlbmRpbmdDaGFubmVsc1Jlc3BvbnNlLldhaXRpbmdDbG9zZUNoYW5uZWxSFHdhaXRpbmdDbG9zZUNoYW5uZWxzGqEDCg5QZW5kaW5nQ2hhbm5lbBImCg9yZW1vdGVfbm9kZV9wdWIYASABKAlSDXJlbW90ZU5vZGVQdWISIwoNY2hhbm5lbF9wb2ludBgCIAEoCVIMY2hhbm5lbFBvaW50EhoKCGNhcGFjaXR5GAMgASgDUghjYXBhY2l0eRIjCg1sb2NhbF9iYWxhbmNlGAQgASgDUgxsb2NhbEJhbGFuY2USJQoOcmVtb3RlX2JhbGFuY2UYBSABKANSDXJlbW90ZUJhbGFuY2USMwoWbG9jYWxfY2hhbl9yZXNlcnZlX3NhdBgGIAEoA1ITbG9jYWxDaGFuUmVzZXJ2ZVNhdBI1ChdyZW1vdGVfY2hhbl9yZXNlcnZlX3NhdBgHIAEoA1IUcmVtb3RlQ2hhblJlc2VydmVTYXQSLgoJaW5pdGlhdG9yGAggASgOMhAubG5ycGMuSW5pdGlhdG9yUglpbml0aWF0b3ISPgoPY29tbWl0bWVudF90eXBlGAkgASgOMhUubG5ycGMuQ29tbWl0bWVudFR5cGVSDmNvbW1pdG1lbnRUeXBlGvABChJQZW5kaW5nT3BlbkNoYW5uZWwSRwoHY2hhbm5lbBgBIAEoCzItLmxucnBjLlBlbmRpbmdDaGFubmVsc1Jlc3BvbnNlLlBlbmRpbmdDaGFubmVsUgdjaGFubmVsEi8KE2NvbmZpcm1hdGlvbl9oZWlnaHQYAiABKA1SEmNvbmZpcm1hdGlvbkhlaWdodBIdCgpjb21taXRfZmVlGAQgASgDUgljb21taXRGZWUSIwoNY29tbWl0X3dlaWdodBgFIAEoA1IMY29tbWl0V2VpZ2h0EhwKCmZlZV9wZXJfa3cYBiABKANSCGZlZVBlckt3GtEBChNXYWl0aW5nQ2xvc2VDaGFubmVsEkcKB2NoYW5uZWwYASABKAsyLS5sbnJwYy5QZW5kaW5nQ2hhbm5lbHNSZXNwb25zZS5QZW5kaW5nQ2hhbm5lbFIHY2hhbm5lbBIjCg1saW1ib19iYWxhbmNlGAIgASgDUgxsaW1ib0JhbGFuY2USTAoLY29tbWl0bWVudHMYAyABKAsyKi5sbnJwYy5QZW5kaW5nQ2hhbm5lbHNSZXNwb25zZS5Db21taXRtZW50c1ILY29tbWl0bWVudHMaowIKC0NvbW1pdG1lbnRzEh0KCmxvY2FsX3R4aWQYASABKAlSCWxvY2FsVHhpZBIfCgtyZW1vdGVfdHhpZBgCIAEoCVIKcmVtb3RlVHhpZBIuChNyZW1vdGVfcGVuZGluZ190eGlkGAMgASgJUhFyZW1vdGVQZW5kaW5nVHhpZBIvChRsb2NhbF9jb21taXRfZmVlX3NhdBgEIAEoBFIRbG9jYWxDb21taXRGZWVTYXQSMQoVcmVtb3RlX2NvbW1pdF9mZWVfc2F0GAUgASgEUhJyZW1vdGVDb21taXRGZWVTYXQSQAodcmVtb3RlX3BlbmRpbmdfY29tbWl0X2ZlZV9zYXQYBiABKARSGXJlbW90ZVBlbmRpbmdDb21taXRGZWVTYXQaewoNQ2xvc2VkQ2hhbm5lbBJHCgdjaGFubmVsGAEgASgLMi0ubG5ycGMuUGVuZGluZ0NoYW5uZWxzUmVzcG9uc2UuUGVuZGluZ0NoYW5uZWxSB2NoYW5uZWwSIQoMY2xvc2luZ190eGlkGAIgASgJUgtjbG9zaW5nVHhpZBruAwoSRm9yY2VDbG9zZWRDaGFubmVsEkcKB2NoYW5uZWwYASABKAsyLS5sbnJwYy5QZW5kaW5nQ2hhbm5lbHNSZXNwb25zZS5QZW5kaW5nQ2hhbm5lbFIHY2hhbm5lbBIhCgxjbG9zaW5nX3R4aWQYAiABKAlSC2Nsb3NpbmdUeGlkEiMKDWxpbWJvX2JhbGFuY2UYAyABKANSDGxpbWJvQmFsYW5jZRInCg9tYXR1cml0eV9oZWlnaHQYBCABKA1SDm1hdHVyaXR5SGVpZ2h0Ei4KE2Jsb2Nrc190aWxfbWF0dXJpdHkYBSABKAVSEWJsb2Nrc1RpbE1hdHVyaXR5EisKEXJlY292ZXJlZF9iYWxhbmNlGAYgASgDUhByZWNvdmVyZWRCYWxhbmNlEjcKDXBlbmRpbmdfaHRsY3MYCCADKAsyEi5sbnJwYy5QZW5kaW5nSFRMQ1IMcGVuZGluZ0h0bGNzElUKBmFuY2hvchgJIAEoDjI9LmxucnBjLlBlbmRpbmdDaGFubmVsc1Jlc3BvbnNlLkZvcmNlQ2xvc2VkQ2hhbm5lbC5BbmNob3JTdGF0ZVIGYW5jaG9yIjEKC0FuY2hvclN0YXRlEgkKBUxJTUJPEAASDQoJUkVDT1ZFUkVEEAESCAoETE9TVBAC');
@$core.Deprecated('Use channelEventSubscriptionDescriptor instead')
const ChannelEventSubscription$json = const {
  '1': 'ChannelEventSubscription',
};

/// Descriptor for `ChannelEventSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelEventSubscriptionDescriptor = $convert.base64Decode('ChhDaGFubmVsRXZlbnRTdWJzY3JpcHRpb24=');
@$core.Deprecated('Use channelEventUpdateDescriptor instead')
const ChannelEventUpdate$json = const {
  '1': 'ChannelEventUpdate',
  '2': const [
    const {'1': 'open_channel', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.Channel', '9': 0, '10': 'openChannel'},
    const {'1': 'closed_channel', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.ChannelCloseSummary', '9': 0, '10': 'closedChannel'},
    const {'1': 'active_channel', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '9': 0, '10': 'activeChannel'},
    const {'1': 'inactive_channel', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '9': 0, '10': 'inactiveChannel'},
    const {'1': 'pending_open_channel', '3': 6, '4': 1, '5': 11, '6': '.lnrpc.PendingUpdate', '9': 0, '10': 'pendingOpenChannel'},
    const {'1': 'type', '3': 5, '4': 1, '5': 14, '6': '.lnrpc.ChannelEventUpdate.UpdateType', '10': 'type'},
  ],
  '4': const [ChannelEventUpdate_UpdateType$json],
  '8': const [
    const {'1': 'channel'},
  ],
};

@$core.Deprecated('Use channelEventUpdateDescriptor instead')
const ChannelEventUpdate_UpdateType$json = const {
  '1': 'UpdateType',
  '2': const [
    const {'1': 'OPEN_CHANNEL', '2': 0},
    const {'1': 'CLOSED_CHANNEL', '2': 1},
    const {'1': 'ACTIVE_CHANNEL', '2': 2},
    const {'1': 'INACTIVE_CHANNEL', '2': 3},
    const {'1': 'PENDING_OPEN_CHANNEL', '2': 4},
  ],
};

/// Descriptor for `ChannelEventUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelEventUpdateDescriptor = $convert.base64Decode('ChJDaGFubmVsRXZlbnRVcGRhdGUSMwoMb3Blbl9jaGFubmVsGAEgASgLMg4ubG5ycGMuQ2hhbm5lbEgAUgtvcGVuQ2hhbm5lbBJDCg5jbG9zZWRfY2hhbm5lbBgCIAEoCzIaLmxucnBjLkNoYW5uZWxDbG9zZVN1bW1hcnlIAFINY2xvc2VkQ2hhbm5lbBI8Cg5hY3RpdmVfY2hhbm5lbBgDIAEoCzITLmxucnBjLkNoYW5uZWxQb2ludEgAUg1hY3RpdmVDaGFubmVsEkAKEGluYWN0aXZlX2NoYW5uZWwYBCABKAsyEy5sbnJwYy5DaGFubmVsUG9pbnRIAFIPaW5hY3RpdmVDaGFubmVsEkgKFHBlbmRpbmdfb3Blbl9jaGFubmVsGAYgASgLMhQubG5ycGMuUGVuZGluZ1VwZGF0ZUgAUhJwZW5kaW5nT3BlbkNoYW5uZWwSOAoEdHlwZRgFIAEoDjIkLmxucnBjLkNoYW5uZWxFdmVudFVwZGF0ZS5VcGRhdGVUeXBlUgR0eXBlInYKClVwZGF0ZVR5cGUSEAoMT1BFTl9DSEFOTkVMEAASEgoOQ0xPU0VEX0NIQU5ORUwQARISCg5BQ1RJVkVfQ0hBTk5FTBACEhQKEElOQUNUSVZFX0NIQU5ORUwQAxIYChRQRU5ESU5HX09QRU5fQ0hBTk5FTBAEQgkKB2NoYW5uZWw=');
@$core.Deprecated('Use walletBalanceRequestDescriptor instead')
const WalletBalanceRequest$json = const {
  '1': 'WalletBalanceRequest',
};

/// Descriptor for `WalletBalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletBalanceRequestDescriptor = $convert.base64Decode('ChRXYWxsZXRCYWxhbmNlUmVxdWVzdA==');
@$core.Deprecated('Use walletBalanceResponseDescriptor instead')
const WalletBalanceResponse$json = const {
  '1': 'WalletBalanceResponse',
  '2': const [
    const {'1': 'total_balance', '3': 1, '4': 1, '5': 3, '10': 'totalBalance'},
    const {'1': 'confirmed_balance', '3': 2, '4': 1, '5': 3, '10': 'confirmedBalance'},
    const {'1': 'unconfirmed_balance', '3': 3, '4': 1, '5': 3, '10': 'unconfirmedBalance'},
  ],
};

/// Descriptor for `WalletBalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List walletBalanceResponseDescriptor = $convert.base64Decode('ChVXYWxsZXRCYWxhbmNlUmVzcG9uc2USIwoNdG90YWxfYmFsYW5jZRgBIAEoA1IMdG90YWxCYWxhbmNlEisKEWNvbmZpcm1lZF9iYWxhbmNlGAIgASgDUhBjb25maXJtZWRCYWxhbmNlEi8KE3VuY29uZmlybWVkX2JhbGFuY2UYAyABKANSEnVuY29uZmlybWVkQmFsYW5jZQ==');
@$core.Deprecated('Use amountDescriptor instead')
const Amount$json = const {
  '1': 'Amount',
  '2': const [
    const {'1': 'sat', '3': 1, '4': 1, '5': 4, '10': 'sat'},
    const {'1': 'msat', '3': 2, '4': 1, '5': 4, '10': 'msat'},
  ],
};

/// Descriptor for `Amount`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List amountDescriptor = $convert.base64Decode('CgZBbW91bnQSEAoDc2F0GAEgASgEUgNzYXQSEgoEbXNhdBgCIAEoBFIEbXNhdA==');
@$core.Deprecated('Use channelBalanceRequestDescriptor instead')
const ChannelBalanceRequest$json = const {
  '1': 'ChannelBalanceRequest',
};

/// Descriptor for `ChannelBalanceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelBalanceRequestDescriptor = $convert.base64Decode('ChVDaGFubmVsQmFsYW5jZVJlcXVlc3Q=');
@$core.Deprecated('Use channelBalanceResponseDescriptor instead')
const ChannelBalanceResponse$json = const {
  '1': 'ChannelBalanceResponse',
  '2': const [
    const {
      '1': 'balance',
      '3': 1,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'balance',
    },
    const {
      '1': 'pending_open_balance',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'pendingOpenBalance',
    },
    const {'1': 'local_balance', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.Amount', '10': 'localBalance'},
    const {'1': 'remote_balance', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.Amount', '10': 'remoteBalance'},
    const {'1': 'unsettled_local_balance', '3': 5, '4': 1, '5': 11, '6': '.lnrpc.Amount', '10': 'unsettledLocalBalance'},
    const {'1': 'unsettled_remote_balance', '3': 6, '4': 1, '5': 11, '6': '.lnrpc.Amount', '10': 'unsettledRemoteBalance'},
    const {'1': 'pending_open_local_balance', '3': 7, '4': 1, '5': 11, '6': '.lnrpc.Amount', '10': 'pendingOpenLocalBalance'},
    const {'1': 'pending_open_remote_balance', '3': 8, '4': 1, '5': 11, '6': '.lnrpc.Amount', '10': 'pendingOpenRemoteBalance'},
  ],
};

/// Descriptor for `ChannelBalanceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelBalanceResponseDescriptor = $convert.base64Decode('ChZDaGFubmVsQmFsYW5jZVJlc3BvbnNlEhwKB2JhbGFuY2UYASABKANCAhgBUgdiYWxhbmNlEjQKFHBlbmRpbmdfb3Blbl9iYWxhbmNlGAIgASgDQgIYAVIScGVuZGluZ09wZW5CYWxhbmNlEjIKDWxvY2FsX2JhbGFuY2UYAyABKAsyDS5sbnJwYy5BbW91bnRSDGxvY2FsQmFsYW5jZRI0Cg5yZW1vdGVfYmFsYW5jZRgEIAEoCzINLmxucnBjLkFtb3VudFINcmVtb3RlQmFsYW5jZRJFChd1bnNldHRsZWRfbG9jYWxfYmFsYW5jZRgFIAEoCzINLmxucnBjLkFtb3VudFIVdW5zZXR0bGVkTG9jYWxCYWxhbmNlEkcKGHVuc2V0dGxlZF9yZW1vdGVfYmFsYW5jZRgGIAEoCzINLmxucnBjLkFtb3VudFIWdW5zZXR0bGVkUmVtb3RlQmFsYW5jZRJKChpwZW5kaW5nX29wZW5fbG9jYWxfYmFsYW5jZRgHIAEoCzINLmxucnBjLkFtb3VudFIXcGVuZGluZ09wZW5Mb2NhbEJhbGFuY2USTAobcGVuZGluZ19vcGVuX3JlbW90ZV9iYWxhbmNlGAggASgLMg0ubG5ycGMuQW1vdW50UhhwZW5kaW5nT3BlblJlbW90ZUJhbGFuY2U=');
@$core.Deprecated('Use queryRoutesRequestDescriptor instead')
const QueryRoutesRequest$json = const {
  '1': 'QueryRoutesRequest',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'amt', '3': 2, '4': 1, '5': 3, '10': 'amt'},
    const {'1': 'amt_msat', '3': 12, '4': 1, '5': 3, '10': 'amtMsat'},
    const {'1': 'final_cltv_delta', '3': 4, '4': 1, '5': 5, '10': 'finalCltvDelta'},
    const {'1': 'fee_limit', '3': 5, '4': 1, '5': 11, '6': '.lnrpc.FeeLimit', '10': 'feeLimit'},
    const {'1': 'ignored_nodes', '3': 6, '4': 3, '5': 12, '10': 'ignoredNodes'},
    const {
      '1': 'ignored_edges',
      '3': 7,
      '4': 3,
      '5': 11,
      '6': '.lnrpc.EdgeLocator',
      '8': const {'3': true},
      '10': 'ignoredEdges',
    },
    const {'1': 'source_pub_key', '3': 8, '4': 1, '5': 9, '10': 'sourcePubKey'},
    const {'1': 'use_mission_control', '3': 9, '4': 1, '5': 8, '10': 'useMissionControl'},
    const {'1': 'ignored_pairs', '3': 10, '4': 3, '5': 11, '6': '.lnrpc.NodePair', '10': 'ignoredPairs'},
    const {'1': 'cltv_limit', '3': 11, '4': 1, '5': 13, '10': 'cltvLimit'},
    const {'1': 'dest_custom_records', '3': 13, '4': 3, '5': 11, '6': '.lnrpc.QueryRoutesRequest.DestCustomRecordsEntry', '10': 'destCustomRecords'},
    const {
      '1': 'outgoing_chan_id',
      '3': 14,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'outgoingChanId',
    },
    const {'1': 'last_hop_pubkey', '3': 15, '4': 1, '5': 12, '10': 'lastHopPubkey'},
    const {'1': 'route_hints', '3': 16, '4': 3, '5': 11, '6': '.lnrpc.RouteHint', '10': 'routeHints'},
    const {'1': 'dest_features', '3': 17, '4': 3, '5': 14, '6': '.lnrpc.FeatureBit', '10': 'destFeatures'},
  ],
  '3': const [QueryRoutesRequest_DestCustomRecordsEntry$json],
  '9': const [
    const {'1': 3, '2': 4},
  ],
};

@$core.Deprecated('Use queryRoutesRequestDescriptor instead')
const QueryRoutesRequest_DestCustomRecordsEntry$json = const {
  '1': 'DestCustomRecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `QueryRoutesRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryRoutesRequestDescriptor = $convert.base64Decode('ChJRdWVyeVJvdXRlc1JlcXVlc3QSFwoHcHViX2tleRgBIAEoCVIGcHViS2V5EhAKA2FtdBgCIAEoA1IDYW10EhkKCGFtdF9tc2F0GAwgASgDUgdhbXRNc2F0EigKEGZpbmFsX2NsdHZfZGVsdGEYBCABKAVSDmZpbmFsQ2x0dkRlbHRhEiwKCWZlZV9saW1pdBgFIAEoCzIPLmxucnBjLkZlZUxpbWl0UghmZWVMaW1pdBIjCg1pZ25vcmVkX25vZGVzGAYgAygMUgxpZ25vcmVkTm9kZXMSOwoNaWdub3JlZF9lZGdlcxgHIAMoCzISLmxucnBjLkVkZ2VMb2NhdG9yQgIYAVIMaWdub3JlZEVkZ2VzEiQKDnNvdXJjZV9wdWJfa2V5GAggASgJUgxzb3VyY2VQdWJLZXkSLgoTdXNlX21pc3Npb25fY29udHJvbBgJIAEoCFIRdXNlTWlzc2lvbkNvbnRyb2wSNAoNaWdub3JlZF9wYWlycxgKIAMoCzIPLmxucnBjLk5vZGVQYWlyUgxpZ25vcmVkUGFpcnMSHQoKY2x0dl9saW1pdBgLIAEoDVIJY2x0dkxpbWl0EmAKE2Rlc3RfY3VzdG9tX3JlY29yZHMYDSADKAsyMC5sbnJwYy5RdWVyeVJvdXRlc1JlcXVlc3QuRGVzdEN1c3RvbVJlY29yZHNFbnRyeVIRZGVzdEN1c3RvbVJlY29yZHMSLAoQb3V0Z29pbmdfY2hhbl9pZBgOIAEoBEICMAFSDm91dGdvaW5nQ2hhbklkEiYKD2xhc3RfaG9wX3B1YmtleRgPIAEoDFINbGFzdEhvcFB1YmtleRIxCgtyb3V0ZV9oaW50cxgQIAMoCzIQLmxucnBjLlJvdXRlSGludFIKcm91dGVIaW50cxI2Cg1kZXN0X2ZlYXR1cmVzGBEgAygOMhEubG5ycGMuRmVhdHVyZUJpdFIMZGVzdEZlYXR1cmVzGkQKFkRlc3RDdXN0b21SZWNvcmRzRW50cnkSEAoDa2V5GAEgASgEUgNrZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVlOgI4AUoECAMQBA==');
@$core.Deprecated('Use nodePairDescriptor instead')
const NodePair$json = const {
  '1': 'NodePair',
  '2': const [
    const {'1': 'from', '3': 1, '4': 1, '5': 12, '10': 'from'},
    const {'1': 'to', '3': 2, '4': 1, '5': 12, '10': 'to'},
  ],
};

/// Descriptor for `NodePair`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodePairDescriptor = $convert.base64Decode('CghOb2RlUGFpchISCgRmcm9tGAEgASgMUgRmcm9tEg4KAnRvGAIgASgMUgJ0bw==');
@$core.Deprecated('Use edgeLocatorDescriptor instead')
const EdgeLocator$json = const {
  '1': 'EdgeLocator',
  '2': const [
    const {
      '1': 'channel_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'channelId',
    },
    const {'1': 'direction_reverse', '3': 2, '4': 1, '5': 8, '10': 'directionReverse'},
  ],
};

/// Descriptor for `EdgeLocator`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List edgeLocatorDescriptor = $convert.base64Decode('CgtFZGdlTG9jYXRvchIhCgpjaGFubmVsX2lkGAEgASgEQgIwAVIJY2hhbm5lbElkEisKEWRpcmVjdGlvbl9yZXZlcnNlGAIgASgIUhBkaXJlY3Rpb25SZXZlcnNl');
@$core.Deprecated('Use queryRoutesResponseDescriptor instead')
const QueryRoutesResponse$json = const {
  '1': 'QueryRoutesResponse',
  '2': const [
    const {'1': 'routes', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Route', '10': 'routes'},
    const {'1': 'success_prob', '3': 2, '4': 1, '5': 1, '10': 'successProb'},
  ],
};

/// Descriptor for `QueryRoutesResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryRoutesResponseDescriptor = $convert.base64Decode('ChNRdWVyeVJvdXRlc1Jlc3BvbnNlEiQKBnJvdXRlcxgBIAMoCzIMLmxucnBjLlJvdXRlUgZyb3V0ZXMSIQoMc3VjY2Vzc19wcm9iGAIgASgBUgtzdWNjZXNzUHJvYg==');
@$core.Deprecated('Use hopDescriptor instead')
const Hop$json = const {
  '1': 'Hop',
  '2': const [
    const {
      '1': 'chan_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'chan_capacity', '3': 2, '4': 1, '5': 3, '10': 'chanCapacity'},
    const {
      '1': 'amt_to_forward',
      '3': 3,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'amtToForward',
    },
    const {
      '1': 'fee',
      '3': 4,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'fee',
    },
    const {'1': 'expiry', '3': 5, '4': 1, '5': 13, '10': 'expiry'},
    const {'1': 'amt_to_forward_msat', '3': 6, '4': 1, '5': 3, '10': 'amtToForwardMsat'},
    const {'1': 'fee_msat', '3': 7, '4': 1, '5': 3, '10': 'feeMsat'},
    const {'1': 'pub_key', '3': 8, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'tlv_payload', '3': 9, '4': 1, '5': 8, '10': 'tlvPayload'},
    const {'1': 'mpp_record', '3': 10, '4': 1, '5': 11, '6': '.lnrpc.MPPRecord', '10': 'mppRecord'},
    const {'1': 'custom_records', '3': 11, '4': 3, '5': 11, '6': '.lnrpc.Hop.CustomRecordsEntry', '10': 'customRecords'},
  ],
  '3': const [Hop_CustomRecordsEntry$json],
};

@$core.Deprecated('Use hopDescriptor instead')
const Hop_CustomRecordsEntry$json = const {
  '1': 'CustomRecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `Hop`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hopDescriptor = $convert.base64Decode('CgNIb3ASGwoHY2hhbl9pZBgBIAEoBEICMAFSBmNoYW5JZBIjCg1jaGFuX2NhcGFjaXR5GAIgASgDUgxjaGFuQ2FwYWNpdHkSKAoOYW10X3RvX2ZvcndhcmQYAyABKANCAhgBUgxhbXRUb0ZvcndhcmQSFAoDZmVlGAQgASgDQgIYAVIDZmVlEhYKBmV4cGlyeRgFIAEoDVIGZXhwaXJ5Ei0KE2FtdF90b19mb3J3YXJkX21zYXQYBiABKANSEGFtdFRvRm9yd2FyZE1zYXQSGQoIZmVlX21zYXQYByABKANSB2ZlZU1zYXQSFwoHcHViX2tleRgIIAEoCVIGcHViS2V5Eh8KC3Rsdl9wYXlsb2FkGAkgASgIUgp0bHZQYXlsb2FkEi8KCm1wcF9yZWNvcmQYCiABKAsyEC5sbnJwYy5NUFBSZWNvcmRSCW1wcFJlY29yZBJECg5jdXN0b21fcmVjb3JkcxgLIAMoCzIdLmxucnBjLkhvcC5DdXN0b21SZWNvcmRzRW50cnlSDWN1c3RvbVJlY29yZHMaQAoSQ3VzdG9tUmVjb3Jkc0VudHJ5EhAKA2tleRgBIAEoBFIDa2V5EhQKBXZhbHVlGAIgASgMUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use mPPRecordDescriptor instead')
const MPPRecord$json = const {
  '1': 'MPPRecord',
  '2': const [
    const {'1': 'payment_addr', '3': 11, '4': 1, '5': 12, '10': 'paymentAddr'},
    const {'1': 'total_amt_msat', '3': 10, '4': 1, '5': 3, '10': 'totalAmtMsat'},
  ],
};

/// Descriptor for `MPPRecord`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List mPPRecordDescriptor = $convert.base64Decode('CglNUFBSZWNvcmQSIQoMcGF5bWVudF9hZGRyGAsgASgMUgtwYXltZW50QWRkchIkCg50b3RhbF9hbXRfbXNhdBgKIAEoA1IMdG90YWxBbXRNc2F0');
@$core.Deprecated('Use routeDescriptor instead')
const Route$json = const {
  '1': 'Route',
  '2': const [
    const {'1': 'total_time_lock', '3': 1, '4': 1, '5': 13, '10': 'totalTimeLock'},
    const {
      '1': 'total_fees',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'totalFees',
    },
    const {
      '1': 'total_amt',
      '3': 3,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'totalAmt',
    },
    const {'1': 'hops', '3': 4, '4': 3, '5': 11, '6': '.lnrpc.Hop', '10': 'hops'},
    const {'1': 'total_fees_msat', '3': 5, '4': 1, '5': 3, '10': 'totalFeesMsat'},
    const {'1': 'total_amt_msat', '3': 6, '4': 1, '5': 3, '10': 'totalAmtMsat'},
  ],
};

/// Descriptor for `Route`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routeDescriptor = $convert.base64Decode('CgVSb3V0ZRImCg90b3RhbF90aW1lX2xvY2sYASABKA1SDXRvdGFsVGltZUxvY2sSIQoKdG90YWxfZmVlcxgCIAEoA0ICGAFSCXRvdGFsRmVlcxIfCgl0b3RhbF9hbXQYAyABKANCAhgBUgh0b3RhbEFtdBIeCgRob3BzGAQgAygLMgoubG5ycGMuSG9wUgRob3BzEiYKD3RvdGFsX2ZlZXNfbXNhdBgFIAEoA1INdG90YWxGZWVzTXNhdBIkCg50b3RhbF9hbXRfbXNhdBgGIAEoA1IMdG90YWxBbXRNc2F0');
@$core.Deprecated('Use nodeInfoRequestDescriptor instead')
const NodeInfoRequest$json = const {
  '1': 'NodeInfoRequest',
  '2': const [
    const {'1': 'pub_key', '3': 1, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'include_channels', '3': 2, '4': 1, '5': 8, '10': 'includeChannels'},
  ],
};

/// Descriptor for `NodeInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeInfoRequestDescriptor = $convert.base64Decode('Cg9Ob2RlSW5mb1JlcXVlc3QSFwoHcHViX2tleRgBIAEoCVIGcHViS2V5EikKEGluY2x1ZGVfY2hhbm5lbHMYAiABKAhSD2luY2x1ZGVDaGFubmVscw==');
@$core.Deprecated('Use nodeInfoDescriptor instead')
const NodeInfo$json = const {
  '1': 'NodeInfo',
  '2': const [
    const {'1': 'node', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.LightningNode', '10': 'node'},
    const {'1': 'num_channels', '3': 2, '4': 1, '5': 13, '10': 'numChannels'},
    const {'1': 'total_capacity', '3': 3, '4': 1, '5': 3, '10': 'totalCapacity'},
    const {'1': 'channels', '3': 4, '4': 3, '5': 11, '6': '.lnrpc.ChannelEdge', '10': 'channels'},
  ],
};

/// Descriptor for `NodeInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeInfoDescriptor = $convert.base64Decode('CghOb2RlSW5mbxIoCgRub2RlGAEgASgLMhQubG5ycGMuTGlnaHRuaW5nTm9kZVIEbm9kZRIhCgxudW1fY2hhbm5lbHMYAiABKA1SC251bUNoYW5uZWxzEiUKDnRvdGFsX2NhcGFjaXR5GAMgASgDUg10b3RhbENhcGFjaXR5Ei4KCGNoYW5uZWxzGAQgAygLMhIubG5ycGMuQ2hhbm5lbEVkZ2VSCGNoYW5uZWxz');
@$core.Deprecated('Use lightningNodeDescriptor instead')
const LightningNode$json = const {
  '1': 'LightningNode',
  '2': const [
    const {'1': 'last_update', '3': 1, '4': 1, '5': 13, '10': 'lastUpdate'},
    const {'1': 'pub_key', '3': 2, '4': 1, '5': 9, '10': 'pubKey'},
    const {'1': 'alias', '3': 3, '4': 1, '5': 9, '10': 'alias'},
    const {'1': 'addresses', '3': 4, '4': 3, '5': 11, '6': '.lnrpc.NodeAddress', '10': 'addresses'},
    const {'1': 'color', '3': 5, '4': 1, '5': 9, '10': 'color'},
    const {'1': 'features', '3': 6, '4': 3, '5': 11, '6': '.lnrpc.LightningNode.FeaturesEntry', '10': 'features'},
  ],
  '3': const [LightningNode_FeaturesEntry$json],
};

@$core.Deprecated('Use lightningNodeDescriptor instead')
const LightningNode_FeaturesEntry$json = const {
  '1': 'FeaturesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Feature', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `LightningNode`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List lightningNodeDescriptor = $convert.base64Decode('Cg1MaWdodG5pbmdOb2RlEh8KC2xhc3RfdXBkYXRlGAEgASgNUgpsYXN0VXBkYXRlEhcKB3B1Yl9rZXkYAiABKAlSBnB1YktleRIUCgVhbGlhcxgDIAEoCVIFYWxpYXMSMAoJYWRkcmVzc2VzGAQgAygLMhIubG5ycGMuTm9kZUFkZHJlc3NSCWFkZHJlc3NlcxIUCgVjb2xvchgFIAEoCVIFY29sb3ISPgoIZmVhdHVyZXMYBiADKAsyIi5sbnJwYy5MaWdodG5pbmdOb2RlLkZlYXR1cmVzRW50cnlSCGZlYXR1cmVzGksKDUZlYXR1cmVzRW50cnkSEAoDa2V5GAEgASgNUgNrZXkSJAoFdmFsdWUYAiABKAsyDi5sbnJwYy5GZWF0dXJlUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use nodeAddressDescriptor instead')
const NodeAddress$json = const {
  '1': 'NodeAddress',
  '2': const [
    const {'1': 'network', '3': 1, '4': 1, '5': 9, '10': 'network'},
    const {'1': 'addr', '3': 2, '4': 1, '5': 9, '10': 'addr'},
  ],
};

/// Descriptor for `NodeAddress`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeAddressDescriptor = $convert.base64Decode('CgtOb2RlQWRkcmVzcxIYCgduZXR3b3JrGAEgASgJUgduZXR3b3JrEhIKBGFkZHIYAiABKAlSBGFkZHI=');
@$core.Deprecated('Use routingPolicyDescriptor instead')
const RoutingPolicy$json = const {
  '1': 'RoutingPolicy',
  '2': const [
    const {'1': 'time_lock_delta', '3': 1, '4': 1, '5': 13, '10': 'timeLockDelta'},
    const {'1': 'min_htlc', '3': 2, '4': 1, '5': 3, '10': 'minHtlc'},
    const {'1': 'fee_base_msat', '3': 3, '4': 1, '5': 3, '10': 'feeBaseMsat'},
    const {'1': 'fee_rate_milli_msat', '3': 4, '4': 1, '5': 3, '10': 'feeRateMilliMsat'},
    const {'1': 'disabled', '3': 5, '4': 1, '5': 8, '10': 'disabled'},
    const {'1': 'max_htlc_msat', '3': 6, '4': 1, '5': 4, '10': 'maxHtlcMsat'},
    const {'1': 'last_update', '3': 7, '4': 1, '5': 13, '10': 'lastUpdate'},
  ],
};

/// Descriptor for `RoutingPolicy`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routingPolicyDescriptor = $convert.base64Decode('Cg1Sb3V0aW5nUG9saWN5EiYKD3RpbWVfbG9ja19kZWx0YRgBIAEoDVINdGltZUxvY2tEZWx0YRIZCghtaW5faHRsYxgCIAEoA1IHbWluSHRsYxIiCg1mZWVfYmFzZV9tc2F0GAMgASgDUgtmZWVCYXNlTXNhdBItChNmZWVfcmF0ZV9taWxsaV9tc2F0GAQgASgDUhBmZWVSYXRlTWlsbGlNc2F0EhoKCGRpc2FibGVkGAUgASgIUghkaXNhYmxlZBIiCg1tYXhfaHRsY19tc2F0GAYgASgEUgttYXhIdGxjTXNhdBIfCgtsYXN0X3VwZGF0ZRgHIAEoDVIKbGFzdFVwZGF0ZQ==');
@$core.Deprecated('Use channelEdgeDescriptor instead')
const ChannelEdge$json = const {
  '1': 'ChannelEdge',
  '2': const [
    const {
      '1': 'channel_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'channelId',
    },
    const {'1': 'chan_point', '3': 2, '4': 1, '5': 9, '10': 'chanPoint'},
    const {
      '1': 'last_update',
      '3': 3,
      '4': 1,
      '5': 13,
      '8': const {'3': true},
      '10': 'lastUpdate',
    },
    const {'1': 'node1_pub', '3': 4, '4': 1, '5': 9, '10': 'node1Pub'},
    const {'1': 'node2_pub', '3': 5, '4': 1, '5': 9, '10': 'node2Pub'},
    const {'1': 'capacity', '3': 6, '4': 1, '5': 3, '10': 'capacity'},
    const {'1': 'node1_policy', '3': 7, '4': 1, '5': 11, '6': '.lnrpc.RoutingPolicy', '10': 'node1Policy'},
    const {'1': 'node2_policy', '3': 8, '4': 1, '5': 11, '6': '.lnrpc.RoutingPolicy', '10': 'node2Policy'},
  ],
};

/// Descriptor for `ChannelEdge`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelEdgeDescriptor = $convert.base64Decode('CgtDaGFubmVsRWRnZRIhCgpjaGFubmVsX2lkGAEgASgEQgIwAVIJY2hhbm5lbElkEh0KCmNoYW5fcG9pbnQYAiABKAlSCWNoYW5Qb2ludBIjCgtsYXN0X3VwZGF0ZRgDIAEoDUICGAFSCmxhc3RVcGRhdGUSGwoJbm9kZTFfcHViGAQgASgJUghub2RlMVB1YhIbCglub2RlMl9wdWIYBSABKAlSCG5vZGUyUHViEhoKCGNhcGFjaXR5GAYgASgDUghjYXBhY2l0eRI3Cgxub2RlMV9wb2xpY3kYByABKAsyFC5sbnJwYy5Sb3V0aW5nUG9saWN5Ugtub2RlMVBvbGljeRI3Cgxub2RlMl9wb2xpY3kYCCABKAsyFC5sbnJwYy5Sb3V0aW5nUG9saWN5Ugtub2RlMlBvbGljeQ==');
@$core.Deprecated('Use channelGraphRequestDescriptor instead')
const ChannelGraphRequest$json = const {
  '1': 'ChannelGraphRequest',
  '2': const [
    const {'1': 'include_unannounced', '3': 1, '4': 1, '5': 8, '10': 'includeUnannounced'},
  ],
};

/// Descriptor for `ChannelGraphRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelGraphRequestDescriptor = $convert.base64Decode('ChNDaGFubmVsR3JhcGhSZXF1ZXN0Ei8KE2luY2x1ZGVfdW5hbm5vdW5jZWQYASABKAhSEmluY2x1ZGVVbmFubm91bmNlZA==');
@$core.Deprecated('Use channelGraphDescriptor instead')
const ChannelGraph$json = const {
  '1': 'ChannelGraph',
  '2': const [
    const {'1': 'nodes', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.LightningNode', '10': 'nodes'},
    const {'1': 'edges', '3': 2, '4': 3, '5': 11, '6': '.lnrpc.ChannelEdge', '10': 'edges'},
  ],
};

/// Descriptor for `ChannelGraph`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelGraphDescriptor = $convert.base64Decode('CgxDaGFubmVsR3JhcGgSKgoFbm9kZXMYASADKAsyFC5sbnJwYy5MaWdodG5pbmdOb2RlUgVub2RlcxIoCgVlZGdlcxgCIAMoCzISLmxucnBjLkNoYW5uZWxFZGdlUgVlZGdlcw==');
@$core.Deprecated('Use nodeMetricsRequestDescriptor instead')
const NodeMetricsRequest$json = const {
  '1': 'NodeMetricsRequest',
  '2': const [
    const {'1': 'types', '3': 1, '4': 3, '5': 14, '6': '.lnrpc.NodeMetricType', '10': 'types'},
  ],
};

/// Descriptor for `NodeMetricsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeMetricsRequestDescriptor = $convert.base64Decode('ChJOb2RlTWV0cmljc1JlcXVlc3QSKwoFdHlwZXMYASADKA4yFS5sbnJwYy5Ob2RlTWV0cmljVHlwZVIFdHlwZXM=');
@$core.Deprecated('Use nodeMetricsResponseDescriptor instead')
const NodeMetricsResponse$json = const {
  '1': 'NodeMetricsResponse',
  '2': const [
    const {'1': 'betweenness_centrality', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.NodeMetricsResponse.BetweennessCentralityEntry', '10': 'betweennessCentrality'},
  ],
  '3': const [NodeMetricsResponse_BetweennessCentralityEntry$json],
};

@$core.Deprecated('Use nodeMetricsResponseDescriptor instead')
const NodeMetricsResponse_BetweennessCentralityEntry$json = const {
  '1': 'BetweennessCentralityEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.FloatMetric', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `NodeMetricsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeMetricsResponseDescriptor = $convert.base64Decode('ChNOb2RlTWV0cmljc1Jlc3BvbnNlEmwKFmJldHdlZW5uZXNzX2NlbnRyYWxpdHkYASADKAsyNS5sbnJwYy5Ob2RlTWV0cmljc1Jlc3BvbnNlLkJldHdlZW5uZXNzQ2VudHJhbGl0eUVudHJ5UhViZXR3ZWVubmVzc0NlbnRyYWxpdHkaXAoaQmV0d2Vlbm5lc3NDZW50cmFsaXR5RW50cnkSEAoDa2V5GAEgASgJUgNrZXkSKAoFdmFsdWUYAiABKAsyEi5sbnJwYy5GbG9hdE1ldHJpY1IFdmFsdWU6AjgB');
@$core.Deprecated('Use floatMetricDescriptor instead')
const FloatMetric$json = const {
  '1': 'FloatMetric',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 1, '10': 'value'},
    const {'1': 'normalized_value', '3': 2, '4': 1, '5': 1, '10': 'normalizedValue'},
  ],
};

/// Descriptor for `FloatMetric`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List floatMetricDescriptor = $convert.base64Decode('CgtGbG9hdE1ldHJpYxIUCgV2YWx1ZRgBIAEoAVIFdmFsdWUSKQoQbm9ybWFsaXplZF92YWx1ZRgCIAEoAVIPbm9ybWFsaXplZFZhbHVl');
@$core.Deprecated('Use chanInfoRequestDescriptor instead')
const ChanInfoRequest$json = const {
  '1': 'ChanInfoRequest',
  '2': const [
    const {
      '1': 'chan_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
  ],
};

/// Descriptor for `ChanInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chanInfoRequestDescriptor = $convert.base64Decode('Cg9DaGFuSW5mb1JlcXVlc3QSGwoHY2hhbl9pZBgBIAEoBEICMAFSBmNoYW5JZA==');
@$core.Deprecated('Use networkInfoRequestDescriptor instead')
const NetworkInfoRequest$json = const {
  '1': 'NetworkInfoRequest',
};

/// Descriptor for `NetworkInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkInfoRequestDescriptor = $convert.base64Decode('ChJOZXR3b3JrSW5mb1JlcXVlc3Q=');
@$core.Deprecated('Use networkInfoDescriptor instead')
const NetworkInfo$json = const {
  '1': 'NetworkInfo',
  '2': const [
    const {'1': 'graph_diameter', '3': 1, '4': 1, '5': 13, '10': 'graphDiameter'},
    const {'1': 'avg_out_degree', '3': 2, '4': 1, '5': 1, '10': 'avgOutDegree'},
    const {'1': 'max_out_degree', '3': 3, '4': 1, '5': 13, '10': 'maxOutDegree'},
    const {'1': 'num_nodes', '3': 4, '4': 1, '5': 13, '10': 'numNodes'},
    const {'1': 'num_channels', '3': 5, '4': 1, '5': 13, '10': 'numChannels'},
    const {'1': 'total_network_capacity', '3': 6, '4': 1, '5': 3, '10': 'totalNetworkCapacity'},
    const {'1': 'avg_channel_size', '3': 7, '4': 1, '5': 1, '10': 'avgChannelSize'},
    const {'1': 'min_channel_size', '3': 8, '4': 1, '5': 3, '10': 'minChannelSize'},
    const {'1': 'max_channel_size', '3': 9, '4': 1, '5': 3, '10': 'maxChannelSize'},
    const {'1': 'median_channel_size_sat', '3': 10, '4': 1, '5': 3, '10': 'medianChannelSizeSat'},
    const {'1': 'num_zombie_chans', '3': 11, '4': 1, '5': 4, '10': 'numZombieChans'},
  ],
};

/// Descriptor for `NetworkInfo`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List networkInfoDescriptor = $convert.base64Decode('CgtOZXR3b3JrSW5mbxIlCg5ncmFwaF9kaWFtZXRlchgBIAEoDVINZ3JhcGhEaWFtZXRlchIkCg5hdmdfb3V0X2RlZ3JlZRgCIAEoAVIMYXZnT3V0RGVncmVlEiQKDm1heF9vdXRfZGVncmVlGAMgASgNUgxtYXhPdXREZWdyZWUSGwoJbnVtX25vZGVzGAQgASgNUghudW1Ob2RlcxIhCgxudW1fY2hhbm5lbHMYBSABKA1SC251bUNoYW5uZWxzEjQKFnRvdGFsX25ldHdvcmtfY2FwYWNpdHkYBiABKANSFHRvdGFsTmV0d29ya0NhcGFjaXR5EigKEGF2Z19jaGFubmVsX3NpemUYByABKAFSDmF2Z0NoYW5uZWxTaXplEigKEG1pbl9jaGFubmVsX3NpemUYCCABKANSDm1pbkNoYW5uZWxTaXplEigKEG1heF9jaGFubmVsX3NpemUYCSABKANSDm1heENoYW5uZWxTaXplEjUKF21lZGlhbl9jaGFubmVsX3NpemVfc2F0GAogASgDUhRtZWRpYW5DaGFubmVsU2l6ZVNhdBIoChBudW1fem9tYmllX2NoYW5zGAsgASgEUg5udW1ab21iaWVDaGFucw==');
@$core.Deprecated('Use stopRequestDescriptor instead')
const StopRequest$json = const {
  '1': 'StopRequest',
};

/// Descriptor for `StopRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopRequestDescriptor = $convert.base64Decode('CgtTdG9wUmVxdWVzdA==');
@$core.Deprecated('Use stopResponseDescriptor instead')
const StopResponse$json = const {
  '1': 'StopResponse',
};

/// Descriptor for `StopResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List stopResponseDescriptor = $convert.base64Decode('CgxTdG9wUmVzcG9uc2U=');
@$core.Deprecated('Use graphTopologySubscriptionDescriptor instead')
const GraphTopologySubscription$json = const {
  '1': 'GraphTopologySubscription',
};

/// Descriptor for `GraphTopologySubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List graphTopologySubscriptionDescriptor = $convert.base64Decode('ChlHcmFwaFRvcG9sb2d5U3Vic2NyaXB0aW9u');
@$core.Deprecated('Use graphTopologyUpdateDescriptor instead')
const GraphTopologyUpdate$json = const {
  '1': 'GraphTopologyUpdate',
  '2': const [
    const {'1': 'node_updates', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.NodeUpdate', '10': 'nodeUpdates'},
    const {'1': 'channel_updates', '3': 2, '4': 3, '5': 11, '6': '.lnrpc.ChannelEdgeUpdate', '10': 'channelUpdates'},
    const {'1': 'closed_chans', '3': 3, '4': 3, '5': 11, '6': '.lnrpc.ClosedChannelUpdate', '10': 'closedChans'},
  ],
};

/// Descriptor for `GraphTopologyUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List graphTopologyUpdateDescriptor = $convert.base64Decode('ChNHcmFwaFRvcG9sb2d5VXBkYXRlEjQKDG5vZGVfdXBkYXRlcxgBIAMoCzIRLmxucnBjLk5vZGVVcGRhdGVSC25vZGVVcGRhdGVzEkEKD2NoYW5uZWxfdXBkYXRlcxgCIAMoCzIYLmxucnBjLkNoYW5uZWxFZGdlVXBkYXRlUg5jaGFubmVsVXBkYXRlcxI9CgxjbG9zZWRfY2hhbnMYAyADKAsyGi5sbnJwYy5DbG9zZWRDaGFubmVsVXBkYXRlUgtjbG9zZWRDaGFucw==');
@$core.Deprecated('Use nodeUpdateDescriptor instead')
const NodeUpdate$json = const {
  '1': 'NodeUpdate',
  '2': const [
    const {'1': 'addresses', '3': 1, '4': 3, '5': 9, '10': 'addresses'},
    const {'1': 'identity_key', '3': 2, '4': 1, '5': 9, '10': 'identityKey'},
    const {
      '1': 'global_features',
      '3': 3,
      '4': 1,
      '5': 12,
      '8': const {'3': true},
      '10': 'globalFeatures',
    },
    const {'1': 'alias', '3': 4, '4': 1, '5': 9, '10': 'alias'},
    const {'1': 'color', '3': 5, '4': 1, '5': 9, '10': 'color'},
    const {'1': 'features', '3': 6, '4': 3, '5': 11, '6': '.lnrpc.NodeUpdate.FeaturesEntry', '10': 'features'},
  ],
  '3': const [NodeUpdate_FeaturesEntry$json],
};

@$core.Deprecated('Use nodeUpdateDescriptor instead')
const NodeUpdate_FeaturesEntry$json = const {
  '1': 'FeaturesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Feature', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `NodeUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List nodeUpdateDescriptor = $convert.base64Decode('CgpOb2RlVXBkYXRlEhwKCWFkZHJlc3NlcxgBIAMoCVIJYWRkcmVzc2VzEiEKDGlkZW50aXR5X2tleRgCIAEoCVILaWRlbnRpdHlLZXkSKwoPZ2xvYmFsX2ZlYXR1cmVzGAMgASgMQgIYAVIOZ2xvYmFsRmVhdHVyZXMSFAoFYWxpYXMYBCABKAlSBWFsaWFzEhQKBWNvbG9yGAUgASgJUgVjb2xvchI7CghmZWF0dXJlcxgGIAMoCzIfLmxucnBjLk5vZGVVcGRhdGUuRmVhdHVyZXNFbnRyeVIIZmVhdHVyZXMaSwoNRmVhdHVyZXNFbnRyeRIQCgNrZXkYASABKA1SA2tleRIkCgV2YWx1ZRgCIAEoCzIOLmxucnBjLkZlYXR1cmVSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use channelEdgeUpdateDescriptor instead')
const ChannelEdgeUpdate$json = const {
  '1': 'ChannelEdgeUpdate',
  '2': const [
    const {
      '1': 'chan_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'chan_point', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'chanPoint'},
    const {'1': 'capacity', '3': 3, '4': 1, '5': 3, '10': 'capacity'},
    const {'1': 'routing_policy', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.RoutingPolicy', '10': 'routingPolicy'},
    const {'1': 'advertising_node', '3': 5, '4': 1, '5': 9, '10': 'advertisingNode'},
    const {'1': 'connecting_node', '3': 6, '4': 1, '5': 9, '10': 'connectingNode'},
  ],
};

/// Descriptor for `ChannelEdgeUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelEdgeUpdateDescriptor = $convert.base64Decode('ChFDaGFubmVsRWRnZVVwZGF0ZRIbCgdjaGFuX2lkGAEgASgEQgIwAVIGY2hhbklkEjIKCmNoYW5fcG9pbnQYAiABKAsyEy5sbnJwYy5DaGFubmVsUG9pbnRSCWNoYW5Qb2ludBIaCghjYXBhY2l0eRgDIAEoA1IIY2FwYWNpdHkSOwoOcm91dGluZ19wb2xpY3kYBCABKAsyFC5sbnJwYy5Sb3V0aW5nUG9saWN5Ug1yb3V0aW5nUG9saWN5EikKEGFkdmVydGlzaW5nX25vZGUYBSABKAlSD2FkdmVydGlzaW5nTm9kZRInCg9jb25uZWN0aW5nX25vZGUYBiABKAlSDmNvbm5lY3RpbmdOb2Rl');
@$core.Deprecated('Use closedChannelUpdateDescriptor instead')
const ClosedChannelUpdate$json = const {
  '1': 'ClosedChannelUpdate',
  '2': const [
    const {
      '1': 'chan_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'capacity', '3': 2, '4': 1, '5': 3, '10': 'capacity'},
    const {'1': 'closed_height', '3': 3, '4': 1, '5': 13, '10': 'closedHeight'},
    const {'1': 'chan_point', '3': 4, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'chanPoint'},
  ],
};

/// Descriptor for `ClosedChannelUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List closedChannelUpdateDescriptor = $convert.base64Decode('ChNDbG9zZWRDaGFubmVsVXBkYXRlEhsKB2NoYW5faWQYASABKARCAjABUgZjaGFuSWQSGgoIY2FwYWNpdHkYAiABKANSCGNhcGFjaXR5EiMKDWNsb3NlZF9oZWlnaHQYAyABKA1SDGNsb3NlZEhlaWdodBIyCgpjaGFuX3BvaW50GAQgASgLMhMubG5ycGMuQ2hhbm5lbFBvaW50UgljaGFuUG9pbnQ=');
@$core.Deprecated('Use hopHintDescriptor instead')
const HopHint$json = const {
  '1': 'HopHint',
  '2': const [
    const {'1': 'node_id', '3': 1, '4': 1, '5': 9, '10': 'nodeId'},
    const {
      '1': 'chan_id',
      '3': 2,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'fee_base_msat', '3': 3, '4': 1, '5': 13, '10': 'feeBaseMsat'},
    const {'1': 'fee_proportional_millionths', '3': 4, '4': 1, '5': 13, '10': 'feeProportionalMillionths'},
    const {'1': 'cltv_expiry_delta', '3': 5, '4': 1, '5': 13, '10': 'cltvExpiryDelta'},
  ],
};

/// Descriptor for `HopHint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hopHintDescriptor = $convert.base64Decode('CgdIb3BIaW50EhcKB25vZGVfaWQYASABKAlSBm5vZGVJZBIbCgdjaGFuX2lkGAIgASgEQgIwAVIGY2hhbklkEiIKDWZlZV9iYXNlX21zYXQYAyABKA1SC2ZlZUJhc2VNc2F0Ej4KG2ZlZV9wcm9wb3J0aW9uYWxfbWlsbGlvbnRocxgEIAEoDVIZZmVlUHJvcG9ydGlvbmFsTWlsbGlvbnRocxIqChFjbHR2X2V4cGlyeV9kZWx0YRgFIAEoDVIPY2x0dkV4cGlyeURlbHRh');
@$core.Deprecated('Use routeHintDescriptor instead')
const RouteHint$json = const {
  '1': 'RouteHint',
  '2': const [
    const {'1': 'hop_hints', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.HopHint', '10': 'hopHints'},
  ],
};

/// Descriptor for `RouteHint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List routeHintDescriptor = $convert.base64Decode('CglSb3V0ZUhpbnQSKwoJaG9wX2hpbnRzGAEgAygLMg4ubG5ycGMuSG9wSGludFIIaG9wSGludHM=');
@$core.Deprecated('Use invoiceDescriptor instead')
const Invoice$json = const {
  '1': 'Invoice',
  '2': const [
    const {'1': 'memo', '3': 1, '4': 1, '5': 9, '10': 'memo'},
    const {'1': 'r_preimage', '3': 3, '4': 1, '5': 12, '10': 'rPreimage'},
    const {'1': 'r_hash', '3': 4, '4': 1, '5': 12, '10': 'rHash'},
    const {'1': 'value', '3': 5, '4': 1, '5': 3, '10': 'value'},
    const {'1': 'value_msat', '3': 23, '4': 1, '5': 3, '10': 'valueMsat'},
    const {
      '1': 'settled',
      '3': 6,
      '4': 1,
      '5': 8,
      '8': const {'3': true},
      '10': 'settled',
    },
    const {'1': 'creation_date', '3': 7, '4': 1, '5': 3, '10': 'creationDate'},
    const {'1': 'settle_date', '3': 8, '4': 1, '5': 3, '10': 'settleDate'},
    const {'1': 'payment_request', '3': 9, '4': 1, '5': 9, '10': 'paymentRequest'},
    const {'1': 'description_hash', '3': 10, '4': 1, '5': 12, '10': 'descriptionHash'},
    const {'1': 'expiry', '3': 11, '4': 1, '5': 3, '10': 'expiry'},
    const {'1': 'fallback_addr', '3': 12, '4': 1, '5': 9, '10': 'fallbackAddr'},
    const {'1': 'cltv_expiry', '3': 13, '4': 1, '5': 4, '10': 'cltvExpiry'},
    const {'1': 'route_hints', '3': 14, '4': 3, '5': 11, '6': '.lnrpc.RouteHint', '10': 'routeHints'},
    const {'1': 'private', '3': 15, '4': 1, '5': 8, '10': 'private'},
    const {'1': 'add_index', '3': 16, '4': 1, '5': 4, '10': 'addIndex'},
    const {'1': 'settle_index', '3': 17, '4': 1, '5': 4, '10': 'settleIndex'},
    const {
      '1': 'amt_paid',
      '3': 18,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'amtPaid',
    },
    const {'1': 'amt_paid_sat', '3': 19, '4': 1, '5': 3, '10': 'amtPaidSat'},
    const {'1': 'amt_paid_msat', '3': 20, '4': 1, '5': 3, '10': 'amtPaidMsat'},
    const {'1': 'state', '3': 21, '4': 1, '5': 14, '6': '.lnrpc.Invoice.InvoiceState', '10': 'state'},
    const {'1': 'htlcs', '3': 22, '4': 3, '5': 11, '6': '.lnrpc.InvoiceHTLC', '10': 'htlcs'},
    const {'1': 'features', '3': 24, '4': 3, '5': 11, '6': '.lnrpc.Invoice.FeaturesEntry', '10': 'features'},
    const {'1': 'is_keysend', '3': 25, '4': 1, '5': 8, '10': 'isKeysend'},
    const {'1': 'payment_addr', '3': 26, '4': 1, '5': 12, '10': 'paymentAddr'},
  ],
  '3': const [Invoice_FeaturesEntry$json],
  '4': const [Invoice_InvoiceState$json],
  '9': const [
    const {'1': 2, '2': 3},
  ],
};

@$core.Deprecated('Use invoiceDescriptor instead')
const Invoice_FeaturesEntry$json = const {
  '1': 'FeaturesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Feature', '10': 'value'},
  ],
  '7': const {'7': true},
};

@$core.Deprecated('Use invoiceDescriptor instead')
const Invoice_InvoiceState$json = const {
  '1': 'InvoiceState',
  '2': const [
    const {'1': 'OPEN', '2': 0},
    const {'1': 'SETTLED', '2': 1},
    const {'1': 'CANCELED', '2': 2},
    const {'1': 'ACCEPTED', '2': 3},
  ],
};

/// Descriptor for `Invoice`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invoiceDescriptor = $convert.base64Decode('CgdJbnZvaWNlEhIKBG1lbW8YASABKAlSBG1lbW8SHQoKcl9wcmVpbWFnZRgDIAEoDFIJclByZWltYWdlEhUKBnJfaGFzaBgEIAEoDFIFckhhc2gSFAoFdmFsdWUYBSABKANSBXZhbHVlEh0KCnZhbHVlX21zYXQYFyABKANSCXZhbHVlTXNhdBIcCgdzZXR0bGVkGAYgASgIQgIYAVIHc2V0dGxlZBIjCg1jcmVhdGlvbl9kYXRlGAcgASgDUgxjcmVhdGlvbkRhdGUSHwoLc2V0dGxlX2RhdGUYCCABKANSCnNldHRsZURhdGUSJwoPcGF5bWVudF9yZXF1ZXN0GAkgASgJUg5wYXltZW50UmVxdWVzdBIpChBkZXNjcmlwdGlvbl9oYXNoGAogASgMUg9kZXNjcmlwdGlvbkhhc2gSFgoGZXhwaXJ5GAsgASgDUgZleHBpcnkSIwoNZmFsbGJhY2tfYWRkchgMIAEoCVIMZmFsbGJhY2tBZGRyEh8KC2NsdHZfZXhwaXJ5GA0gASgEUgpjbHR2RXhwaXJ5EjEKC3JvdXRlX2hpbnRzGA4gAygLMhAubG5ycGMuUm91dGVIaW50Ugpyb3V0ZUhpbnRzEhgKB3ByaXZhdGUYDyABKAhSB3ByaXZhdGUSGwoJYWRkX2luZGV4GBAgASgEUghhZGRJbmRleBIhCgxzZXR0bGVfaW5kZXgYESABKARSC3NldHRsZUluZGV4Eh0KCGFtdF9wYWlkGBIgASgDQgIYAVIHYW10UGFpZBIgCgxhbXRfcGFpZF9zYXQYEyABKANSCmFtdFBhaWRTYXQSIgoNYW10X3BhaWRfbXNhdBgUIAEoA1ILYW10UGFpZE1zYXQSMQoFc3RhdGUYFSABKA4yGy5sbnJwYy5JbnZvaWNlLkludm9pY2VTdGF0ZVIFc3RhdGUSKAoFaHRsY3MYFiADKAsyEi5sbnJwYy5JbnZvaWNlSFRMQ1IFaHRsY3MSOAoIZmVhdHVyZXMYGCADKAsyHC5sbnJwYy5JbnZvaWNlLkZlYXR1cmVzRW50cnlSCGZlYXR1cmVzEh0KCmlzX2tleXNlbmQYGSABKAhSCWlzS2V5c2VuZBIhCgxwYXltZW50X2FkZHIYGiABKAxSC3BheW1lbnRBZGRyGksKDUZlYXR1cmVzRW50cnkSEAoDa2V5GAEgASgNUgNrZXkSJAoFdmFsdWUYAiABKAsyDi5sbnJwYy5GZWF0dXJlUgV2YWx1ZToCOAEiQQoMSW52b2ljZVN0YXRlEggKBE9QRU4QABILCgdTRVRUTEVEEAESDAoIQ0FOQ0VMRUQQAhIMCghBQ0NFUFRFRBADSgQIAhAD');
@$core.Deprecated('Use invoiceHTLCDescriptor instead')
const InvoiceHTLC$json = const {
  '1': 'InvoiceHTLC',
  '2': const [
    const {
      '1': 'chan_id',
      '3': 1,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'htlc_index', '3': 2, '4': 1, '5': 4, '10': 'htlcIndex'},
    const {'1': 'amt_msat', '3': 3, '4': 1, '5': 4, '10': 'amtMsat'},
    const {'1': 'accept_height', '3': 4, '4': 1, '5': 5, '10': 'acceptHeight'},
    const {'1': 'accept_time', '3': 5, '4': 1, '5': 3, '10': 'acceptTime'},
    const {'1': 'resolve_time', '3': 6, '4': 1, '5': 3, '10': 'resolveTime'},
    const {'1': 'expiry_height', '3': 7, '4': 1, '5': 5, '10': 'expiryHeight'},
    const {'1': 'state', '3': 8, '4': 1, '5': 14, '6': '.lnrpc.InvoiceHTLCState', '10': 'state'},
    const {'1': 'custom_records', '3': 9, '4': 3, '5': 11, '6': '.lnrpc.InvoiceHTLC.CustomRecordsEntry', '10': 'customRecords'},
    const {'1': 'mpp_total_amt_msat', '3': 10, '4': 1, '5': 4, '10': 'mppTotalAmtMsat'},
  ],
  '3': const [InvoiceHTLC_CustomRecordsEntry$json],
};

@$core.Deprecated('Use invoiceHTLCDescriptor instead')
const InvoiceHTLC_CustomRecordsEntry$json = const {
  '1': 'CustomRecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `InvoiceHTLC`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invoiceHTLCDescriptor = $convert.base64Decode('CgtJbnZvaWNlSFRMQxIbCgdjaGFuX2lkGAEgASgEQgIwAVIGY2hhbklkEh0KCmh0bGNfaW5kZXgYAiABKARSCWh0bGNJbmRleBIZCghhbXRfbXNhdBgDIAEoBFIHYW10TXNhdBIjCg1hY2NlcHRfaGVpZ2h0GAQgASgFUgxhY2NlcHRIZWlnaHQSHwoLYWNjZXB0X3RpbWUYBSABKANSCmFjY2VwdFRpbWUSIQoMcmVzb2x2ZV90aW1lGAYgASgDUgtyZXNvbHZlVGltZRIjCg1leHBpcnlfaGVpZ2h0GAcgASgFUgxleHBpcnlIZWlnaHQSLQoFc3RhdGUYCCABKA4yFy5sbnJwYy5JbnZvaWNlSFRMQ1N0YXRlUgVzdGF0ZRJMCg5jdXN0b21fcmVjb3JkcxgJIAMoCzIlLmxucnBjLkludm9pY2VIVExDLkN1c3RvbVJlY29yZHNFbnRyeVINY3VzdG9tUmVjb3JkcxIrChJtcHBfdG90YWxfYW10X21zYXQYCiABKARSD21wcFRvdGFsQW10TXNhdBpAChJDdXN0b21SZWNvcmRzRW50cnkSEAoDa2V5GAEgASgEUgNrZXkSFAoFdmFsdWUYAiABKAxSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use addInvoiceResponseDescriptor instead')
const AddInvoiceResponse$json = const {
  '1': 'AddInvoiceResponse',
  '2': const [
    const {'1': 'r_hash', '3': 1, '4': 1, '5': 12, '10': 'rHash'},
    const {'1': 'payment_request', '3': 2, '4': 1, '5': 9, '10': 'paymentRequest'},
    const {'1': 'add_index', '3': 16, '4': 1, '5': 4, '10': 'addIndex'},
    const {'1': 'payment_addr', '3': 17, '4': 1, '5': 12, '10': 'paymentAddr'},
  ],
};

/// Descriptor for `AddInvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addInvoiceResponseDescriptor = $convert.base64Decode('ChJBZGRJbnZvaWNlUmVzcG9uc2USFQoGcl9oYXNoGAEgASgMUgVySGFzaBInCg9wYXltZW50X3JlcXVlc3QYAiABKAlSDnBheW1lbnRSZXF1ZXN0EhsKCWFkZF9pbmRleBgQIAEoBFIIYWRkSW5kZXgSIQoMcGF5bWVudF9hZGRyGBEgASgMUgtwYXltZW50QWRkcg==');
@$core.Deprecated('Use paymentHashDescriptor instead')
const PaymentHash$json = const {
  '1': 'PaymentHash',
  '2': const [
    const {
      '1': 'r_hash_str',
      '3': 1,
      '4': 1,
      '5': 9,
      '8': const {'3': true},
      '10': 'rHashStr',
    },
    const {'1': 'r_hash', '3': 2, '4': 1, '5': 12, '10': 'rHash'},
  ],
};

/// Descriptor for `PaymentHash`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentHashDescriptor = $convert.base64Decode('CgtQYXltZW50SGFzaBIgCgpyX2hhc2hfc3RyGAEgASgJQgIYAVIIckhhc2hTdHISFQoGcl9oYXNoGAIgASgMUgVySGFzaA==');
@$core.Deprecated('Use listInvoiceRequestDescriptor instead')
const ListInvoiceRequest$json = const {
  '1': 'ListInvoiceRequest',
  '2': const [
    const {'1': 'pending_only', '3': 1, '4': 1, '5': 8, '10': 'pendingOnly'},
    const {'1': 'index_offset', '3': 4, '4': 1, '5': 4, '10': 'indexOffset'},
    const {'1': 'num_max_invoices', '3': 5, '4': 1, '5': 4, '10': 'numMaxInvoices'},
    const {'1': 'reversed', '3': 6, '4': 1, '5': 8, '10': 'reversed'},
  ],
};

/// Descriptor for `ListInvoiceRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInvoiceRequestDescriptor = $convert.base64Decode('ChJMaXN0SW52b2ljZVJlcXVlc3QSIQoMcGVuZGluZ19vbmx5GAEgASgIUgtwZW5kaW5nT25seRIhCgxpbmRleF9vZmZzZXQYBCABKARSC2luZGV4T2Zmc2V0EigKEG51bV9tYXhfaW52b2ljZXMYBSABKARSDm51bU1heEludm9pY2VzEhoKCHJldmVyc2VkGAYgASgIUghyZXZlcnNlZA==');
@$core.Deprecated('Use listInvoiceResponseDescriptor instead')
const ListInvoiceResponse$json = const {
  '1': 'ListInvoiceResponse',
  '2': const [
    const {'1': 'invoices', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Invoice', '10': 'invoices'},
    const {'1': 'last_index_offset', '3': 2, '4': 1, '5': 4, '10': 'lastIndexOffset'},
    const {'1': 'first_index_offset', '3': 3, '4': 1, '5': 4, '10': 'firstIndexOffset'},
  ],
};

/// Descriptor for `ListInvoiceResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listInvoiceResponseDescriptor = $convert.base64Decode('ChNMaXN0SW52b2ljZVJlc3BvbnNlEioKCGludm9pY2VzGAEgAygLMg4ubG5ycGMuSW52b2ljZVIIaW52b2ljZXMSKgoRbGFzdF9pbmRleF9vZmZzZXQYAiABKARSD2xhc3RJbmRleE9mZnNldBIsChJmaXJzdF9pbmRleF9vZmZzZXQYAyABKARSEGZpcnN0SW5kZXhPZmZzZXQ=');
@$core.Deprecated('Use invoiceSubscriptionDescriptor instead')
const InvoiceSubscription$json = const {
  '1': 'InvoiceSubscription',
  '2': const [
    const {'1': 'add_index', '3': 1, '4': 1, '5': 4, '10': 'addIndex'},
    const {'1': 'settle_index', '3': 2, '4': 1, '5': 4, '10': 'settleIndex'},
  ],
};

/// Descriptor for `InvoiceSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List invoiceSubscriptionDescriptor = $convert.base64Decode('ChNJbnZvaWNlU3Vic2NyaXB0aW9uEhsKCWFkZF9pbmRleBgBIAEoBFIIYWRkSW5kZXgSIQoMc2V0dGxlX2luZGV4GAIgASgEUgtzZXR0bGVJbmRleA==');
@$core.Deprecated('Use paymentDescriptor instead')
const Payment$json = const {
  '1': 'Payment',
  '2': const [
    const {'1': 'payment_hash', '3': 1, '4': 1, '5': 9, '10': 'paymentHash'},
    const {
      '1': 'value',
      '3': 2,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'value',
    },
    const {
      '1': 'creation_date',
      '3': 3,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'creationDate',
    },
    const {
      '1': 'fee',
      '3': 5,
      '4': 1,
      '5': 3,
      '8': const {'3': true},
      '10': 'fee',
    },
    const {'1': 'payment_preimage', '3': 6, '4': 1, '5': 9, '10': 'paymentPreimage'},
    const {'1': 'value_sat', '3': 7, '4': 1, '5': 3, '10': 'valueSat'},
    const {'1': 'value_msat', '3': 8, '4': 1, '5': 3, '10': 'valueMsat'},
    const {'1': 'payment_request', '3': 9, '4': 1, '5': 9, '10': 'paymentRequest'},
    const {'1': 'status', '3': 10, '4': 1, '5': 14, '6': '.lnrpc.Payment.PaymentStatus', '10': 'status'},
    const {'1': 'fee_sat', '3': 11, '4': 1, '5': 3, '10': 'feeSat'},
    const {'1': 'fee_msat', '3': 12, '4': 1, '5': 3, '10': 'feeMsat'},
    const {'1': 'creation_time_ns', '3': 13, '4': 1, '5': 3, '10': 'creationTimeNs'},
    const {'1': 'htlcs', '3': 14, '4': 3, '5': 11, '6': '.lnrpc.HTLCAttempt', '10': 'htlcs'},
    const {'1': 'payment_index', '3': 15, '4': 1, '5': 4, '10': 'paymentIndex'},
    const {'1': 'failure_reason', '3': 16, '4': 1, '5': 14, '6': '.lnrpc.PaymentFailureReason', '10': 'failureReason'},
  ],
  '4': const [Payment_PaymentStatus$json],
  '9': const [
    const {'1': 4, '2': 5},
  ],
};

@$core.Deprecated('Use paymentDescriptor instead')
const Payment_PaymentStatus$json = const {
  '1': 'PaymentStatus',
  '2': const [
    const {'1': 'UNKNOWN', '2': 0},
    const {'1': 'IN_FLIGHT', '2': 1},
    const {'1': 'SUCCEEDED', '2': 2},
    const {'1': 'FAILED', '2': 3},
  ],
};

/// Descriptor for `Payment`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List paymentDescriptor = $convert.base64Decode('CgdQYXltZW50EiEKDHBheW1lbnRfaGFzaBgBIAEoCVILcGF5bWVudEhhc2gSGAoFdmFsdWUYAiABKANCAhgBUgV2YWx1ZRInCg1jcmVhdGlvbl9kYXRlGAMgASgDQgIYAVIMY3JlYXRpb25EYXRlEhQKA2ZlZRgFIAEoA0ICGAFSA2ZlZRIpChBwYXltZW50X3ByZWltYWdlGAYgASgJUg9wYXltZW50UHJlaW1hZ2USGwoJdmFsdWVfc2F0GAcgASgDUgh2YWx1ZVNhdBIdCgp2YWx1ZV9tc2F0GAggASgDUgl2YWx1ZU1zYXQSJwoPcGF5bWVudF9yZXF1ZXN0GAkgASgJUg5wYXltZW50UmVxdWVzdBI0CgZzdGF0dXMYCiABKA4yHC5sbnJwYy5QYXltZW50LlBheW1lbnRTdGF0dXNSBnN0YXR1cxIXCgdmZWVfc2F0GAsgASgDUgZmZWVTYXQSGQoIZmVlX21zYXQYDCABKANSB2ZlZU1zYXQSKAoQY3JlYXRpb25fdGltZV9ucxgNIAEoA1IOY3JlYXRpb25UaW1lTnMSKAoFaHRsY3MYDiADKAsyEi5sbnJwYy5IVExDQXR0ZW1wdFIFaHRsY3MSIwoNcGF5bWVudF9pbmRleBgPIAEoBFIMcGF5bWVudEluZGV4EkIKDmZhaWx1cmVfcmVhc29uGBAgASgOMhsubG5ycGMuUGF5bWVudEZhaWx1cmVSZWFzb25SDWZhaWx1cmVSZWFzb24iRgoNUGF5bWVudFN0YXR1cxILCgdVTktOT1dOEAASDQoJSU5fRkxJR0hUEAESDQoJU1VDQ0VFREVEEAISCgoGRkFJTEVEEANKBAgEEAU=');
@$core.Deprecated('Use hTLCAttemptDescriptor instead')
const HTLCAttempt$json = const {
  '1': 'HTLCAttempt',
  '2': const [
    const {'1': 'attempt_id', '3': 7, '4': 1, '5': 4, '10': 'attemptId'},
    const {'1': 'status', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.HTLCAttempt.HTLCStatus', '10': 'status'},
    const {'1': 'route', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Route', '10': 'route'},
    const {'1': 'attempt_time_ns', '3': 3, '4': 1, '5': 3, '10': 'attemptTimeNs'},
    const {'1': 'resolve_time_ns', '3': 4, '4': 1, '5': 3, '10': 'resolveTimeNs'},
    const {'1': 'failure', '3': 5, '4': 1, '5': 11, '6': '.lnrpc.Failure', '10': 'failure'},
    const {'1': 'preimage', '3': 6, '4': 1, '5': 12, '10': 'preimage'},
  ],
  '4': const [HTLCAttempt_HTLCStatus$json],
};

@$core.Deprecated('Use hTLCAttemptDescriptor instead')
const HTLCAttempt_HTLCStatus$json = const {
  '1': 'HTLCStatus',
  '2': const [
    const {'1': 'IN_FLIGHT', '2': 0},
    const {'1': 'SUCCEEDED', '2': 1},
    const {'1': 'FAILED', '2': 2},
  ],
};

/// Descriptor for `HTLCAttempt`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List hTLCAttemptDescriptor = $convert.base64Decode('CgtIVExDQXR0ZW1wdBIdCgphdHRlbXB0X2lkGAcgASgEUglhdHRlbXB0SWQSNQoGc3RhdHVzGAEgASgOMh0ubG5ycGMuSFRMQ0F0dGVtcHQuSFRMQ1N0YXR1c1IGc3RhdHVzEiIKBXJvdXRlGAIgASgLMgwubG5ycGMuUm91dGVSBXJvdXRlEiYKD2F0dGVtcHRfdGltZV9ucxgDIAEoA1INYXR0ZW1wdFRpbWVOcxImCg9yZXNvbHZlX3RpbWVfbnMYBCABKANSDXJlc29sdmVUaW1lTnMSKAoHZmFpbHVyZRgFIAEoCzIOLmxucnBjLkZhaWx1cmVSB2ZhaWx1cmUSGgoIcHJlaW1hZ2UYBiABKAxSCHByZWltYWdlIjYKCkhUTENTdGF0dXMSDQoJSU5fRkxJR0hUEAASDQoJU1VDQ0VFREVEEAESCgoGRkFJTEVEEAI=');
@$core.Deprecated('Use listPaymentsRequestDescriptor instead')
const ListPaymentsRequest$json = const {
  '1': 'ListPaymentsRequest',
  '2': const [
    const {'1': 'include_incomplete', '3': 1, '4': 1, '5': 8, '10': 'includeIncomplete'},
    const {'1': 'index_offset', '3': 2, '4': 1, '5': 4, '10': 'indexOffset'},
    const {'1': 'max_payments', '3': 3, '4': 1, '5': 4, '10': 'maxPayments'},
    const {'1': 'reversed', '3': 4, '4': 1, '5': 8, '10': 'reversed'},
  ],
};

/// Descriptor for `ListPaymentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPaymentsRequestDescriptor = $convert.base64Decode('ChNMaXN0UGF5bWVudHNSZXF1ZXN0Ei0KEmluY2x1ZGVfaW5jb21wbGV0ZRgBIAEoCFIRaW5jbHVkZUluY29tcGxldGUSIQoMaW5kZXhfb2Zmc2V0GAIgASgEUgtpbmRleE9mZnNldBIhCgxtYXhfcGF5bWVudHMYAyABKARSC21heFBheW1lbnRzEhoKCHJldmVyc2VkGAQgASgIUghyZXZlcnNlZA==');
@$core.Deprecated('Use listPaymentsResponseDescriptor instead')
const ListPaymentsResponse$json = const {
  '1': 'ListPaymentsResponse',
  '2': const [
    const {'1': 'payments', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.Payment', '10': 'payments'},
    const {'1': 'first_index_offset', '3': 2, '4': 1, '5': 4, '10': 'firstIndexOffset'},
    const {'1': 'last_index_offset', '3': 3, '4': 1, '5': 4, '10': 'lastIndexOffset'},
  ],
};

/// Descriptor for `ListPaymentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPaymentsResponseDescriptor = $convert.base64Decode('ChRMaXN0UGF5bWVudHNSZXNwb25zZRIqCghwYXltZW50cxgBIAMoCzIOLmxucnBjLlBheW1lbnRSCHBheW1lbnRzEiwKEmZpcnN0X2luZGV4X29mZnNldBgCIAEoBFIQZmlyc3RJbmRleE9mZnNldBIqChFsYXN0X2luZGV4X29mZnNldBgDIAEoBFIPbGFzdEluZGV4T2Zmc2V0');
@$core.Deprecated('Use deleteAllPaymentsRequestDescriptor instead')
const DeleteAllPaymentsRequest$json = const {
  '1': 'DeleteAllPaymentsRequest',
};

/// Descriptor for `DeleteAllPaymentsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAllPaymentsRequestDescriptor = $convert.base64Decode('ChhEZWxldGVBbGxQYXltZW50c1JlcXVlc3Q=');
@$core.Deprecated('Use deleteAllPaymentsResponseDescriptor instead')
const DeleteAllPaymentsResponse$json = const {
  '1': 'DeleteAllPaymentsResponse',
};

/// Descriptor for `DeleteAllPaymentsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteAllPaymentsResponseDescriptor = $convert.base64Decode('ChlEZWxldGVBbGxQYXltZW50c1Jlc3BvbnNl');
@$core.Deprecated('Use abandonChannelRequestDescriptor instead')
const AbandonChannelRequest$json = const {
  '1': 'AbandonChannelRequest',
  '2': const [
    const {'1': 'channel_point', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'channelPoint'},
    const {'1': 'pending_funding_shim_only', '3': 2, '4': 1, '5': 8, '10': 'pendingFundingShimOnly'},
  ],
};

/// Descriptor for `AbandonChannelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List abandonChannelRequestDescriptor = $convert.base64Decode('ChVBYmFuZG9uQ2hhbm5lbFJlcXVlc3QSOAoNY2hhbm5lbF9wb2ludBgBIAEoCzITLmxucnBjLkNoYW5uZWxQb2ludFIMY2hhbm5lbFBvaW50EjkKGXBlbmRpbmdfZnVuZGluZ19zaGltX29ubHkYAiABKAhSFnBlbmRpbmdGdW5kaW5nU2hpbU9ubHk=');
@$core.Deprecated('Use abandonChannelResponseDescriptor instead')
const AbandonChannelResponse$json = const {
  '1': 'AbandonChannelResponse',
};

/// Descriptor for `AbandonChannelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List abandonChannelResponseDescriptor = $convert.base64Decode('ChZBYmFuZG9uQ2hhbm5lbFJlc3BvbnNl');
@$core.Deprecated('Use debugLevelRequestDescriptor instead')
const DebugLevelRequest$json = const {
  '1': 'DebugLevelRequest',
  '2': const [
    const {'1': 'show', '3': 1, '4': 1, '5': 8, '10': 'show'},
    const {'1': 'level_spec', '3': 2, '4': 1, '5': 9, '10': 'levelSpec'},
  ],
};

/// Descriptor for `DebugLevelRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List debugLevelRequestDescriptor = $convert.base64Decode('ChFEZWJ1Z0xldmVsUmVxdWVzdBISCgRzaG93GAEgASgIUgRzaG93Eh0KCmxldmVsX3NwZWMYAiABKAlSCWxldmVsU3BlYw==');
@$core.Deprecated('Use debugLevelResponseDescriptor instead')
const DebugLevelResponse$json = const {
  '1': 'DebugLevelResponse',
  '2': const [
    const {'1': 'sub_systems', '3': 1, '4': 1, '5': 9, '10': 'subSystems'},
  ],
};

/// Descriptor for `DebugLevelResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List debugLevelResponseDescriptor = $convert.base64Decode('ChJEZWJ1Z0xldmVsUmVzcG9uc2USHwoLc3ViX3N5c3RlbXMYASABKAlSCnN1YlN5c3RlbXM=');
@$core.Deprecated('Use payReqStringDescriptor instead')
const PayReqString$json = const {
  '1': 'PayReqString',
  '2': const [
    const {'1': 'pay_req', '3': 1, '4': 1, '5': 9, '10': 'payReq'},
  ],
};

/// Descriptor for `PayReqString`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payReqStringDescriptor = $convert.base64Decode('CgxQYXlSZXFTdHJpbmcSFwoHcGF5X3JlcRgBIAEoCVIGcGF5UmVx');
@$core.Deprecated('Use payReqDescriptor instead')
const PayReq$json = const {
  '1': 'PayReq',
  '2': const [
    const {'1': 'destination', '3': 1, '4': 1, '5': 9, '10': 'destination'},
    const {'1': 'payment_hash', '3': 2, '4': 1, '5': 9, '10': 'paymentHash'},
    const {'1': 'num_satoshis', '3': 3, '4': 1, '5': 3, '10': 'numSatoshis'},
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 3, '10': 'timestamp'},
    const {'1': 'expiry', '3': 5, '4': 1, '5': 3, '10': 'expiry'},
    const {'1': 'description', '3': 6, '4': 1, '5': 9, '10': 'description'},
    const {'1': 'description_hash', '3': 7, '4': 1, '5': 9, '10': 'descriptionHash'},
    const {'1': 'fallback_addr', '3': 8, '4': 1, '5': 9, '10': 'fallbackAddr'},
    const {'1': 'cltv_expiry', '3': 9, '4': 1, '5': 3, '10': 'cltvExpiry'},
    const {'1': 'route_hints', '3': 10, '4': 3, '5': 11, '6': '.lnrpc.RouteHint', '10': 'routeHints'},
    const {'1': 'payment_addr', '3': 11, '4': 1, '5': 12, '10': 'paymentAddr'},
    const {'1': 'num_msat', '3': 12, '4': 1, '5': 3, '10': 'numMsat'},
    const {'1': 'features', '3': 13, '4': 3, '5': 11, '6': '.lnrpc.PayReq.FeaturesEntry', '10': 'features'},
  ],
  '3': const [PayReq_FeaturesEntry$json],
};

@$core.Deprecated('Use payReqDescriptor instead')
const PayReq_FeaturesEntry$json = const {
  '1': 'FeaturesEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 13, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.Feature', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `PayReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List payReqDescriptor = $convert.base64Decode('CgZQYXlSZXESIAoLZGVzdGluYXRpb24YASABKAlSC2Rlc3RpbmF0aW9uEiEKDHBheW1lbnRfaGFzaBgCIAEoCVILcGF5bWVudEhhc2gSIQoMbnVtX3NhdG9zaGlzGAMgASgDUgtudW1TYXRvc2hpcxIcCgl0aW1lc3RhbXAYBCABKANSCXRpbWVzdGFtcBIWCgZleHBpcnkYBSABKANSBmV4cGlyeRIgCgtkZXNjcmlwdGlvbhgGIAEoCVILZGVzY3JpcHRpb24SKQoQZGVzY3JpcHRpb25faGFzaBgHIAEoCVIPZGVzY3JpcHRpb25IYXNoEiMKDWZhbGxiYWNrX2FkZHIYCCABKAlSDGZhbGxiYWNrQWRkchIfCgtjbHR2X2V4cGlyeRgJIAEoA1IKY2x0dkV4cGlyeRIxCgtyb3V0ZV9oaW50cxgKIAMoCzIQLmxucnBjLlJvdXRlSGludFIKcm91dGVIaW50cxIhCgxwYXltZW50X2FkZHIYCyABKAxSC3BheW1lbnRBZGRyEhkKCG51bV9tc2F0GAwgASgDUgdudW1Nc2F0EjcKCGZlYXR1cmVzGA0gAygLMhsubG5ycGMuUGF5UmVxLkZlYXR1cmVzRW50cnlSCGZlYXR1cmVzGksKDUZlYXR1cmVzRW50cnkSEAoDa2V5GAEgASgNUgNrZXkSJAoFdmFsdWUYAiABKAsyDi5sbnJwYy5GZWF0dXJlUgV2YWx1ZToCOAE=');
@$core.Deprecated('Use featureDescriptor instead')
const Feature$json = const {
  '1': 'Feature',
  '2': const [
    const {'1': 'name', '3': 2, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'is_required', '3': 3, '4': 1, '5': 8, '10': 'isRequired'},
    const {'1': 'is_known', '3': 4, '4': 1, '5': 8, '10': 'isKnown'},
  ],
};

/// Descriptor for `Feature`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List featureDescriptor = $convert.base64Decode('CgdGZWF0dXJlEhIKBG5hbWUYAiABKAlSBG5hbWUSHwoLaXNfcmVxdWlyZWQYAyABKAhSCmlzUmVxdWlyZWQSGQoIaXNfa25vd24YBCABKAhSB2lzS25vd24=');
@$core.Deprecated('Use feeReportRequestDescriptor instead')
const FeeReportRequest$json = const {
  '1': 'FeeReportRequest',
};

/// Descriptor for `FeeReportRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeReportRequestDescriptor = $convert.base64Decode('ChBGZWVSZXBvcnRSZXF1ZXN0');
@$core.Deprecated('Use channelFeeReportDescriptor instead')
const ChannelFeeReport$json = const {
  '1': 'ChannelFeeReport',
  '2': const [
    const {
      '1': 'chan_id',
      '3': 5,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'channel_point', '3': 1, '4': 1, '5': 9, '10': 'channelPoint'},
    const {'1': 'base_fee_msat', '3': 2, '4': 1, '5': 3, '10': 'baseFeeMsat'},
    const {'1': 'fee_per_mil', '3': 3, '4': 1, '5': 3, '10': 'feePerMil'},
    const {'1': 'fee_rate', '3': 4, '4': 1, '5': 1, '10': 'feeRate'},
  ],
};

/// Descriptor for `ChannelFeeReport`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelFeeReportDescriptor = $convert.base64Decode('ChBDaGFubmVsRmVlUmVwb3J0EhsKB2NoYW5faWQYBSABKARCAjABUgZjaGFuSWQSIwoNY2hhbm5lbF9wb2ludBgBIAEoCVIMY2hhbm5lbFBvaW50EiIKDWJhc2VfZmVlX21zYXQYAiABKANSC2Jhc2VGZWVNc2F0Eh4KC2ZlZV9wZXJfbWlsGAMgASgDUglmZWVQZXJNaWwSGQoIZmVlX3JhdGUYBCABKAFSB2ZlZVJhdGU=');
@$core.Deprecated('Use feeReportResponseDescriptor instead')
const FeeReportResponse$json = const {
  '1': 'FeeReportResponse',
  '2': const [
    const {'1': 'channel_fees', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.ChannelFeeReport', '10': 'channelFees'},
    const {'1': 'day_fee_sum', '3': 2, '4': 1, '5': 4, '10': 'dayFeeSum'},
    const {'1': 'week_fee_sum', '3': 3, '4': 1, '5': 4, '10': 'weekFeeSum'},
    const {'1': 'month_fee_sum', '3': 4, '4': 1, '5': 4, '10': 'monthFeeSum'},
  ],
};

/// Descriptor for `FeeReportResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List feeReportResponseDescriptor = $convert.base64Decode('ChFGZWVSZXBvcnRSZXNwb25zZRI6CgxjaGFubmVsX2ZlZXMYASADKAsyFy5sbnJwYy5DaGFubmVsRmVlUmVwb3J0UgtjaGFubmVsRmVlcxIeCgtkYXlfZmVlX3N1bRgCIAEoBFIJZGF5RmVlU3VtEiAKDHdlZWtfZmVlX3N1bRgDIAEoBFIKd2Vla0ZlZVN1bRIiCg1tb250aF9mZWVfc3VtGAQgASgEUgttb250aEZlZVN1bQ==');
@$core.Deprecated('Use policyUpdateRequestDescriptor instead')
const PolicyUpdateRequest$json = const {
  '1': 'PolicyUpdateRequest',
  '2': const [
    const {'1': 'global', '3': 1, '4': 1, '5': 8, '9': 0, '10': 'global'},
    const {'1': 'chan_point', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '9': 0, '10': 'chanPoint'},
    const {'1': 'base_fee_msat', '3': 3, '4': 1, '5': 3, '10': 'baseFeeMsat'},
    const {'1': 'fee_rate', '3': 4, '4': 1, '5': 1, '10': 'feeRate'},
    const {'1': 'time_lock_delta', '3': 5, '4': 1, '5': 13, '10': 'timeLockDelta'},
    const {'1': 'max_htlc_msat', '3': 6, '4': 1, '5': 4, '10': 'maxHtlcMsat'},
    const {'1': 'min_htlc_msat', '3': 7, '4': 1, '5': 4, '10': 'minHtlcMsat'},
    const {'1': 'min_htlc_msat_specified', '3': 8, '4': 1, '5': 8, '10': 'minHtlcMsatSpecified'},
  ],
  '8': const [
    const {'1': 'scope'},
  ],
};

/// Descriptor for `PolicyUpdateRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyUpdateRequestDescriptor = $convert.base64Decode('ChNQb2xpY3lVcGRhdGVSZXF1ZXN0EhgKBmdsb2JhbBgBIAEoCEgAUgZnbG9iYWwSNAoKY2hhbl9wb2ludBgCIAEoCzITLmxucnBjLkNoYW5uZWxQb2ludEgAUgljaGFuUG9pbnQSIgoNYmFzZV9mZWVfbXNhdBgDIAEoA1ILYmFzZUZlZU1zYXQSGQoIZmVlX3JhdGUYBCABKAFSB2ZlZVJhdGUSJgoPdGltZV9sb2NrX2RlbHRhGAUgASgNUg10aW1lTG9ja0RlbHRhEiIKDW1heF9odGxjX21zYXQYBiABKARSC21heEh0bGNNc2F0EiIKDW1pbl9odGxjX21zYXQYByABKARSC21pbkh0bGNNc2F0EjUKF21pbl9odGxjX21zYXRfc3BlY2lmaWVkGAggASgIUhRtaW5IdGxjTXNhdFNwZWNpZmllZEIHCgVzY29wZQ==');
@$core.Deprecated('Use policyUpdateResponseDescriptor instead')
const PolicyUpdateResponse$json = const {
  '1': 'PolicyUpdateResponse',
};

/// Descriptor for `PolicyUpdateResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyUpdateResponseDescriptor = $convert.base64Decode('ChRQb2xpY3lVcGRhdGVSZXNwb25zZQ==');
@$core.Deprecated('Use forwardingHistoryRequestDescriptor instead')
const ForwardingHistoryRequest$json = const {
  '1': 'ForwardingHistoryRequest',
  '2': const [
    const {'1': 'start_time', '3': 1, '4': 1, '5': 4, '10': 'startTime'},
    const {'1': 'end_time', '3': 2, '4': 1, '5': 4, '10': 'endTime'},
    const {'1': 'index_offset', '3': 3, '4': 1, '5': 13, '10': 'indexOffset'},
    const {'1': 'num_max_events', '3': 4, '4': 1, '5': 13, '10': 'numMaxEvents'},
  ],
};

/// Descriptor for `ForwardingHistoryRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forwardingHistoryRequestDescriptor = $convert.base64Decode('ChhGb3J3YXJkaW5nSGlzdG9yeVJlcXVlc3QSHQoKc3RhcnRfdGltZRgBIAEoBFIJc3RhcnRUaW1lEhkKCGVuZF90aW1lGAIgASgEUgdlbmRUaW1lEiEKDGluZGV4X29mZnNldBgDIAEoDVILaW5kZXhPZmZzZXQSJAoObnVtX21heF9ldmVudHMYBCABKA1SDG51bU1heEV2ZW50cw==');
@$core.Deprecated('Use forwardingEventDescriptor instead')
const ForwardingEvent$json = const {
  '1': 'ForwardingEvent',
  '2': const [
    const {'1': 'timestamp', '3': 1, '4': 1, '5': 4, '10': 'timestamp'},
    const {
      '1': 'chan_id_in',
      '3': 2,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanIdIn',
    },
    const {
      '1': 'chan_id_out',
      '3': 4,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanIdOut',
    },
    const {'1': 'amt_in', '3': 5, '4': 1, '5': 4, '10': 'amtIn'},
    const {'1': 'amt_out', '3': 6, '4': 1, '5': 4, '10': 'amtOut'},
    const {'1': 'fee', '3': 7, '4': 1, '5': 4, '10': 'fee'},
    const {'1': 'fee_msat', '3': 8, '4': 1, '5': 4, '10': 'feeMsat'},
    const {'1': 'amt_in_msat', '3': 9, '4': 1, '5': 4, '10': 'amtInMsat'},
    const {'1': 'amt_out_msat', '3': 10, '4': 1, '5': 4, '10': 'amtOutMsat'},
  ],
};

/// Descriptor for `ForwardingEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forwardingEventDescriptor = $convert.base64Decode('Cg9Gb3J3YXJkaW5nRXZlbnQSHAoJdGltZXN0YW1wGAEgASgEUgl0aW1lc3RhbXASIAoKY2hhbl9pZF9pbhgCIAEoBEICMAFSCGNoYW5JZEluEiIKC2NoYW5faWRfb3V0GAQgASgEQgIwAVIJY2hhbklkT3V0EhUKBmFtdF9pbhgFIAEoBFIFYW10SW4SFwoHYW10X291dBgGIAEoBFIGYW10T3V0EhAKA2ZlZRgHIAEoBFIDZmVlEhkKCGZlZV9tc2F0GAggASgEUgdmZWVNc2F0Eh4KC2FtdF9pbl9tc2F0GAkgASgEUglhbXRJbk1zYXQSIAoMYW10X291dF9tc2F0GAogASgEUgphbXRPdXRNc2F0');
@$core.Deprecated('Use forwardingHistoryResponseDescriptor instead')
const ForwardingHistoryResponse$json = const {
  '1': 'ForwardingHistoryResponse',
  '2': const [
    const {'1': 'forwarding_events', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.ForwardingEvent', '10': 'forwardingEvents'},
    const {'1': 'last_offset_index', '3': 2, '4': 1, '5': 13, '10': 'lastOffsetIndex'},
  ],
};

/// Descriptor for `ForwardingHistoryResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List forwardingHistoryResponseDescriptor = $convert.base64Decode('ChlGb3J3YXJkaW5nSGlzdG9yeVJlc3BvbnNlEkMKEWZvcndhcmRpbmdfZXZlbnRzGAEgAygLMhYubG5ycGMuRm9yd2FyZGluZ0V2ZW50UhBmb3J3YXJkaW5nRXZlbnRzEioKEWxhc3Rfb2Zmc2V0X2luZGV4GAIgASgNUg9sYXN0T2Zmc2V0SW5kZXg=');
@$core.Deprecated('Use exportChannelBackupRequestDescriptor instead')
const ExportChannelBackupRequest$json = const {
  '1': 'ExportChannelBackupRequest',
  '2': const [
    const {'1': 'chan_point', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'chanPoint'},
  ],
};

/// Descriptor for `ExportChannelBackupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List exportChannelBackupRequestDescriptor = $convert.base64Decode('ChpFeHBvcnRDaGFubmVsQmFja3VwUmVxdWVzdBIyCgpjaGFuX3BvaW50GAEgASgLMhMubG5ycGMuQ2hhbm5lbFBvaW50UgljaGFuUG9pbnQ=');
@$core.Deprecated('Use channelBackupDescriptor instead')
const ChannelBackup$json = const {
  '1': 'ChannelBackup',
  '2': const [
    const {'1': 'chan_point', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'chanPoint'},
    const {'1': 'chan_backup', '3': 2, '4': 1, '5': 12, '10': 'chanBackup'},
  ],
};

/// Descriptor for `ChannelBackup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelBackupDescriptor = $convert.base64Decode('Cg1DaGFubmVsQmFja3VwEjIKCmNoYW5fcG9pbnQYASABKAsyEy5sbnJwYy5DaGFubmVsUG9pbnRSCWNoYW5Qb2ludBIfCgtjaGFuX2JhY2t1cBgCIAEoDFIKY2hhbkJhY2t1cA==');
@$core.Deprecated('Use multiChanBackupDescriptor instead')
const MultiChanBackup$json = const {
  '1': 'MultiChanBackup',
  '2': const [
    const {'1': 'chan_points', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.ChannelPoint', '10': 'chanPoints'},
    const {'1': 'multi_chan_backup', '3': 2, '4': 1, '5': 12, '10': 'multiChanBackup'},
  ],
};

/// Descriptor for `MultiChanBackup`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List multiChanBackupDescriptor = $convert.base64Decode('Cg9NdWx0aUNoYW5CYWNrdXASNAoLY2hhbl9wb2ludHMYASADKAsyEy5sbnJwYy5DaGFubmVsUG9pbnRSCmNoYW5Qb2ludHMSKgoRbXVsdGlfY2hhbl9iYWNrdXAYAiABKAxSD211bHRpQ2hhbkJhY2t1cA==');
@$core.Deprecated('Use chanBackupExportRequestDescriptor instead')
const ChanBackupExportRequest$json = const {
  '1': 'ChanBackupExportRequest',
};

/// Descriptor for `ChanBackupExportRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chanBackupExportRequestDescriptor = $convert.base64Decode('ChdDaGFuQmFja3VwRXhwb3J0UmVxdWVzdA==');
@$core.Deprecated('Use chanBackupSnapshotDescriptor instead')
const ChanBackupSnapshot$json = const {
  '1': 'ChanBackupSnapshot',
  '2': const [
    const {'1': 'single_chan_backups', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelBackups', '10': 'singleChanBackups'},
    const {'1': 'multi_chan_backup', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.MultiChanBackup', '10': 'multiChanBackup'},
  ],
};

/// Descriptor for `ChanBackupSnapshot`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List chanBackupSnapshotDescriptor = $convert.base64Decode('ChJDaGFuQmFja3VwU25hcHNob3QSRQoTc2luZ2xlX2NoYW5fYmFja3VwcxgBIAEoCzIVLmxucnBjLkNoYW5uZWxCYWNrdXBzUhFzaW5nbGVDaGFuQmFja3VwcxJCChFtdWx0aV9jaGFuX2JhY2t1cBgCIAEoCzIWLmxucnBjLk11bHRpQ2hhbkJhY2t1cFIPbXVsdGlDaGFuQmFja3Vw');
@$core.Deprecated('Use channelBackupsDescriptor instead')
const ChannelBackups$json = const {
  '1': 'ChannelBackups',
  '2': const [
    const {'1': 'chan_backups', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.ChannelBackup', '10': 'chanBackups'},
  ],
};

/// Descriptor for `ChannelBackups`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelBackupsDescriptor = $convert.base64Decode('Cg5DaGFubmVsQmFja3VwcxI3CgxjaGFuX2JhY2t1cHMYASADKAsyFC5sbnJwYy5DaGFubmVsQmFja3VwUgtjaGFuQmFja3Vwcw==');
@$core.Deprecated('Use restoreChanBackupRequestDescriptor instead')
const RestoreChanBackupRequest$json = const {
  '1': 'RestoreChanBackupRequest',
  '2': const [
    const {'1': 'chan_backups', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.ChannelBackups', '9': 0, '10': 'chanBackups'},
    const {'1': 'multi_chan_backup', '3': 2, '4': 1, '5': 12, '9': 0, '10': 'multiChanBackup'},
  ],
  '8': const [
    const {'1': 'backup'},
  ],
};

/// Descriptor for `RestoreChanBackupRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restoreChanBackupRequestDescriptor = $convert.base64Decode('ChhSZXN0b3JlQ2hhbkJhY2t1cFJlcXVlc3QSOgoMY2hhbl9iYWNrdXBzGAEgASgLMhUubG5ycGMuQ2hhbm5lbEJhY2t1cHNIAFILY2hhbkJhY2t1cHMSLAoRbXVsdGlfY2hhbl9iYWNrdXAYAiABKAxIAFIPbXVsdGlDaGFuQmFja3VwQggKBmJhY2t1cA==');
@$core.Deprecated('Use restoreBackupResponseDescriptor instead')
const RestoreBackupResponse$json = const {
  '1': 'RestoreBackupResponse',
};

/// Descriptor for `RestoreBackupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List restoreBackupResponseDescriptor = $convert.base64Decode('ChVSZXN0b3JlQmFja3VwUmVzcG9uc2U=');
@$core.Deprecated('Use channelBackupSubscriptionDescriptor instead')
const ChannelBackupSubscription$json = const {
  '1': 'ChannelBackupSubscription',
};

/// Descriptor for `ChannelBackupSubscription`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelBackupSubscriptionDescriptor = $convert.base64Decode('ChlDaGFubmVsQmFja3VwU3Vic2NyaXB0aW9u');
@$core.Deprecated('Use verifyChanBackupResponseDescriptor instead')
const VerifyChanBackupResponse$json = const {
  '1': 'VerifyChanBackupResponse',
};

/// Descriptor for `VerifyChanBackupResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyChanBackupResponseDescriptor = $convert.base64Decode('ChhWZXJpZnlDaGFuQmFja3VwUmVzcG9uc2U=');
@$core.Deprecated('Use macaroonPermissionDescriptor instead')
const MacaroonPermission$json = const {
  '1': 'MacaroonPermission',
  '2': const [
    const {'1': 'entity', '3': 1, '4': 1, '5': 9, '10': 'entity'},
    const {'1': 'action', '3': 2, '4': 1, '5': 9, '10': 'action'},
  ],
};

/// Descriptor for `MacaroonPermission`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List macaroonPermissionDescriptor = $convert.base64Decode('ChJNYWNhcm9vblBlcm1pc3Npb24SFgoGZW50aXR5GAEgASgJUgZlbnRpdHkSFgoGYWN0aW9uGAIgASgJUgZhY3Rpb24=');
@$core.Deprecated('Use bakeMacaroonRequestDescriptor instead')
const BakeMacaroonRequest$json = const {
  '1': 'BakeMacaroonRequest',
  '2': const [
    const {'1': 'permissions', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.MacaroonPermission', '10': 'permissions'},
    const {'1': 'root_key_id', '3': 2, '4': 1, '5': 4, '10': 'rootKeyId'},
  ],
};

/// Descriptor for `BakeMacaroonRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bakeMacaroonRequestDescriptor = $convert.base64Decode('ChNCYWtlTWFjYXJvb25SZXF1ZXN0EjsKC3Blcm1pc3Npb25zGAEgAygLMhkubG5ycGMuTWFjYXJvb25QZXJtaXNzaW9uUgtwZXJtaXNzaW9ucxIeCgtyb290X2tleV9pZBgCIAEoBFIJcm9vdEtleUlk');
@$core.Deprecated('Use bakeMacaroonResponseDescriptor instead')
const BakeMacaroonResponse$json = const {
  '1': 'BakeMacaroonResponse',
  '2': const [
    const {'1': 'macaroon', '3': 1, '4': 1, '5': 9, '10': 'macaroon'},
  ],
};

/// Descriptor for `BakeMacaroonResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bakeMacaroonResponseDescriptor = $convert.base64Decode('ChRCYWtlTWFjYXJvb25SZXNwb25zZRIaCghtYWNhcm9vbhgBIAEoCVIIbWFjYXJvb24=');
@$core.Deprecated('Use listMacaroonIDsRequestDescriptor instead')
const ListMacaroonIDsRequest$json = const {
  '1': 'ListMacaroonIDsRequest',
};

/// Descriptor for `ListMacaroonIDsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listMacaroonIDsRequestDescriptor = $convert.base64Decode('ChZMaXN0TWFjYXJvb25JRHNSZXF1ZXN0');
@$core.Deprecated('Use listMacaroonIDsResponseDescriptor instead')
const ListMacaroonIDsResponse$json = const {
  '1': 'ListMacaroonIDsResponse',
  '2': const [
    const {'1': 'root_key_ids', '3': 1, '4': 3, '5': 4, '10': 'rootKeyIds'},
  ],
};

/// Descriptor for `ListMacaroonIDsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listMacaroonIDsResponseDescriptor = $convert.base64Decode('ChdMaXN0TWFjYXJvb25JRHNSZXNwb25zZRIgCgxyb290X2tleV9pZHMYASADKARSCnJvb3RLZXlJZHM=');
@$core.Deprecated('Use deleteMacaroonIDRequestDescriptor instead')
const DeleteMacaroonIDRequest$json = const {
  '1': 'DeleteMacaroonIDRequest',
  '2': const [
    const {'1': 'root_key_id', '3': 1, '4': 1, '5': 4, '10': 'rootKeyId'},
  ],
};

/// Descriptor for `DeleteMacaroonIDRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteMacaroonIDRequestDescriptor = $convert.base64Decode('ChdEZWxldGVNYWNhcm9vbklEUmVxdWVzdBIeCgtyb290X2tleV9pZBgBIAEoBFIJcm9vdEtleUlk');
@$core.Deprecated('Use deleteMacaroonIDResponseDescriptor instead')
const DeleteMacaroonIDResponse$json = const {
  '1': 'DeleteMacaroonIDResponse',
  '2': const [
    const {'1': 'deleted', '3': 1, '4': 1, '5': 8, '10': 'deleted'},
  ],
};

/// Descriptor for `DeleteMacaroonIDResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List deleteMacaroonIDResponseDescriptor = $convert.base64Decode('ChhEZWxldGVNYWNhcm9vbklEUmVzcG9uc2USGAoHZGVsZXRlZBgBIAEoCFIHZGVsZXRlZA==');
@$core.Deprecated('Use macaroonPermissionListDescriptor instead')
const MacaroonPermissionList$json = const {
  '1': 'MacaroonPermissionList',
  '2': const [
    const {'1': 'permissions', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.MacaroonPermission', '10': 'permissions'},
  ],
};

/// Descriptor for `MacaroonPermissionList`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List macaroonPermissionListDescriptor = $convert.base64Decode('ChZNYWNhcm9vblBlcm1pc3Npb25MaXN0EjsKC3Blcm1pc3Npb25zGAEgAygLMhkubG5ycGMuTWFjYXJvb25QZXJtaXNzaW9uUgtwZXJtaXNzaW9ucw==');
@$core.Deprecated('Use listPermissionsRequestDescriptor instead')
const ListPermissionsRequest$json = const {
  '1': 'ListPermissionsRequest',
};

/// Descriptor for `ListPermissionsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPermissionsRequestDescriptor = $convert.base64Decode('ChZMaXN0UGVybWlzc2lvbnNSZXF1ZXN0');
@$core.Deprecated('Use listPermissionsResponseDescriptor instead')
const ListPermissionsResponse$json = const {
  '1': 'ListPermissionsResponse',
  '2': const [
    const {'1': 'method_permissions', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.ListPermissionsResponse.MethodPermissionsEntry', '10': 'methodPermissions'},
  ],
  '3': const [ListPermissionsResponse_MethodPermissionsEntry$json],
};

@$core.Deprecated('Use listPermissionsResponseDescriptor instead')
const ListPermissionsResponse_MethodPermissionsEntry$json = const {
  '1': 'MethodPermissionsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.MacaroonPermissionList', '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `ListPermissionsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listPermissionsResponseDescriptor = $convert.base64Decode('ChdMaXN0UGVybWlzc2lvbnNSZXNwb25zZRJkChJtZXRob2RfcGVybWlzc2lvbnMYASADKAsyNS5sbnJwYy5MaXN0UGVybWlzc2lvbnNSZXNwb25zZS5NZXRob2RQZXJtaXNzaW9uc0VudHJ5UhFtZXRob2RQZXJtaXNzaW9ucxpjChZNZXRob2RQZXJtaXNzaW9uc0VudHJ5EhAKA2tleRgBIAEoCVIDa2V5EjMKBXZhbHVlGAIgASgLMh0ubG5ycGMuTWFjYXJvb25QZXJtaXNzaW9uTGlzdFIFdmFsdWU6AjgB');
@$core.Deprecated('Use failureDescriptor instead')
const Failure$json = const {
  '1': 'Failure',
  '2': const [
    const {'1': 'code', '3': 1, '4': 1, '5': 14, '6': '.lnrpc.Failure.FailureCode', '10': 'code'},
    const {'1': 'channel_update', '3': 3, '4': 1, '5': 11, '6': '.lnrpc.ChannelUpdate', '10': 'channelUpdate'},
    const {'1': 'htlc_msat', '3': 4, '4': 1, '5': 4, '10': 'htlcMsat'},
    const {'1': 'onion_sha_256', '3': 5, '4': 1, '5': 12, '10': 'onionSha256'},
    const {'1': 'cltv_expiry', '3': 6, '4': 1, '5': 13, '10': 'cltvExpiry'},
    const {'1': 'flags', '3': 7, '4': 1, '5': 13, '10': 'flags'},
    const {'1': 'failure_source_index', '3': 8, '4': 1, '5': 13, '10': 'failureSourceIndex'},
    const {'1': 'height', '3': 9, '4': 1, '5': 13, '10': 'height'},
  ],
  '4': const [Failure_FailureCode$json],
  '9': const [
    const {'1': 2, '2': 3},
  ],
};

@$core.Deprecated('Use failureDescriptor instead')
const Failure_FailureCode$json = const {
  '1': 'FailureCode',
  '2': const [
    const {'1': 'RESERVED', '2': 0},
    const {'1': 'INCORRECT_OR_UNKNOWN_PAYMENT_DETAILS', '2': 1},
    const {'1': 'INCORRECT_PAYMENT_AMOUNT', '2': 2},
    const {'1': 'FINAL_INCORRECT_CLTV_EXPIRY', '2': 3},
    const {'1': 'FINAL_INCORRECT_HTLC_AMOUNT', '2': 4},
    const {'1': 'FINAL_EXPIRY_TOO_SOON', '2': 5},
    const {'1': 'INVALID_REALM', '2': 6},
    const {'1': 'EXPIRY_TOO_SOON', '2': 7},
    const {'1': 'INVALID_ONION_VERSION', '2': 8},
    const {'1': 'INVALID_ONION_HMAC', '2': 9},
    const {'1': 'INVALID_ONION_KEY', '2': 10},
    const {'1': 'AMOUNT_BELOW_MINIMUM', '2': 11},
    const {'1': 'FEE_INSUFFICIENT', '2': 12},
    const {'1': 'INCORRECT_CLTV_EXPIRY', '2': 13},
    const {'1': 'CHANNEL_DISABLED', '2': 14},
    const {'1': 'TEMPORARY_CHANNEL_FAILURE', '2': 15},
    const {'1': 'REQUIRED_NODE_FEATURE_MISSING', '2': 16},
    const {'1': 'REQUIRED_CHANNEL_FEATURE_MISSING', '2': 17},
    const {'1': 'UNKNOWN_NEXT_PEER', '2': 18},
    const {'1': 'TEMPORARY_NODE_FAILURE', '2': 19},
    const {'1': 'PERMANENT_NODE_FAILURE', '2': 20},
    const {'1': 'PERMANENT_CHANNEL_FAILURE', '2': 21},
    const {'1': 'EXPIRY_TOO_FAR', '2': 22},
    const {'1': 'MPP_TIMEOUT', '2': 23},
    const {'1': 'INTERNAL_FAILURE', '2': 997},
    const {'1': 'UNKNOWN_FAILURE', '2': 998},
    const {'1': 'UNREADABLE_FAILURE', '2': 999},
  ],
};

/// Descriptor for `Failure`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List failureDescriptor = $convert.base64Decode('CgdGYWlsdXJlEi4KBGNvZGUYASABKA4yGi5sbnJwYy5GYWlsdXJlLkZhaWx1cmVDb2RlUgRjb2RlEjsKDmNoYW5uZWxfdXBkYXRlGAMgASgLMhQubG5ycGMuQ2hhbm5lbFVwZGF0ZVINY2hhbm5lbFVwZGF0ZRIbCglodGxjX21zYXQYBCABKARSCGh0bGNNc2F0EiIKDW9uaW9uX3NoYV8yNTYYBSABKAxSC29uaW9uU2hhMjU2Eh8KC2NsdHZfZXhwaXJ5GAYgASgNUgpjbHR2RXhwaXJ5EhQKBWZsYWdzGAcgASgNUgVmbGFncxIwChRmYWlsdXJlX3NvdXJjZV9pbmRleBgIIAEoDVISZmFpbHVyZVNvdXJjZUluZGV4EhYKBmhlaWdodBgJIAEoDVIGaGVpZ2h0ItQFCgtGYWlsdXJlQ29kZRIMCghSRVNFUlZFRBAAEigKJElOQ09SUkVDVF9PUl9VTktOT1dOX1BBWU1FTlRfREVUQUlMUxABEhwKGElOQ09SUkVDVF9QQVlNRU5UX0FNT1VOVBACEh8KG0ZJTkFMX0lOQ09SUkVDVF9DTFRWX0VYUElSWRADEh8KG0ZJTkFMX0lOQ09SUkVDVF9IVExDX0FNT1VOVBAEEhkKFUZJTkFMX0VYUElSWV9UT09fU09PThAFEhEKDUlOVkFMSURfUkVBTE0QBhITCg9FWFBJUllfVE9PX1NPT04QBxIZChVJTlZBTElEX09OSU9OX1ZFUlNJT04QCBIWChJJTlZBTElEX09OSU9OX0hNQUMQCRIVChFJTlZBTElEX09OSU9OX0tFWRAKEhgKFEFNT1VOVF9CRUxPV19NSU5JTVVNEAsSFAoQRkVFX0lOU1VGRklDSUVOVBAMEhkKFUlOQ09SUkVDVF9DTFRWX0VYUElSWRANEhQKEENIQU5ORUxfRElTQUJMRUQQDhIdChlURU1QT1JBUllfQ0hBTk5FTF9GQUlMVVJFEA8SIQodUkVRVUlSRURfTk9ERV9GRUFUVVJFX01JU1NJTkcQEBIkCiBSRVFVSVJFRF9DSEFOTkVMX0ZFQVRVUkVfTUlTU0lORxAREhUKEVVOS05PV05fTkVYVF9QRUVSEBISGgoWVEVNUE9SQVJZX05PREVfRkFJTFVSRRATEhoKFlBFUk1BTkVOVF9OT0RFX0ZBSUxVUkUQFBIdChlQRVJNQU5FTlRfQ0hBTk5FTF9GQUlMVVJFEBUSEgoORVhQSVJZX1RPT19GQVIQFhIPCgtNUFBfVElNRU9VVBAXEhUKEElOVEVSTkFMX0ZBSUxVUkUQ5QcSFAoPVU5LTk9XTl9GQUlMVVJFEOYHEhcKElVOUkVBREFCTEVfRkFJTFVSRRDnB0oECAIQAw==');
@$core.Deprecated('Use channelUpdateDescriptor instead')
const ChannelUpdate$json = const {
  '1': 'ChannelUpdate',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'chain_hash', '3': 2, '4': 1, '5': 12, '10': 'chainHash'},
    const {
      '1': 'chan_id',
      '3': 3,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 13, '10': 'timestamp'},
    const {'1': 'message_flags', '3': 10, '4': 1, '5': 13, '10': 'messageFlags'},
    const {'1': 'channel_flags', '3': 5, '4': 1, '5': 13, '10': 'channelFlags'},
    const {'1': 'time_lock_delta', '3': 6, '4': 1, '5': 13, '10': 'timeLockDelta'},
    const {'1': 'htlc_minimum_msat', '3': 7, '4': 1, '5': 4, '10': 'htlcMinimumMsat'},
    const {'1': 'base_fee', '3': 8, '4': 1, '5': 13, '10': 'baseFee'},
    const {'1': 'fee_rate', '3': 9, '4': 1, '5': 13, '10': 'feeRate'},
    const {'1': 'htlc_maximum_msat', '3': 11, '4': 1, '5': 4, '10': 'htlcMaximumMsat'},
    const {'1': 'extra_opaque_data', '3': 12, '4': 1, '5': 12, '10': 'extraOpaqueData'},
  ],
};

/// Descriptor for `ChannelUpdate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List channelUpdateDescriptor = $convert.base64Decode('Cg1DaGFubmVsVXBkYXRlEhwKCXNpZ25hdHVyZRgBIAEoDFIJc2lnbmF0dXJlEh0KCmNoYWluX2hhc2gYAiABKAxSCWNoYWluSGFzaBIbCgdjaGFuX2lkGAMgASgEQgIwAVIGY2hhbklkEhwKCXRpbWVzdGFtcBgEIAEoDVIJdGltZXN0YW1wEiMKDW1lc3NhZ2VfZmxhZ3MYCiABKA1SDG1lc3NhZ2VGbGFncxIjCg1jaGFubmVsX2ZsYWdzGAUgASgNUgxjaGFubmVsRmxhZ3MSJgoPdGltZV9sb2NrX2RlbHRhGAYgASgNUg10aW1lTG9ja0RlbHRhEioKEWh0bGNfbWluaW11bV9tc2F0GAcgASgEUg9odGxjTWluaW11bU1zYXQSGQoIYmFzZV9mZWUYCCABKA1SB2Jhc2VGZWUSGQoIZmVlX3JhdGUYCSABKA1SB2ZlZVJhdGUSKgoRaHRsY19tYXhpbXVtX21zYXQYCyABKARSD2h0bGNNYXhpbXVtTXNhdBIqChFleHRyYV9vcGFxdWVfZGF0YRgMIAEoDFIPZXh0cmFPcGFxdWVEYXRh');
@$core.Deprecated('Use macaroonIdDescriptor instead')
const MacaroonId$json = const {
  '1': 'MacaroonId',
  '2': const [
    const {'1': 'nonce', '3': 1, '4': 1, '5': 12, '10': 'nonce'},
    const {'1': 'storageId', '3': 2, '4': 1, '5': 12, '10': 'storageId'},
    const {'1': 'ops', '3': 3, '4': 3, '5': 11, '6': '.lnrpc.Op', '10': 'ops'},
  ],
};

/// Descriptor for `MacaroonId`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List macaroonIdDescriptor = $convert.base64Decode('CgpNYWNhcm9vbklkEhQKBW5vbmNlGAEgASgMUgVub25jZRIcCglzdG9yYWdlSWQYAiABKAxSCXN0b3JhZ2VJZBIbCgNvcHMYAyADKAsyCS5sbnJwYy5PcFIDb3Bz');
@$core.Deprecated('Use opDescriptor instead')
const Op$json = const {
  '1': 'Op',
  '2': const [
    const {'1': 'entity', '3': 1, '4': 1, '5': 9, '10': 'entity'},
    const {'1': 'actions', '3': 2, '4': 3, '5': 9, '10': 'actions'},
  ],
};

/// Descriptor for `Op`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List opDescriptor = $convert.base64Decode('CgJPcBIWCgZlbnRpdHkYASABKAlSBmVudGl0eRIYCgdhY3Rpb25zGAIgAygJUgdhY3Rpb25z');
