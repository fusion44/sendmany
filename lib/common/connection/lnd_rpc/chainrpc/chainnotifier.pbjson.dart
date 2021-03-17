///
//  Generated code. Do not modify.
//  source: chainrpc/chainnotifier.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use confRequestDescriptor instead')
const ConfRequest$json = const {
  '1': 'ConfRequest',
  '2': const [
    const {'1': 'txid', '3': 1, '4': 1, '5': 12, '10': 'txid'},
    const {'1': 'script', '3': 2, '4': 1, '5': 12, '10': 'script'},
    const {'1': 'num_confs', '3': 3, '4': 1, '5': 13, '10': 'numConfs'},
    const {'1': 'height_hint', '3': 4, '4': 1, '5': 13, '10': 'heightHint'},
  ],
};

/// Descriptor for `ConfRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confRequestDescriptor = $convert.base64Decode('CgtDb25mUmVxdWVzdBISCgR0eGlkGAEgASgMUgR0eGlkEhYKBnNjcmlwdBgCIAEoDFIGc2NyaXB0EhsKCW51bV9jb25mcxgDIAEoDVIIbnVtQ29uZnMSHwoLaGVpZ2h0X2hpbnQYBCABKA1SCmhlaWdodEhpbnQ=');
@$core.Deprecated('Use confDetailsDescriptor instead')
const ConfDetails$json = const {
  '1': 'ConfDetails',
  '2': const [
    const {'1': 'raw_tx', '3': 1, '4': 1, '5': 12, '10': 'rawTx'},
    const {'1': 'block_hash', '3': 2, '4': 1, '5': 12, '10': 'blockHash'},
    const {'1': 'block_height', '3': 3, '4': 1, '5': 13, '10': 'blockHeight'},
    const {'1': 'tx_index', '3': 4, '4': 1, '5': 13, '10': 'txIndex'},
  ],
};

/// Descriptor for `ConfDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confDetailsDescriptor = $convert.base64Decode('CgtDb25mRGV0YWlscxIVCgZyYXdfdHgYASABKAxSBXJhd1R4Eh0KCmJsb2NrX2hhc2gYAiABKAxSCWJsb2NrSGFzaBIhCgxibG9ja19oZWlnaHQYAyABKA1SC2Jsb2NrSGVpZ2h0EhkKCHR4X2luZGV4GAQgASgNUgd0eEluZGV4');
@$core.Deprecated('Use reorgDescriptor instead')
const Reorg$json = const {
  '1': 'Reorg',
};

/// Descriptor for `Reorg`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List reorgDescriptor = $convert.base64Decode('CgVSZW9yZw==');
@$core.Deprecated('Use confEventDescriptor instead')
const ConfEvent$json = const {
  '1': 'ConfEvent',
  '2': const [
    const {'1': 'conf', '3': 1, '4': 1, '5': 11, '6': '.chainrpc.ConfDetails', '9': 0, '10': 'conf'},
    const {'1': 'reorg', '3': 2, '4': 1, '5': 11, '6': '.chainrpc.Reorg', '9': 0, '10': 'reorg'},
  ],
  '8': const [
    const {'1': 'event'},
  ],
};

/// Descriptor for `ConfEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List confEventDescriptor = $convert.base64Decode('CglDb25mRXZlbnQSKwoEY29uZhgBIAEoCzIVLmNoYWlucnBjLkNvbmZEZXRhaWxzSABSBGNvbmYSJwoFcmVvcmcYAiABKAsyDy5jaGFpbnJwYy5SZW9yZ0gAUgVyZW9yZ0IHCgVldmVudA==');
@$core.Deprecated('Use outpointDescriptor instead')
const Outpoint$json = const {
  '1': 'Outpoint',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'index', '3': 2, '4': 1, '5': 13, '10': 'index'},
  ],
};

/// Descriptor for `Outpoint`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List outpointDescriptor = $convert.base64Decode('CghPdXRwb2ludBISCgRoYXNoGAEgASgMUgRoYXNoEhQKBWluZGV4GAIgASgNUgVpbmRleA==');
@$core.Deprecated('Use spendRequestDescriptor instead')
const SpendRequest$json = const {
  '1': 'SpendRequest',
  '2': const [
    const {'1': 'outpoint', '3': 1, '4': 1, '5': 11, '6': '.chainrpc.Outpoint', '10': 'outpoint'},
    const {'1': 'script', '3': 2, '4': 1, '5': 12, '10': 'script'},
    const {'1': 'height_hint', '3': 3, '4': 1, '5': 13, '10': 'heightHint'},
  ],
};

