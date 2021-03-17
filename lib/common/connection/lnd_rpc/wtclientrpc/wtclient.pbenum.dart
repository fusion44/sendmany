///
//  Generated code. Do not modify.
//  source: wtclientrpc/wtclient.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PolicyType extends $pb.ProtobufEnum {
  static const PolicyType LEGACY = PolicyType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LEGACY');
  static const PolicyType ANCHOR = PolicyType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ANCHOR');

  static const $core.List<PolicyType> values = <PolicyType> [
    LEGACY,
    ANCHOR,
  ];

  static final $core.Map<$core.int, PolicyType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PolicyType valueOf($core.int value) => _byValue[value];

  const PolicyType._($core.int v, $core.String n) : super(v, n);
}

