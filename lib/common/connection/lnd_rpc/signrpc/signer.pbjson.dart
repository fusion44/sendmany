///
//  Generated code. Do not modify.
//  source: signrpc/signer.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
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
    const {'1': 'key_loc', '3': 2, '4': 1, '5': 11, '6': '.signrpc.KeyLocator', '10': 'keyLoc'},
  ],
};

/// Descriptor for `KeyDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List keyDescriptorDescriptor = $convert.base64Decode('Cg1LZXlEZXNjcmlwdG9yEiIKDXJhd19rZXlfYnl0ZXMYASABKAxSC3Jhd0tleUJ5dGVzEiwKB2tleV9sb2MYAiABKAsyEy5zaWducnBjLktleUxvY2F0b3JSBmtleUxvYw==');
@$core.Deprecated('Use txOutDescriptor instead')
const TxOut$json = const {
  '1': 'TxOut',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 3, '10': 'value'},
    const {'1': 'pk_script', '3': 2, '4': 1, '5': 12, '10': 'pkScript'},
  ],
};

/// Descriptor for `TxOut`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List txOutDescriptor = $convert.base64Decode('CgVUeE91dBIUCgV2YWx1ZRgBIAEoA1IFdmFsdWUSGwoJcGtfc2NyaXB0GAIgASgMUghwa1NjcmlwdA==');
@$core.Deprecated('Use signDescriptorDescriptor instead')
const SignDescriptor$json = const {
  '1': 'SignDescriptor',
  '2': const [
    const {'1': 'key_desc', '3': 1, '4': 1, '5': 11, '6': '.signrpc.KeyDescriptor', '10': 'keyDesc'},
    const {'1': 'single_tweak', '3': 2, '4': 1, '5': 12, '10': 'singleTweak'},
    const {'1': 'double_tweak', '3': 3, '4': 1, '5': 12, '10': 'doubleTweak'},
    const {'1': 'witness_script', '3': 4, '4': 1, '5': 12, '10': 'witnessScript'},
    const {'1': 'output', '3': 5, '4': 1, '5': 11, '6': '.signrpc.TxOut', '10': 'output'},
    const {'1': 'sighash', '3': 7, '4': 1, '5': 13, '10': 'sighash'},
    const {'1': 'input_index', '3': 8, '4': 1, '5': 5, '10': 'inputIndex'},
  ],
};

/// Descriptor for `SignDescriptor`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signDescriptorDescriptor = $convert.base64Decode('Cg5TaWduRGVzY3JpcHRvchIxCghrZXlfZGVzYxgBIAEoCzIWLnNpZ25ycGMuS2V5RGVzY3JpcHRvclIHa2V5RGVzYxIhCgxzaW5nbGVfdHdlYWsYAiABKAxSC3NpbmdsZVR3ZWFrEiEKDGRvdWJsZV90d2VhaxgDIAEoDFILZG91YmxlVHdlYWsSJQoOd2l0bmVzc19zY3JpcHQYBCABKAxSDXdpdG5lc3NTY3JpcHQSJgoGb3V0cHV0GAUgASgLMg4uc2lnbnJwYy5UeE91dFIGb3V0cHV0EhgKB3NpZ2hhc2gYByABKA1SB3NpZ2hhc2gSHwoLaW5wdXRfaW5kZXgYCCABKAVSCmlucHV0SW5kZXg=');
@$core.Deprecated('Use signReqDescriptor instead')
const SignReq$json = const {
  '1': 'SignReq',
  '2': const [
    const {'1': 'raw_tx_bytes', '3': 1, '4': 1, '5': 12, '10': 'rawTxBytes'},
    const {'1': 'sign_descs', '3': 2, '4': 3, '5': 11, '6': '.signrpc.SignDescriptor', '10': 'signDescs'},
  ],
};

/// Descriptor for `SignReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signReqDescriptor = $convert.base64Decode('CgdTaWduUmVxEiAKDHJhd190eF9ieXRlcxgBIAEoDFIKcmF3VHhCeXRlcxI2CgpzaWduX2Rlc2NzGAIgAygLMhcuc2lnbnJwYy5TaWduRGVzY3JpcHRvclIJc2lnbkRlc2Nz');
@$core.Deprecated('Use signRespDescriptor instead')
const SignResp$json = const {
  '1': 'SignResp',
  '2': const [
    const {'1': 'raw_sigs', '3': 1, '4': 3, '5': 12, '10': 'rawSigs'},
  ],
};

/// Descriptor for `SignResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signRespDescriptor = $convert.base64Decode('CghTaWduUmVzcBIZCghyYXdfc2lncxgBIAMoDFIHcmF3U2lncw==');
@$core.Deprecated('Use inputScriptDescriptor instead')
const InputScript$json = const {
  '1': 'InputScript',
  '2': const [
    const {'1': 'witness', '3': 1, '4': 3, '5': 12, '10': 'witness'},
    const {'1': 'sig_script', '3': 2, '4': 1, '5': 12, '10': 'sigScript'},
  ],
};