/// Descriptor for `SpendRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spendRequestDescriptor = $convert.base64Decode('CgxTcGVuZFJlcXVlc3QSLgoIb3V0cG9pbnQYASABKAsyEi5jaGFpbnJwYy5PdXRwb2ludFIIb3V0cG9pbnQSFgoGc2NyaXB0GAIgASgMUgZzY3JpcHQSHwoLaGVpZ2h0X2hpbnQYAyABKA1SCmhlaWdodEhpbnQ=');
@$core.Deprecated('Use spendDetailsDescriptor instead')
const SpendDetails$json = const {
  '1': 'SpendDetails',
  '2': const [
    const {'1': 'spending_outpoint', '3': 1, '4': 1, '5': 11, '6': '.chainrpc.Outpoint', '10': 'spendingOutpoint'},
    const {'1': 'raw_spending_tx', '3': 2, '4': 1, '5': 12, '10': 'rawSpendingTx'},
    const {'1': 'spending_tx_hash', '3': 3, '4': 1, '5': 12, '10': 'spendingTxHash'},
    const {'1': 'spending_input_index', '3': 4, '4': 1, '5': 13, '10': 'spendingInputIndex'},
    const {'1': 'spending_height', '3': 5, '4': 1, '5': 13, '10': 'spendingHeight'},
  ],
};

/// Descriptor for `SpendDetails`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spendDetailsDescriptor = $convert.base64Decode('CgxTcGVuZERldGFpbHMSPwoRc3BlbmRpbmdfb3V0cG9pbnQYASABKAsyEi5jaGFpbnJwYy5PdXRwb2ludFIQc3BlbmRpbmdPdXRwb2ludBImCg9yYXdfc3BlbmRpbmdfdHgYAiABKAxSDXJhd1NwZW5kaW5nVHgSKAoQc3BlbmRpbmdfdHhfaGFzaBgDIAEoDFIOc3BlbmRpbmdUeEhhc2gSMAoUc3BlbmRpbmdfaW5wdXRfaW5kZXgYBCABKA1SEnNwZW5kaW5nSW5wdXRJbmRleBInCg9zcGVuZGluZ19oZWlnaHQYBSABKA1SDnNwZW5kaW5nSGVpZ2h0');
@$core.Deprecated('Use spendEventDescriptor instead')
const SpendEvent$json = const {
  '1': 'SpendEvent',
  '2': const [
    const {'1': 'spend', '3': 1, '4': 1, '5': 11, '6': '.chainrpc.SpendDetails', '9': 0, '10': 'spend'},
    const {'1': 'reorg', '3': 2, '4': 1, '5': 11, '6': '.chainrpc.Reorg', '9': 0, '10': 'reorg'},
  ],
  '8': const [
    const {'1': 'event'},
  ],
};

/// Descriptor for `SpendEvent`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List spendEventDescriptor = $convert.base64Decode('CgpTcGVuZEV2ZW50Ei4KBXNwZW5kGAEgASgLMhYuY2hhaW5ycGMuU3BlbmREZXRhaWxzSABSBXNwZW5kEicKBXJlb3JnGAIgASgLMg8uY2hhaW5ycGMuUmVvcmdIAFIFcmVvcmdCBwoFZXZlbnQ=');
@$core.Deprecated('Use blockEpochDescriptor instead')
const BlockEpoch$json = const {
  '1': 'BlockEpoch',
  '2': const [
    const {'1': 'hash', '3': 1, '4': 1, '5': 12, '10': 'hash'},
    const {'1': 'height', '3': 2, '4': 1, '5': 13, '10': 'height'},
  ],
};

/// Descriptor for `BlockEpoch`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List blockEpochDescriptor = $convert.base64Decode('CgpCbG9ja0Vwb2NoEhIKBGhhc2gYASABKAxSBGhhc2gSFgoGaGVpZ2h0GAIgASgNUgZoZWlnaHQ=');
