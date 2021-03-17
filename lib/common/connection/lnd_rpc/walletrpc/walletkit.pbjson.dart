///
//  Generated code. Do not modify.
//  source: walletrpc/walletkit.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use witnessTypeDescriptor instead')
const WitnessType$json = const {
  '1': 'WitnessType',
  '2': const [
    const {'1': 'UNKNOWN_WITNESS', '2': 0},
    const {'1': 'COMMITMENT_TIME_LOCK', '2': 1},
    const {'1': 'COMMITMENT_NO_DELAY', '2': 2},
    const {'1': 'COMMITMENT_REVOKE', '2': 3},
    const {'1': 'HTLC_OFFERED_REVOKE', '2': 4},
    const {'1': 'HTLC_ACCEPTED_REVOKE', '2': 5},
    const {'1': 'HTLC_OFFERED_TIMEOUT_SECOND_LEVEL', '2': 6},
    const {'1': 'HTLC_ACCEPTED_SUCCESS_SECOND_LEVEL', '2': 7},
    const {'1': 'HTLC_OFFERED_REMOTE_TIMEOUT', '2': 8},
    const {'1': 'HTLC_ACCEPTED_REMOTE_SUCCESS', '2': 9},
    const {'1': 'HTLC_SECOND_LEVEL_REVOKE', '2': 10},
    const {'1': 'WITNESS_KEY_HASH', '2': 11},
    const {'1': 'NESTED_WITNESS_KEY_HASH', '2': 12},
    const {'1': 'COMMITMENT_ANCHOR', '2': 13},
  ],
};

/// Descriptor for `WitnessType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List witnessTypeDescriptor = $convert.base64Decode('CgtXaXRuZXNzVHlwZRITCg9VTktOT1dOX1dJVE5FU1MQABIYChRDT01NSVRNRU5UX1RJTUVfTE9DSxABEhcKE0NPTU1JVE1FTlRfTk9fREVMQVkQAhIVChFDT01NSVRNRU5UX1JFVk9LRRADEhcKE0hUTENfT0ZGRVJFRF9SRVZPS0UQBBIYChRIVExDX0FDQ0VQVEVEX1JFVk9LRRAFEiUKIUhUTENfT0ZGRVJFRF9USU1FT1VUX1NFQ09ORF9MRVZFTBAGEiYKIkhUTENfQUNDRVBURURfU1VDQ0VTU19TRUNPTkRfTEVWRUwQBxIfChtIVExDX09GRkVSRURfUkVNT1RFX1RJTUVPVVQQCBIgChxIVExDX0FDQ0VQVEVEX1JFTU9URV9TVUNDRVNTEAkSHAoYSFRMQ19TRUNPTkRfTEVWRUxfUkVWT0tFEAoSFAoQV0lUTkVTU19LRVlfSEFTSBALEhsKF05FU1RFRF9XSVRORVNTX0tFWV9IQVNIEAwSFQoRQ09NTUlUTUVOVF9BTkNIT1IQDQ==');
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
@$core.Deprecated('Use leaseOutputRequestDescriptor instead')
const LeaseOutputRequest$json = const {
  '1': 'LeaseOutputRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    const {'1': 'outpoint', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.OutPoint', '10': 'outpoint'},
  ],
};

/// Descriptor for `LeaseOutputRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseOutputRequestDescriptor = $convert.base64Decode('ChJMZWFzZU91dHB1dFJlcXVlc3QSDgoCaWQYASABKAxSAmlkEisKCG91dHBvaW50GAIgASgLMg8ubG5ycGMuT3V0UG9pbnRSCG91dHBvaW50');
@$core.Deprecated('Use leaseOutputResponseDescriptor instead')
const LeaseOutputResponse$json = const {
  '1': 'LeaseOutputResponse',
  '2': const [
    const {'1': 'expiration', '3': 1, '4': 1, '5': 4, '10': 'expiration'},
  ],
};

/// Descriptor for `LeaseOutputResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List leaseOutputResponseDescriptor = $convert.base64Decode('ChNMZWFzZU91dHB1dFJlc3BvbnNlEh4KCmV4cGlyYXRpb24YASABKARSCmV4cGlyYXRpb24=');
@$core.Deprecated('Use releaseOutputRequestDescriptor instead')
const ReleaseOutputRequest$json = const {
  '1': 'ReleaseOutputRequest',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    const {'1': 'outpoint', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.OutPoint', '10': 'outpoint'},
  ],
};

