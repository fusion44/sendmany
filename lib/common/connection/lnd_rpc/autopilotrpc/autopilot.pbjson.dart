///
//  Generated code. Do not modify.
//  source: autopilotrpc/autopilot.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use statusRequestDescriptor instead')
const StatusRequest$json = const {
  '1': 'StatusRequest',
};

/// Descriptor for `StatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusRequestDescriptor = $convert.base64Decode('Cg1TdGF0dXNSZXF1ZXN0');
@$core.Deprecated('Use statusResponseDescriptor instead')
const StatusResponse$json = const {
  '1': 'StatusResponse',
  '2': const [
    const {'1': 'active', '3': 1, '4': 1, '5': 8, '10': 'active'},
  ],
};

/// Descriptor for `StatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statusResponseDescriptor = $convert.base64Decode('Cg5TdGF0dXNSZXNwb25zZRIWCgZhY3RpdmUYASABKAhSBmFjdGl2ZQ==');
@$core.Deprecated('Use modifyStatusRequestDescriptor instead')
const ModifyStatusRequest$json = const {
  '1': 'ModifyStatusRequest',
  '2': const [
    const {'1': 'enable', '3': 1, '4': 1, '5': 8, '10': 'enable'},
  ],
};

/// Descriptor for `ModifyStatusRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyStatusRequestDescriptor = $convert.base64Decode('ChNNb2RpZnlTdGF0dXNSZXF1ZXN0EhYKBmVuYWJsZRgBIAEoCFIGZW5hYmxl');
@$core.Deprecated('Use modifyStatusResponseDescriptor instead')
const ModifyStatusResponse$json = const {
  '1': 'ModifyStatusResponse',
};

/// Descriptor for `ModifyStatusResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List modifyStatusResponseDescriptor = $convert.base64Decode('ChRNb2RpZnlTdGF0dXNSZXNwb25zZQ==');
@$core.Deprecated('Use queryScoresRequestDescriptor instead')
const QueryScoresRequest$json = const {
  '1': 'QueryScoresRequest',
  '2': const [
    const {'1': 'pubkeys', '3': 1, '4': 3, '5': 9, '10': 'pubkeys'},
    const {'1': 'ignore_local_state', '3': 2, '4': 1, '5': 8, '10': 'ignoreLocalState'},
  ],
};

/// Descriptor for `QueryScoresRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryScoresRequestDescriptor = $convert.base64Decode('ChJRdWVyeVNjb3Jlc1JlcXVlc3QSGAoHcHVia2V5cxgBIAMoCVIHcHVia2V5cxIsChJpZ25vcmVfbG9jYWxfc3RhdGUYAiABKAhSEGlnbm9yZUxvY2FsU3RhdGU=');
@$core.Deprecated('Use queryScoresResponseDescriptor instead')
const QueryScoresResponse$json = const {
  '1': 'QueryScoresResponse',
  '2': const [
    const {'1': 'results', '3': 1, '4': 3, '5': 11, '6': '.autopilotrpc.QueryScoresResponse.HeuristicResult', '10': 'results'},
  ],
  '3': const [QueryScoresResponse_HeuristicResult$json],
};

@$core.Deprecated('Use queryScoresResponseDescriptor instead')
const QueryScoresResponse_HeuristicResult$json = const {
  '1': 'HeuristicResult',
  '2': const [
    const {'1': 'heuristic', '3': 1, '4': 1, '5': 9, '10': 'heuristic'},
    const {'1': 'scores', '3': 2, '4': 3, '5': 11, '6': '.autopilotrpc.QueryScoresResponse.HeuristicResult.ScoresEntry', '10': 'scores'},
  ],
  '3': const [QueryScoresResponse_HeuristicResult_ScoresEntry$json],
};

@$core.Deprecated('Use queryScoresResponseDescriptor instead')
const QueryScoresResponse_HeuristicResult_ScoresEntry$json = const {
  '1': 'ScoresEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `QueryScoresResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List queryScoresResponseDescriptor = $convert.base64Decode('ChNRdWVyeVNjb3Jlc1Jlc3BvbnNlEksKB3Jlc3VsdHMYASADKAsyMS5hdXRvcGlsb3RycGMuUXVlcnlTY29yZXNSZXNwb25zZS5IZXVyaXN0aWNSZXN1bHRSB3Jlc3VsdHMawQEKD0hldXJpc3RpY1Jlc3VsdBIcCgloZXVyaXN0aWMYASABKAlSCWhldXJpc3RpYxJVCgZzY29yZXMYAiADKAsyPS5hdXRvcGlsb3RycGMuUXVlcnlTY29yZXNSZXNwb25zZS5IZXVyaXN0aWNSZXN1bHQuU2NvcmVzRW50cnlSBnNjb3Jlcxo5CgtTY29yZXNFbnRyeRIQCgNrZXkYASABKAlSA2tleRIUCgV2YWx1ZRgCIAEoAVIFdmFsdWU6AjgB');
@$core.Deprecated('Use setScoresRequestDescriptor instead')
const SetScoresRequest$json = const {
  '1': 'SetScoresRequest',
  '2': const [
    const {'1': 'heuristic', '3': 1, '4': 1, '5': 9, '10': 'heuristic'},
    const {'1': 'scores', '3': 2, '4': 3, '5': 11, '6': '.autopilotrpc.SetScoresRequest.ScoresEntry', '10': 'scores'},
  ],
  '3': const [SetScoresRequest_ScoresEntry$json],
};

@$core.Deprecated('Use setScoresRequestDescriptor instead')
const SetScoresRequest_ScoresEntry$json = const {
  '1': 'ScoresEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 1, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `SetScoresRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setScoresRequestDescriptor = $convert.base64Decode('ChBTZXRTY29yZXNSZXF1ZXN0EhwKCWhldXJpc3RpYxgBIAEoCVIJaGV1cmlzdGljEkIKBnNjb3JlcxgCIAMoCzIqLmF1dG9waWxvdHJwYy5TZXRTY29yZXNSZXF1ZXN0LlNjb3Jlc0VudHJ5UgZzY29yZXMaOQoLU2NvcmVzRW50cnkSEAoDa2V5GAEgASgJUgNrZXkSFAoFdmFsdWUYAiABKAFSBXZhbHVlOgI4AQ==');
@$core.Deprecated('Use setScoresResponseDescriptor instead')
const SetScoresResponse$json = const {
  '1': 'SetScoresResponse',
};

/// Descriptor for `SetScoresResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List setScoresResponseDescriptor = $convert.base64Decode('ChFTZXRTY29yZXNSZXNwb25zZQ==');