/// Descriptor for `InputScript`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inputScriptDescriptor = $convert.base64Decode('CgtJbnB1dFNjcmlwdBIYCgd3aXRuZXNzGAEgAygMUgd3aXRuZXNzEh0KCnNpZ19zY3JpcHQYAiABKAxSCXNpZ1NjcmlwdA==');
@$core.Deprecated('Use inputScriptRespDescriptor instead')
const InputScriptResp$json = const {
  '1': 'InputScriptResp',
  '2': const [
    const {'1': 'input_scripts', '3': 1, '4': 3, '5': 11, '6': '.signrpc.InputScript', '10': 'inputScripts'},
  ],
};

/// Descriptor for `InputScriptResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List inputScriptRespDescriptor = $convert.base64Decode('Cg9JbnB1dFNjcmlwdFJlc3ASOQoNaW5wdXRfc2NyaXB0cxgBIAMoCzIULnNpZ25ycGMuSW5wdXRTY3JpcHRSDGlucHV0U2NyaXB0cw==');
@$core.Deprecated('Use signMessageReqDescriptor instead')
const SignMessageReq$json = const {
  '1': 'SignMessageReq',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 12, '10': 'msg'},
    const {'1': 'key_loc', '3': 2, '4': 1, '5': 11, '6': '.signrpc.KeyLocator', '10': 'keyLoc'},
  ],
};

/// Descriptor for `SignMessageReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signMessageReqDescriptor = $convert.base64Decode('Cg5TaWduTWVzc2FnZVJlcRIQCgNtc2cYASABKAxSA21zZxIsCgdrZXlfbG9jGAIgASgLMhMuc2lnbnJwYy5LZXlMb2NhdG9yUgZrZXlMb2M=');
@$core.Deprecated('Use signMessageRespDescriptor instead')
const SignMessageResp$json = const {
  '1': 'SignMessageResp',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 12, '10': 'signature'},
  ],
};

/// Descriptor for `SignMessageResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List signMessageRespDescriptor = $convert.base64Decode('Cg9TaWduTWVzc2FnZVJlc3ASHAoJc2lnbmF0dXJlGAEgASgMUglzaWduYXR1cmU=');
@$core.Deprecated('Use verifyMessageReqDescriptor instead')
const VerifyMessageReq$json = const {
  '1': 'VerifyMessageReq',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 12, '10': 'msg'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'pubkey', '3': 3, '4': 1, '5': 12, '10': 'pubkey'},
  ],
};

/// Descriptor for `VerifyMessageReq`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyMessageReqDescriptor = $convert.base64Decode('ChBWZXJpZnlNZXNzYWdlUmVxEhAKA21zZxgBIAEoDFIDbXNnEhwKCXNpZ25hdHVyZRgCIAEoDFIJc2lnbmF0dXJlEhYKBnB1YmtleRgDIAEoDFIGcHVia2V5');
@$core.Deprecated('Use verifyMessageRespDescriptor instead')
const VerifyMessageResp$json = const {
  '1': 'VerifyMessageResp',
  '2': const [
    const {'1': 'valid', '3': 1, '4': 1, '5': 8, '10': 'valid'},
  ],
};

/// Descriptor for `VerifyMessageResp`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List verifyMessageRespDescriptor = $convert.base64Decode('ChFWZXJpZnlNZXNzYWdlUmVzcBIUCgV2YWxpZBgBIAEoCFIFdmFsaWQ=');
@$core.Deprecated('Use sharedKeyRequestDescriptor instead')
const SharedKeyRequest$json = const {
  '1': 'SharedKeyRequest',
  '2': const [
    const {'1': 'ephemeral_pubkey', '3': 1, '4': 1, '5': 12, '10': 'ephemeralPubkey'},
    const {
      '1': 'key_loc',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.signrpc.KeyLocator',
      '8': const {'3': true},
      '10': 'keyLoc',
    },
    const {'1': 'key_desc', '3': 3, '4': 1, '5': 11, '6': '.signrpc.KeyDescriptor', '10': 'keyDesc'},
  ],
};

/// Descriptor for `SharedKeyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sharedKeyRequestDescriptor = $convert.base64Decode('ChBTaGFyZWRLZXlSZXF1ZXN0EikKEGVwaGVtZXJhbF9wdWJrZXkYASABKAxSD2VwaGVtZXJhbFB1YmtleRIwCgdrZXlfbG9jGAIgASgLMhMuc2lnbnJwYy5LZXlMb2NhdG9yQgIYAVIGa2V5TG9jEjEKCGtleV9kZXNjGAMgASgLMhYuc2lnbnJwYy5LZXlEZXNjcmlwdG9yUgdrZXlEZXNj');
@$core.Deprecated('Use sharedKeyResponseDescriptor instead')
const SharedKeyResponse$json = const {
  '1': 'SharedKeyResponse',
  '2': const [
    const {'1': 'shared_key', '3': 1, '4': 1, '5': 12, '10': 'sharedKey'},
  ],
};

/// Descriptor for `SharedKeyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List sharedKeyResponseDescriptor = $convert.base64Decode('ChFTaGFyZWRLZXlSZXNwb25zZRIdCgpzaGFyZWRfa2V5GAEgASgMUglzaGFyZWRLZXk=');