/// Descriptor for `ReleaseOutputRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List releaseOutputRequestDescriptor = $convert.base64Decode('ChRSZWxlYXNlT3V0cHV0UmVxdWVzdBIOCgJpZBgBIAEoDFICaWQSKwoIb3V0cG9pbnQYAiABKAsyDy5sbnJwYy5PdXRQb2ludFIIb3V0cG9pbnQ=');
@$core.Deprecated('Use releaseOutputResponseDescriptor instead')
const ReleaseOutputResponse$json = const {
  '1': 'ReleaseOutputResponse',
};

/// Descriptor for `ReleaseOutputResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List releaseOutputResponseDescriptor = $convert.base64Decode('ChVSZWxlYXNlT3V0cHV0UmVzcG9uc2U=');
@$core.Deprecated('Use keyReqDescriptor instead')
const KeyReq$json = const {
  '1': 'KeyReq',
  '2': const [
    const {'1': 'key_finger_print', '3': 1, '4': 1, '5': 5, '10': 'keyFingerPrint'},
    const {'1': 'key_family', '3': 2, '4': 1, '5': 5, '10': 'keyFamily'},
  ],
};

/// Descriptor for `KeyReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyReqDescriptor = $convert.base64Decode('CgZLZXlSZXESKAoQa2V5X2Zpbmdlcl9wcmludBgBIAEoBVIOa2V5RmluZ2VyUHJpbnQSHQoKa2V5X2ZhbWlseRgCIAEoBVIJa2V5RmFtaWx5');
@$core.Deprecated('Use addrRequestDescriptor instead')
const AddrRequest$json = const {
  '1': 'AddrRequest',
};

/// Descriptor for `AddrRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addrRequestDescriptor = $convert.base64Decode('CgtBZGRyUmVxdWVzdA==');
@$core.Deprecated('Use addrResponseDescriptor instead')
const AddrResponse$json = const {
  '1': 'AddrResponse',
  '2': const [
    const {'1': 'addr', '3': 1, '4': 1, '5': 9, '10': 'addr'},
  ],
};

