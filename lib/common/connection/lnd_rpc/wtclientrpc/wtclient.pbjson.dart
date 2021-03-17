///
//  Generated code. Do not modify.
//  source: wtclientrpc/wtclient.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use policyTypeDescriptor instead')
const PolicyType$json = const {
  '1': 'PolicyType',
  '2': const [
    const {'1': 'LEGACY', '2': 0},
    const {'1': 'ANCHOR', '2': 1},
  ],
};

/// Descriptor for `PolicyType`. Decode as a `google.protobuf.EnumDescriptorProto`.
final $typed_data.Uint8List policyTypeDescriptor = $convert.base64Decode('CgpQb2xpY3lUeXBlEgoKBkxFR0FDWRAAEgoKBkFOQ0hPUhAB');
@$core.Deprecated('Use addTowerRequestDescriptor instead')
const AddTowerRequest$json = const {
  '1': 'AddTowerRequest',
  '2': const [
    const {'1': 'pubkey', '3': 1, '4': 1, '5': 12, '10': 'pubkey'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `AddTowerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTowerRequestDescriptor = $convert.base64Decode('Cg9BZGRUb3dlclJlcXVlc3QSFgoGcHVia2V5GAEgASgMUgZwdWJrZXkSGAoHYWRkcmVzcxgCIAEoCVIHYWRkcmVzcw==');
@$core.Deprecated('Use addTowerResponseDescriptor instead')
const AddTowerResponse$json = const {
  '1': 'AddTowerResponse',
};

/// Descriptor for `AddTowerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addTowerResponseDescriptor = $convert.base64Decode('ChBBZGRUb3dlclJlc3BvbnNl');
@$core.Deprecated('Use removeTowerRequestDescriptor instead')
const RemoveTowerRequest$json = const {
  '1': 'RemoveTowerRequest',
  '2': const [
    const {'1': 'pubkey', '3': 1, '4': 1, '5': 12, '10': 'pubkey'},
    const {'1': 'address', '3': 2, '4': 1, '5': 9, '10': 'address'},
  ],
};

/// Descriptor for `RemoveTowerRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeTowerRequestDescriptor = $convert.base64Decode('ChJSZW1vdmVUb3dlclJlcXVlc3QSFgoGcHVia2V5GAEgASgMUgZwdWJrZXkSGAoHYWRkcmVzcxgCIAEoCVIHYWRkcmVzcw==');
@$core.Deprecated('Use removeTowerResponseDescriptor instead')
const RemoveTowerResponse$json = const {
  '1': 'RemoveTowerResponse',
};

/// Descriptor for `RemoveTowerResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List removeTowerResponseDescriptor = $convert.base64Decode('ChNSZW1vdmVUb3dlclJlc3BvbnNl');
@$core.Deprecated('Use getTowerInfoRequestDescriptor instead')
const GetTowerInfoRequest$json = const {
  '1': 'GetTowerInfoRequest',
  '2': const [
    const {'1': 'pubkey', '3': 1, '4': 1, '5': 12, '10': 'pubkey'},
    const {'1': 'include_sessions', '3': 2, '4': 1, '5': 8, '10': 'includeSessions'},
  ],
};

/// Descriptor for `GetTowerInfoRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getTowerInfoRequestDescriptor = $convert.base64Decode('ChNHZXRUb3dlckluZm9SZXF1ZXN0EhYKBnB1YmtleRgBIAEoDFIGcHVia2V5EikKEGluY2x1ZGVfc2Vzc2lvbnMYAiABKAhSD2luY2x1ZGVTZXNzaW9ucw==');
@$core.Deprecated('Use towerSessionDescriptor instead')
const TowerSession$json = const {
  '1': 'TowerSession',
  '2': const [
    const {'1': 'num_backups', '3': 1, '4': 1, '5': 13, '10': 'numBackups'},
    const {'1': 'num_pending_backups', '3': 2, '4': 1, '5': 13, '10': 'numPendingBackups'},
    const {'1': 'max_backups', '3': 3, '4': 1, '5': 13, '10': 'maxBackups'},
    const {'1': 'sweep_sat_per_byte', '3': 4, '4': 1, '5': 13, '10': 'sweepSatPerByte'},
  ],
};

/// Descriptor for `TowerSession`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List towerSessionDescriptor = $convert.base64Decode('CgxUb3dlclNlc3Npb24SHwoLbnVtX2JhY2t1cHMYASABKA1SCm51bUJhY2t1cHMSLgoTbnVtX3BlbmRpbmdfYmFja3VwcxgCIAEoDVIRbnVtUGVuZGluZ0JhY2t1cHMSHwoLbWF4X2JhY2t1cHMYAyABKA1SCm1heEJhY2t1cHMSKwoSc3dlZXBfc2F0X3Blcl9ieXRlGAQgASgNUg9zd2VlcFNhdFBlckJ5dGU=');
@$core.Deprecated('Use towerDescriptor instead')
const Tower$json = const {
  '1': 'Tower',
  '2': const [
    const {'1': 'pubkey', '3': 1, '4': 1, '5': 12, '10': 'pubkey'},
    const {'1': 'addresses', '3': 2, '4': 3, '5': 9, '10': 'addresses'},
    const {'1': 'active_session_candidate', '3': 3, '4': 1, '5': 8, '10': 'activeSessionCandidate'},
    const {'1': 'num_sessions', '3': 4, '4': 1, '5': 13, '10': 'numSessions'},
    const {'1': 'sessions', '3': 5, '4': 3, '5': 11, '6': '.wtclientrpc.TowerSession', '10': 'sessions'},
  ],
};

/// Descriptor for `Tower`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List towerDescriptor = $convert.base64Decode('CgVUb3dlchIWCgZwdWJrZXkYASABKAxSBnB1YmtleRIcCglhZGRyZXNzZXMYAiADKAlSCWFkZHJlc3NlcxI4ChhhY3RpdmVfc2Vzc2lvbl9jYW5kaWRhdGUYAyABKAhSFmFjdGl2ZVNlc3Npb25DYW5kaWRhdGUSIQoMbnVtX3Nlc3Npb25zGAQgASgNUgtudW1TZXNzaW9ucxI1CghzZXNzaW9ucxgFIAMoCzIZLnd0Y2xpZW50cnBjLlRvd2VyU2Vzc2lvblIIc2Vzc2lvbnM=');
@$core.Deprecated('Use listTowersRequestDescriptor instead')
const ListTowersRequest$json = const {
  '1': 'ListTowersRequest',
  '2': const [
    const {'1': 'include_sessions', '3': 1, '4': 1, '5': 8, '10': 'includeSessions'},
  ],
};

/// Descriptor for `ListTowersRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTowersRequestDescriptor = $convert.base64Decode('ChFMaXN0VG93ZXJzUmVxdWVzdBIpChBpbmNsdWRlX3Nlc3Npb25zGAEgASgIUg9pbmNsdWRlU2Vzc2lvbnM=');
@$core.Deprecated('Use listTowersResponseDescriptor instead')
const ListTowersResponse$json = const {
  '1': 'ListTowersResponse',
  '2': const [
    const {'1': 'towers', '3': 1, '4': 3, '5': 11, '6': '.wtclientrpc.Tower', '10': 'towers'},
  ],
};

/// Descriptor for `ListTowersResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List listTowersResponseDescriptor = $convert.base64Decode('ChJMaXN0VG93ZXJzUmVzcG9uc2USKgoGdG93ZXJzGAEgAygLMhIud3RjbGllbnRycGMuVG93ZXJSBnRvd2Vycw==');
@$core.Deprecated('Use statsRequestDescriptor instead')
const StatsRequest$json = const {
  '1': 'StatsRequest',
};

/// Descriptor for `StatsRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statsRequestDescriptor = $convert.base64Decode('CgxTdGF0c1JlcXVlc3Q=');
@$core.Deprecated('Use statsResponseDescriptor instead')
const StatsResponse$json = const {
  '1': 'StatsResponse',
  '2': const [
    const {'1': 'num_backups', '3': 1, '4': 1, '5': 13, '10': 'numBackups'},
    const {'1': 'num_pending_backups', '3': 2, '4': 1, '5': 13, '10': 'numPendingBackups'},
    const {'1': 'num_failed_backups', '3': 3, '4': 1, '5': 13, '10': 'numFailedBackups'},
    const {'1': 'num_sessions_acquired', '3': 4, '4': 1, '5': 13, '10': 'numSessionsAcquired'},
    const {'1': 'num_sessions_exhausted', '3': 5, '4': 1, '5': 13, '10': 'numSessionsExhausted'},
  ],
};

/// Descriptor for `StatsResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List statsResponseDescriptor = $convert.base64Decode('Cg1TdGF0c1Jlc3BvbnNlEh8KC251bV9iYWNrdXBzGAEgASgNUgpudW1CYWNrdXBzEi4KE251bV9wZW5kaW5nX2JhY2t1cHMYAiABKA1SEW51bVBlbmRpbmdCYWNrdXBzEiwKEm51bV9mYWlsZWRfYmFja3VwcxgDIAEoDVIQbnVtRmFpbGVkQmFja3VwcxIyChVudW1fc2Vzc2lvbnNfYWNxdWlyZWQYBCABKA1SE251bVNlc3Npb25zQWNxdWlyZWQSNAoWbnVtX3Nlc3Npb25zX2V4aGF1c3RlZBgFIAEoDVIUbnVtU2Vzc2lvbnNFeGhhdXN0ZWQ=');
@$core.Deprecated('Use policyRequestDescriptor instead')
const PolicyRequest$json = const {
  '1': 'PolicyRequest',
  '2': const [
    const {'1': 'policy_type', '3': 1, '4': 1, '5': 14, '6': '.wtclientrpc.PolicyType', '10': 'policyType'},
  ],
};

/// Descriptor for `PolicyRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyRequestDescriptor = $convert.base64Decode('Cg1Qb2xpY3lSZXF1ZXN0EjgKC3BvbGljeV90eXBlGAEgASgOMhcud3RjbGllbnRycGMuUG9saWN5VHlwZVIKcG9saWN5VHlwZQ==');
@$core.Deprecated('Use policyResponseDescriptor instead')
const PolicyResponse$json = const {
  '1': 'PolicyResponse',
  '2': const [
    const {'1': 'max_updates', '3': 1, '4': 1, '5': 13, '10': 'maxUpdates'},
    const {'1': 'sweep_sat_per_byte', '3': 2, '4': 1, '5': 13, '10': 'sweepSatPerByte'},
  ],
};

/// Descriptor for `PolicyResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List policyResponseDescriptor = $convert.base64Decode('Cg5Qb2xpY3lSZXNwb25zZRIfCgttYXhfdXBkYXRlcxgBIAEoDVIKbWF4VXBkYXRlcxIrChJzd2VlcF9zYXRfcGVyX2J5dGUYAiABKA1SD3N3ZWVwU2F0UGVyQnl0ZQ==');
