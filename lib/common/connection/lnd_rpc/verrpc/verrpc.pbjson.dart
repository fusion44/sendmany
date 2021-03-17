///
//  Generated code. Do not modify.
//  source: verrpc/verrpc.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use versionRequestDescriptor instead')
const VersionRequest$json = const {
  '1': 'VersionRequest',
};

/// Descriptor for `VersionRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionRequestDescriptor = $convert.base64Decode('Cg5WZXJzaW9uUmVxdWVzdA==');
@$core.Deprecated('Use versionDescriptor instead')
const Version$json = const {
  '1': 'Version',
  '2': const [
    const {'1': 'commit', '3': 1, '4': 1, '5': 9, '10': 'commit'},
    const {'1': 'commit_hash', '3': 2, '4': 1, '5': 9, '10': 'commitHash'},
    const {'1': 'version', '3': 3, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'app_major', '3': 4, '4': 1, '5': 13, '10': 'appMajor'},
    const {'1': 'app_minor', '3': 5, '4': 1, '5': 13, '10': 'appMinor'},
    const {'1': 'app_patch', '3': 6, '4': 1, '5': 13, '10': 'appPatch'},
    const {'1': 'app_pre_release', '3': 7, '4': 1, '5': 9, '10': 'appPreRelease'},
    const {'1': 'build_tags', '3': 8, '4': 3, '5': 9, '10': 'buildTags'},
    const {'1': 'go_version', '3': 9, '4': 1, '5': 9, '10': 'goVersion'},
  ],
};

/// Descriptor for `Version`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List versionDescriptor = $convert.base64Decode('CgdWZXJzaW9uEhYKBmNvbW1pdBgBIAEoCVIGY29tbWl0Eh8KC2NvbW1pdF9oYXNoGAIgASgJUgpjb21taXRIYXNoEhgKB3ZlcnNpb24YAyABKAlSB3ZlcnNpb24SGwoJYXBwX21ham9yGAQgASgNUghhcHBNYWpvchIbCglhcHBfbWlub3IYBSABKA1SCGFwcE1pbm9yEhsKCWFwcF9wYXRjaBgGIAEoDVIIYXBwUGF0Y2gSJgoPYXBwX3ByZV9yZWxlYXNlGAcgASgJUg1hcHBQcmVSZWxlYXNlEh0KCmJ1aWxkX3RhZ3MYCCADKAlSCWJ1aWxkVGFncxIdCgpnb192ZXJzaW9uGAkgASgJUglnb1ZlcnNpb24=');