/// Descriptor for `AddrResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addrResponseDescriptor = $convert.base64Decode('CgxBZGRyUmVzcG9uc2USEgoEYWRkchgBIAEoCVIEYWRkcg==');
@$core.Deprecated('Use transactionDescriptor instead')
const Transaction$json = const {
  '1': 'Transaction',
  '2': const [
    const {'1': 'tx_hex', '3': 1, '4': 1, '5': 12, '10': 'txHex'},
    const {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
  ],
};

/// Descriptor for `Transaction`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List transactionDescriptor = $convert.base64Decode('CgtUcmFuc2FjdGlvbhIVCgZ0eF9oZXgYASABKAxSBXR4SGV4EhQKBWxhYmVsGAIgASgJUgVsYWJlbA==');
@$core.Deprecated('Use publishResponseDescriptor instead')
const PublishResponse$json = const {
  '1': 'PublishResponse',
  '2': const [
    const {'1': 'publish_error', '3': 1, '4': 1, '5': 9, '10': 'publishError'},
  ],
};

/// Descriptor for `PublishResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List publishResponseDescriptor = $convert.base64Decode('Cg9QdWJsaXNoUmVzcG9uc2USIwoNcHVibGlzaF9lcnJvchgBIAEoCVIMcHVibGlzaEVycm9y');
@$core.Deprecated('Use sendOutputsRequestDescriptor instead')
const SendOutputsRequest$json = const {
  '1': 'SendOutputsRequest',
  '2': const [
    const {'1': 'sat_per_kw', '3': 1, '4': 1, '5': 3, '10': 'satPerKw'},
    const {'1': 'outputs', '3': 2, '4': 3, '5': 11, '6': '.signrpc.TxOut', '10': 'outputs'},
    const {'1': 'label', '3': 3, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'min_confs', '3': 4, '4': 1, '5': 5, '10': 'minConfs'},
    const {'1': 'spend_unconfirmed', '3': 5, '4': 1, '5': 8, '10': 'spendUnconfirmed'},
  ],
};

/// Descriptor for `SendOutputsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendOutputsRequestDescriptor = $convert.base64Decode('ChJTZW5kT3V0cHV0c1JlcXVlc3QSHAoKc2F0X3Blcl9rdxgBIAEoA1IIc2F0UGVyS3cSKAoHb3V0cHV0cxgCIAMoCzIOLnNpZ25ycGMuVHhPdXRSB291dHB1dHMSFAoFbGFiZWwYAyABKAlSBWxhYmVsEhsKCW1pbl9jb25mcxgEIAEoBVIIbWluQ29uZnMSKwoRc3BlbmRfdW5jb25maXJtZWQYBSABKAhSEHNwZW5kVW5jb25maXJtZWQ=');
@$core.Deprecated('Use sendOutputsResponseDescriptor instead')
const SendOutputsResponse$json = const {
  '1': 'SendOutputsResponse',
  '2': const [
    const {'1': 'raw_tx', '3': 1, '4': 1, '5': 12, '10': 'rawTx'},
  ],
};

/// Descriptor for `SendOutputsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sendOutputsResponseDescriptor = $convert.base64Decode('ChNTZW5kT3V0cHV0c1Jlc3BvbnNlEhUKBnJhd190eBgBIAEoDFIFcmF3VHg=');
@$core.Deprecated('Use estimateFeeRequestDescriptor instead')
const EstimateFeeRequest$json = const {
  '1': 'EstimateFeeRequest',
  '2': const [
    const {'1': 'conf_target', '3': 1, '4': 1, '5': 5, '10': 'confTarget'},
  ],
};

/// Descriptor for `EstimateFeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List estimateFeeRequestDescriptor = $convert.base64Decode('ChJFc3RpbWF0ZUZlZVJlcXVlc3QSHwoLY29uZl90YXJnZXQYASABKAVSCmNvbmZUYXJnZXQ=');
@$core.Deprecated('Use estimateFeeResponseDescriptor instead')
const EstimateFeeResponse$json = const {
  '1': 'EstimateFeeResponse',
  '2': const [
    const {'1': 'sat_per_kw', '3': 1, '4': 1, '5': 3, '10': 'satPerKw'},
  ],
};

/// Descriptor for `EstimateFeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List estimateFeeResponseDescriptor = $convert.base64Decode('ChNFc3RpbWF0ZUZlZVJlc3BvbnNlEhwKCnNhdF9wZXJfa3cYASABKANSCHNhdFBlckt3');
@$core.Deprecated('Use pendingSweepDescriptor instead')
const PendingSweep$json = const {
  '1': 'PendingSweep',
  '2': const [
    const {'1': 'outpoint', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.OutPoint', '10': 'outpoint'},
    const {'1': 'witness_type', '3': 2, '4': 1, '5': 14, '6': '.walletrpc.WitnessType', '10': 'witnessType'},
    const {'1': 'amount_sat', '3': 3, '4': 1, '5': 13, '10': 'amountSat'},
    const {'1': 'sat_per_byte', '3': 4, '4': 1, '5': 13, '10': 'satPerByte'},
    const {'1': 'broadcast_attempts', '3': 5, '4': 1, '5': 13, '10': 'broadcastAttempts'},
    const {'1': 'next_broadcast_height', '3': 6, '4': 1, '5': 13, '10': 'nextBroadcastHeight'},
    const {'1': 'requested_conf_target', '3': 8, '4': 1, '5': 13, '10': 'requestedConfTarget'},
    const {'1': 'requested_sat_per_byte', '3': 9, '4': 1, '5': 13, '10': 'requestedSatPerByte'},
    const {'1': 'force', '3': 7, '4': 1, '5': 8, '10': 'force'},
  ],
};

/// Descriptor for `PendingSweep`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingSweepDescriptor = $convert.base64Decode('CgxQZW5kaW5nU3dlZXASKwoIb3V0cG9pbnQYASABKAsyDy5sbnJwYy5PdXRQb2ludFIIb3V0cG9pbnQSOQoMd2l0bmVzc190eXBlGAIgASgOMhYud2FsbGV0cnBjLldpdG5lc3NUeXBlUgt3aXRuZXNzVHlwZRIdCgphbW91bnRfc2F0GAMgASgNUglhbW91bnRTYXQSIAoMc2F0X3Blcl9ieXRlGAQgASgNUgpzYXRQZXJCeXRlEi0KEmJyb2FkY2FzdF9hdHRlbXB0cxgFIAEoDVIRYnJvYWRjYXN0QXR0ZW1wdHMSMgoVbmV4dF9icm9hZGNhc3RfaGVpZ2h0GAYgASgNUhNuZXh0QnJvYWRjYXN0SGVpZ2h0EjIKFXJlcXVlc3RlZF9jb25mX3RhcmdldBgIIAEoDVITcmVxdWVzdGVkQ29uZlRhcmdldBIzChZyZXF1ZXN0ZWRfc2F0X3Blcl9ieXRlGAkgASgNUhNyZXF1ZXN0ZWRTYXRQZXJCeXRlEhQKBWZvcmNlGAcgASgIUgVmb3JjZQ==');
@$core.Deprecated('Use pendingSweepsRequestDescriptor instead')
const PendingSweepsRequest$json = const {
  '1': 'PendingSweepsRequest',
};

/// Descriptor for `PendingSweepsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingSweepsRequestDescriptor = $convert.base64Decode('ChRQZW5kaW5nU3dlZXBzUmVxdWVzdA==');
@$core.Deprecated('Use pendingSweepsResponseDescriptor instead')
const PendingSweepsResponse$json = const {
  '1': 'PendingSweepsResponse',
  '2': const [
    const {'1': 'pending_sweeps', '3': 1, '4': 3, '5': 11, '6': '.walletrpc.PendingSweep', '10': 'pendingSweeps'},
  ],
};

/// Descriptor for `PendingSweepsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List pendingSweepsResponseDescriptor = $convert.base64Decode('ChVQZW5kaW5nU3dlZXBzUmVzcG9uc2USPgoOcGVuZGluZ19zd2VlcHMYASADKAsyFy53YWxsZXRycGMuUGVuZGluZ1N3ZWVwUg1wZW5kaW5nU3dlZXBz');
@$core.Deprecated('Use bumpFeeRequestDescriptor instead')
const BumpFeeRequest$json = const {
  '1': 'BumpFeeRequest',
  '2': const [
    const {'1': 'outpoint', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.OutPoint', '10': 'outpoint'},
    const {'1': 'target_conf', '3': 2, '4': 1, '5': 13, '10': 'targetConf'},
    const {'1': 'sat_per_byte', '3': 3, '4': 1, '5': 13, '10': 'satPerByte'},
    const {'1': 'force', '3': 4, '4': 1, '5': 8, '10': 'force'},
  ],
};

/// Descriptor for `BumpFeeRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bumpFeeRequestDescriptor = $convert.base64Decode('Cg5CdW1wRmVlUmVxdWVzdBIrCghvdXRwb2ludBgBIAEoCzIPLmxucnBjLk91dFBvaW50UghvdXRwb2ludBIfCgt0YXJnZXRfY29uZhgCIAEoDVIKdGFyZ2V0Q29uZhIgCgxzYXRfcGVyX2J5dGUYAyABKA1SCnNhdFBlckJ5dGUSFAoFZm9yY2UYBCABKAhSBWZvcmNl');
@$core.Deprecated('Use bumpFeeResponseDescriptor instead')
const BumpFeeResponse$json = const {
  '1': 'BumpFeeResponse',
};

/// Descriptor for `BumpFeeResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List bumpFeeResponseDescriptor = $convert.base64Decode('Cg9CdW1wRmVlUmVzcG9uc2U=');
@$core.Deprecated('Use listSweepsRequestDescriptor instead')
const ListSweepsRequest$json = const {
  '1': 'ListSweepsRequest',
  '2': const [
    const {'1': 'verbose', '3': 1, '4': 1, '5': 8, '10': 'verbose'},
  ],
};

/// Descriptor for `ListSweepsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSweepsRequestDescriptor = $convert.base64Decode('ChFMaXN0U3dlZXBzUmVxdWVzdBIYCgd2ZXJib3NlGAEgASgIUgd2ZXJib3Nl');
@$core.Deprecated('Use listSweepsResponseDescriptor instead')
const ListSweepsResponse$json = const {
  '1': 'ListSweepsResponse',
  '2': const [
    const {'1': 'transaction_details', '3': 1, '4': 1, '5': 11, '6': '.lnrpc.TransactionDetails', '9': 0, '10': 'transactionDetails'},
    const {'1': 'transaction_ids', '3': 2, '4': 1, '5': 11, '6': '.walletrpc.ListSweepsResponse.TransactionIDs', '9': 0, '10': 'transactionIds'},
  ],
  '3': const [ListSweepsResponse_TransactionIDs$json],
  '8': const [
    const {'1': 'sweeps'},
  ],
};

@$core.Deprecated('Use listSweepsResponseDescriptor instead')
const ListSweepsResponse_TransactionIDs$json = const {
  '1': 'TransactionIDs',
  '2': const [
    const {'1': 'transaction_ids', '3': 1, '4': 3, '5': 9, '10': 'transactionIds'},
  ],
};

/// Descriptor for `ListSweepsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listSweepsResponseDescriptor = $convert.base64Decode('ChJMaXN0U3dlZXBzUmVzcG9uc2USTAoTdHJhbnNhY3Rpb25fZGV0YWlscxgBIAEoCzIZLmxucnBjLlRyYW5zYWN0aW9uRGV0YWlsc0gAUhJ0cmFuc2FjdGlvbkRldGFpbHMSVwoPdHJhbnNhY3Rpb25faWRzGAIgASgLMiwud2FsbGV0cnBjLkxpc3RTd2VlcHNSZXNwb25zZS5UcmFuc2FjdGlvbklEc0gAUg50cmFuc2FjdGlvbklkcxo5Cg5UcmFuc2FjdGlvbklEcxInCg90cmFuc2FjdGlvbl9pZHMYASADKAlSDnRyYW5zYWN0aW9uSWRzQggKBnN3ZWVwcw==');
@$core.Deprecated('Use labelTransactionRequestDescriptor instead')
const LabelTransactionRequest$json = const {
  '1': 'LabelTransactionRequest',
  '2': const [
    const {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    const {'1': 'label', '3': 2, '4': 1, '5': 9, '10': 'label'},
    const {'1': 'overwrite', '3': 3, '4': 1, '5': 8, '10': 'overwrite'},
  ],
};

/// Descriptor for `LabelTransactionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelTransactionRequestDescriptor = $convert.base64Decode('ChdMYWJlbFRyYW5zYWN0aW9uUmVxdWVzdBISCgR0eGlkGAEgASgMUgR0eGlkEhQKBWxhYmVsGAIgASgJUgVsYWJlbBIcCglvdmVyd3JpdGUYAyABKAhSCW92ZXJ3cml0ZQ==');
@$core.Deprecated('Use labelTransactionResponseDescriptor instead')
const LabelTransactionResponse$json = const {
  '1': 'LabelTransactionResponse',
};

/// Descriptor for `LabelTransactionResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List labelTransactionResponseDescriptor = $convert.base64Decode('ChhMYWJlbFRyYW5zYWN0aW9uUmVzcG9uc2U=');
@$core.Deprecated('Use fundPsbtRequestDescriptor instead')
const FundPsbtRequest$json = const {
  '1': 'FundPsbtRequest',
  '2': const [
    const {'1': 'psbt', '3': 1, '4': 1, '5': 12, '9': 0, '10': 'psbt'},
    const {'1': 'raw', '3': 2, '4': 1, '5': 11, '6': '.walletrpc.TxTemplate', '9': 0, '10': 'raw'},
    const {'1': 'target_conf', '3': 3, '4': 1, '5': 13, '9': 1, '10': 'targetConf'},
    const {'1': 'sat_per_vbyte', '3': 4, '4': 1, '5': 13, '9': 1, '10': 'satPerVbyte'},
  ],
  '8': const [
    const {'1': 'template'},
    const {'1': 'fees'},
  ],
};

/// Descriptor for `FundPsbtRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundPsbtRequestDescriptor = $convert.base64Decode('Cg9GdW5kUHNidFJlcXVlc3QSFAoEcHNidBgBIAEoDEgAUgRwc2J0EikKA3JhdxgCIAEoCzIVLndhbGxldHJwYy5UeFRlbXBsYXRlSABSA3JhdxIhCgt0YXJnZXRfY29uZhgDIAEoDUgBUgp0YXJnZXRDb25mEiQKDXNhdF9wZXJfdmJ5dGUYBCABKA1IAVILc2F0UGVyVmJ5dGVCCgoIdGVtcGxhdGVCBgoEZmVlcw==');
@$core.Deprecated('Use fundPsbtResponseDescriptor instead')
const FundPsbtResponse$json = const {
  '1': 'FundPsbtResponse',
  '2': const [
    const {'1': 'funded_psbt', '3': 1, '4': 1, '5': 12, '10': 'fundedPsbt'},
    const {'1': 'change_output_index', '3': 2, '4': 1, '5': 5, '10': 'changeOutputIndex'},
    const {'1': 'locked_utxos', '3': 3, '4': 3, '5': 11, '6': '.walletrpc.UtxoLease', '10': 'lockedUtxos'},
  ],
};

/// Descriptor for `FundPsbtResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List fundPsbtResponseDescriptor = $convert.base64Decode('ChBGdW5kUHNidFJlc3BvbnNlEh8KC2Z1bmRlZF9wc2J0GAEgASgMUgpmdW5kZWRQc2J0Ei4KE2NoYW5nZV9vdXRwdXRfaW5kZXgYAiABKAVSEWNoYW5nZU91dHB1dEluZGV4EjcKDGxvY2tlZF91dHhvcxgDIAMoCzIULndhbGxldHJwYy5VdHhvTGVhc2VSC2xvY2tlZFV0eG9z');
@$core.Deprecated('Use txTemplateDescriptor instead')
const TxTemplate$json = const {
  '1': 'TxTemplate',
  '2': const [
    const {'1': 'inputs', '3': 1, '4': 3, '5': 11, '6': '.lnrpc.OutPoint', '10': 'inputs'},
    const {'1': 'outputs', '3': 2, '4': 3, '5': 11, '6': '.walletrpc.TxTemplate.OutputsEntry', '10': 'outputs'},
  ],
  '3': const [TxTemplate_OutputsEntry$json],
};

@$core.Deprecated('Use txTemplateDescriptor instead')
const TxTemplate_OutputsEntry$json = const {
  '1': 'OutputsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 4, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `TxTemplate`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txTemplateDescriptor = $convert.base64Decode('CgpUeFRlbXBsYXRlEicKBmlucHV0cxgBIAMoCzIPLmxucnBjLk91dFBvaW50UgZpbnB1dHMSPAoHb3V0cHV0cxgCIAMoCzIiLndhbGxldHJwYy5UeFRlbXBsYXRlLk91dHB1dHNFbnRyeVIHb3V0cHV0cxo6CgxPdXRwdXRzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKARSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use utxoLeaseDescriptor instead')
const UtxoLease$json = const {
  '1': 'UtxoLease',
  '2': const [
    const {'1': 'id', '3': 1, '4': 1, '5': 12, '10': 'id'},
    const {'1': 'outpoint', '3': 2, '4': 1, '5': 11, '6': '.lnrpc.OutPoint', '10': 'outpoint'},
    const {'1': 'expiration', '3': 3, '4': 1, '5': 4, '10': 'expiration'},
  ],
};

/// Descriptor for `UtxoLease`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List utxoLeaseDescriptor = $convert.base64Decode('CglVdHhvTGVhc2USDgoCaWQYASABKAxSAmlkEisKCG91dHBvaW50GAIgASgLMg8ubG5ycGMuT3V0UG9pbnRSCG91dHBvaW50Eh4KCmV4cGlyYXRpb24YAyABKARSCmV4cGlyYXRpb24=');
@$core.Deprecated('Use finalizePsbtRequestDescriptor instead')
const FinalizePsbtRequest$json = const {
  '1': 'FinalizePsbtRequest',
  '2': const [
    const {'1': 'funded_psbt', '3': 1, '4': 1, '5': 12, '10': 'fundedPsbt'},
  ],
};

/// Descriptor for `FinalizePsbtRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finalizePsbtRequestDescriptor = $convert.base64Decode('ChNGaW5hbGl6ZVBzYnRSZXF1ZXN0Eh8KC2Z1bmRlZF9wc2J0GAEgASgMUgpmdW5kZWRQc2J0');
@$core.Deprecated('Use finalizePsbtResponseDescriptor instead')
const FinalizePsbtResponse$json = const {
  '1': 'FinalizePsbtResponse',
  '2': const [
    const {'1': 'signed_psbt', '3': 1, '4': 1, '5': 12, '10': 'signedPsbt'},
    const {'1': 'raw_final_tx', '3': 2, '4': 1, '5': 12, '10': 'rawFinalTx'},
  ],
};

/// Descriptor for `FinalizePsbtResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List finalizePsbtResponseDescriptor = $convert.base64Decode('ChRGaW5hbGl6ZVBzYnRSZXNwb25zZRIfCgtzaWduZWRfcHNidBgBIAEoDFIKc2lnbmVkUHNidBIgCgxyYXdfZmluYWxfdHgYAiABKAxSCnJhd0ZpbmFsVHg=');
