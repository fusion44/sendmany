///
//  Generated code. Do not modify.
//  source: walletrpc/walletkit.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class WitnessType extends $pb.ProtobufEnum {
  static const WitnessType UNKNOWN_WITNESS = WitnessType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_WITNESS');
  static const WitnessType COMMITMENT_TIME_LOCK = WitnessType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMMITMENT_TIME_LOCK');
  static const WitnessType COMMITMENT_NO_DELAY = WitnessType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMMITMENT_NO_DELAY');
  static const WitnessType COMMITMENT_REVOKE = WitnessType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMMITMENT_REVOKE');
  static const WitnessType HTLC_OFFERED_REVOKE = WitnessType._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HTLC_OFFERED_REVOKE');
  static const WitnessType HTLC_ACCEPTED_REVOKE = WitnessType._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HTLC_ACCEPTED_REVOKE');
  static const WitnessType HTLC_OFFERED_TIMEOUT_SECOND_LEVEL = WitnessType._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HTLC_OFFERED_TIMEOUT_SECOND_LEVEL');
  static const WitnessType HTLC_ACCEPTED_SUCCESS_SECOND_LEVEL = WitnessType._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HTLC_ACCEPTED_SUCCESS_SECOND_LEVEL');
  static const WitnessType HTLC_OFFERED_REMOTE_TIMEOUT = WitnessType._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HTLC_OFFERED_REMOTE_TIMEOUT');
  static const WitnessType HTLC_ACCEPTED_REMOTE_SUCCESS = WitnessType._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HTLC_ACCEPTED_REMOTE_SUCCESS');
  static const WitnessType HTLC_SECOND_LEVEL_REVOKE = WitnessType._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HTLC_SECOND_LEVEL_REVOKE');
  static const WitnessType WITNESS_KEY_HASH = WitnessType._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'WITNESS_KEY_HASH');
  static const WitnessType NESTED_WITNESS_KEY_HASH = WitnessType._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NESTED_WITNESS_KEY_HASH');
  static const WitnessType COMMITMENT_ANCHOR = WitnessType._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'COMMITMENT_ANCHOR');

  static const $core.List<WitnessType> values = <WitnessType> [
    UNKNOWN_WITNESS,
    COMMITMENT_TIME_LOCK,
    COMMITMENT_NO_DELAY,
    COMMITMENT_REVOKE,
    HTLC_OFFERED_REVOKE,
    HTLC_ACCEPTED_REVOKE,
    HTLC_OFFERED_TIMEOUT_SECOND_LEVEL,
    HTLC_ACCEPTED_SUCCESS_SECOND_LEVEL,
    HTLC_OFFERED_REMOTE_TIMEOUT,
    HTLC_ACCEPTED_REMOTE_SUCCESS,
    HTLC_SECOND_LEVEL_REVOKE,
    WITNESS_KEY_HASH,
    NESTED_WITNESS_KEY_HASH,
    COMMITMENT_ANCHOR,
  ];

  static final $core.Map<$core.int, WitnessType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static WitnessType valueOf($core.int value) => _byValue[value];

  const WitnessType._($core.int v, $core.String n) : super(v, n);
}

