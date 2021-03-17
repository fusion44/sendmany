///
//  Generated code. Do not modify.
//  source: routerrpc/router.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../rpc.pb.dart' as $0;

import '../rpc.pbenum.dart' as $0;
import 'router.pbenum.dart';

export 'router.pbenum.dart';

class SendPaymentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendPaymentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dest', $pb.PbFieldType.OY)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amt')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHash', $pb.PbFieldType.OY)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finalCltvDelta', $pb.PbFieldType.O3)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentRequest')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeoutSeconds', $pb.PbFieldType.O3)
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeLimitSat')
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outgoingChanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cltvLimit', $pb.PbFieldType.O3)
    ..pc<$0.RouteHint>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routeHints', $pb.PbFieldType.PM, subBuilder: $0.RouteHint.create)
    ..m<$fixnum.Int64, $core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destCustomRecords', entryClassName: 'SendPaymentRequest.DestCustomRecordsEntry', keyFieldType: $pb.PbFieldType.OU6, valueFieldType: $pb.PbFieldType.OY, packageName: const $pb.PackageName('routerrpc'))
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtMsat')
    ..aInt64(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeLimitMsat')
    ..a<$core.List<$core.int>>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastHopPubkey', $pb.PbFieldType.OY)
    ..aOB(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allowSelfPayment')
    ..pc<$0.FeatureBit>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destFeatures', $pb.PbFieldType.PE, valueOf: $0.FeatureBit.valueOf, enumValues: $0.FeatureBit.values)
    ..a<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxParts', $pb.PbFieldType.OU3)
    ..aOB(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noInflightUpdates')
    ..p<$fixnum.Int64>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outgoingChanIds', $pb.PbFieldType.PU6)
    ..a<$core.List<$core.int>>(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentAddr', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxShardSizeMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  SendPaymentRequest._() : super();
  factory SendPaymentRequest({
    $core.List<$core.int> dest,
    $fixnum.Int64 amt,
    $core.List<$core.int> paymentHash,
    $core.int finalCltvDelta,
    $core.String paymentRequest,
    $core.int timeoutSeconds,
    $fixnum.Int64 feeLimitSat,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 outgoingChanId,
    $core.int cltvLimit,
    $core.Iterable<$0.RouteHint> routeHints,
    $core.Map<$fixnum.Int64, $core.List<$core.int>> destCustomRecords,
    $fixnum.Int64 amtMsat,
    $fixnum.Int64 feeLimitMsat,
    $core.List<$core.int> lastHopPubkey,
    $core.bool allowSelfPayment,
    $core.Iterable<$0.FeatureBit> destFeatures,
    $core.int maxParts,
    $core.bool noInflightUpdates,
    $core.Iterable<$fixnum.Int64> outgoingChanIds,
    $core.List<$core.int> paymentAddr,
    $fixnum.Int64 maxShardSizeMsat,
  }) {
    final _result = create();
    if (dest != null) {
      _result.dest = dest;
    }
    if (amt != null) {
      _result.amt = amt;
    }
    if (paymentHash != null) {
      _result.paymentHash = paymentHash;
    }
    if (finalCltvDelta != null) {
      _result.finalCltvDelta = finalCltvDelta;
    }
    if (paymentRequest != null) {
      _result.paymentRequest = paymentRequest;
    }
    if (timeoutSeconds != null) {
      _result.timeoutSeconds = timeoutSeconds;
    }
    if (feeLimitSat != null) {
      _result.feeLimitSat = feeLimitSat;
    }
    if (outgoingChanId != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.outgoingChanId = outgoingChanId;
    }
    if (cltvLimit != null) {
      _result.cltvLimit = cltvLimit;
    }
    if (routeHints != null) {
      _result.routeHints.addAll(routeHints);
    }
    if (destCustomRecords != null) {
      _result.destCustomRecords.addAll(destCustomRecords);
    }
    if (amtMsat != null) {
      _result.amtMsat = amtMsat;
    }
    if (feeLimitMsat != null) {
      _result.feeLimitMsat = feeLimitMsat;
    }
    if (lastHopPubkey != null) {
      _result.lastHopPubkey = lastHopPubkey;
    }
    if (allowSelfPayment != null) {
      _result.allowSelfPayment = allowSelfPayment;
    }
    if (destFeatures != null) {
      _result.destFeatures.addAll(destFeatures);
    }
    if (maxParts != null) {
      _result.maxParts = maxParts;
    }
    if (noInflightUpdates != null) {
      _result.noInflightUpdates = noInflightUpdates;
    }
    if (outgoingChanIds != null) {
      _result.outgoingChanIds.addAll(outgoingChanIds);
    }
    if (paymentAddr != null) {
      _result.paymentAddr = paymentAddr;
    }
    if (maxShardSizeMsat != null) {
      _result.maxShardSizeMsat = maxShardSizeMsat;
    }
    return _result;
  }
  factory SendPaymentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendPaymentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendPaymentRequest clone() => SendPaymentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendPaymentRequest copyWith(void Function(SendPaymentRequest) updates) => super.copyWith((message) => updates(message as SendPaymentRequest)) as SendPaymentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendPaymentRequest create() => SendPaymentRequest._();
  SendPaymentRequest createEmptyInstance() => create();
  static $pb.PbList<SendPaymentRequest> createRepeated() => $pb.PbList<SendPaymentRequest>();
  @$core.pragma('dart2js:noInline')
  static SendPaymentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendPaymentRequest>(create);
  static SendPaymentRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dest => $_getN(0);
  @$pb.TagNumber(1)
  set dest($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDest() => $_has(0);
  @$pb.TagNumber(1)
  void clearDest() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amt => $_getI64(1);
  @$pb.TagNumber(2)
  set amt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmt() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmt() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get paymentHash => $_getN(2);
  @$pb.TagNumber(3)
  set paymentHash($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPaymentHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearPaymentHash() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get finalCltvDelta => $_getIZ(3);
  @$pb.TagNumber(4)
  set finalCltvDelta($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFinalCltvDelta() => $_has(3);
  @$pb.TagNumber(4)
  void clearFinalCltvDelta() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get paymentRequest => $_getSZ(4);
  @$pb.TagNumber(5)
  set paymentRequest($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPaymentRequest() => $_has(4);
  @$pb.TagNumber(5)
  void clearPaymentRequest() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get timeoutSeconds => $_getIZ(5);
  @$pb.TagNumber(6)
  set timeoutSeconds($core.int v) { $_setSignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimeoutSeconds() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimeoutSeconds() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get feeLimitSat => $_getI64(6);
  @$pb.TagNumber(7)
  set feeLimitSat($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFeeLimitSat() => $_has(6);
  @$pb.TagNumber(7)
  void clearFeeLimitSat() => clearField(7);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  $fixnum.Int64 get outgoingChanId => $_getI64(7);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  set outgoingChanId($fixnum.Int64 v) { $_setInt64(7, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  $core.bool hasOutgoingChanId() => $_has(7);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(8)
  void clearOutgoingChanId() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get cltvLimit => $_getIZ(8);
  @$pb.TagNumber(9)
  set cltvLimit($core.int v) { $_setSignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCltvLimit() => $_has(8);
  @$pb.TagNumber(9)
  void clearCltvLimit() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$0.RouteHint> get routeHints => $_getList(9);

  @$pb.TagNumber(11)
  $core.Map<$fixnum.Int64, $core.List<$core.int>> get destCustomRecords => $_getMap(10);

  @$pb.TagNumber(12)
  $fixnum.Int64 get amtMsat => $_getI64(11);
  @$pb.TagNumber(12)
  set amtMsat($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasAmtMsat() => $_has(11);
  @$pb.TagNumber(12)
  void clearAmtMsat() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get feeLimitMsat => $_getI64(12);
  @$pb.TagNumber(13)
  set feeLimitMsat($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasFeeLimitMsat() => $_has(12);
  @$pb.TagNumber(13)
  void clearFeeLimitMsat() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<$core.int> get lastHopPubkey => $_getN(13);
  @$pb.TagNumber(14)
  set lastHopPubkey($core.List<$core.int> v) { $_setBytes(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasLastHopPubkey() => $_has(13);
  @$pb.TagNumber(14)
  void clearLastHopPubkey() => clearField(14);

  @$pb.TagNumber(15)
  $core.bool get allowSelfPayment => $_getBF(14);
  @$pb.TagNumber(15)
  set allowSelfPayment($core.bool v) { $_setBool(14, v); }
  @$pb.TagNumber(15)
  $core.bool hasAllowSelfPayment() => $_has(14);
  @$pb.TagNumber(15)
  void clearAllowSelfPayment() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<$0.FeatureBit> get destFeatures => $_getList(15);

  @$pb.TagNumber(17)
  $core.int get maxParts => $_getIZ(16);
  @$pb.TagNumber(17)
  set maxParts($core.int v) { $_setUnsignedInt32(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasMaxParts() => $_has(16);
  @$pb.TagNumber(17)
  void clearMaxParts() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get noInflightUpdates => $_getBF(17);
  @$pb.TagNumber(18)
  set noInflightUpdates($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasNoInflightUpdates() => $_has(17);
  @$pb.TagNumber(18)
  void clearNoInflightUpdates() => clearField(18);

  @$pb.TagNumber(19)
  $core.List<$fixnum.Int64> get outgoingChanIds => $_getList(18);

  @$pb.TagNumber(20)
  $core.List<$core.int> get paymentAddr => $_getN(19);
  @$pb.TagNumber(20)
  set paymentAddr($core.List<$core.int> v) { $_setBytes(19, v); }
  @$pb.TagNumber(20)
  $core.bool hasPaymentAddr() => $_has(19);
  @$pb.TagNumber(20)
  void clearPaymentAddr() => clearField(20);

  @$pb.TagNumber(21)
  $fixnum.Int64 get maxShardSizeMsat => $_getI64(20);
  @$pb.TagNumber(21)
  set maxShardSizeMsat($fixnum.Int64 v) { $_setInt64(20, v); }
  @$pb.TagNumber(21)
  $core.bool hasMaxShardSizeMsat() => $_has(20);
  @$pb.TagNumber(21)
  void clearMaxShardSizeMsat() => clearField(21);
}

class TrackPaymentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TrackPaymentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHash', $pb.PbFieldType.OY)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noInflightUpdates')
    ..hasRequiredFields = false
  ;

  TrackPaymentRequest._() : super();
  factory TrackPaymentRequest({
    $core.List<$core.int> paymentHash,
    $core.bool noInflightUpdates,
  }) {
    final _result = create();
    if (paymentHash != null) {
      _result.paymentHash = paymentHash;
    }
    if (noInflightUpdates != null) {
      _result.noInflightUpdates = noInflightUpdates;
    }
    return _result;
  }
  factory TrackPaymentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TrackPaymentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TrackPaymentRequest clone() => TrackPaymentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TrackPaymentRequest copyWith(void Function(TrackPaymentRequest) updates) => super.copyWith((message) => updates(message as TrackPaymentRequest)) as TrackPaymentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TrackPaymentRequest create() => TrackPaymentRequest._();
  TrackPaymentRequest createEmptyInstance() => create();
  static $pb.PbList<TrackPaymentRequest> createRepeated() => $pb.PbList<TrackPaymentRequest>();
  @$core.pragma('dart2js:noInline')
  static TrackPaymentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TrackPaymentRequest>(create);
  static TrackPaymentRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get paymentHash => $_getN(0);
  @$pb.TagNumber(1)
  set paymentHash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPaymentHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaymentHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get noInflightUpdates => $_getBF(1);
  @$pb.TagNumber(2)
  set noInflightUpdates($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNoInflightUpdates() => $_has(1);
  @$pb.TagNumber(2)
  void clearNoInflightUpdates() => clearField(2);
}

class RouteFeeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RouteFeeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dest', $pb.PbFieldType.OY)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtSat')
    ..hasRequiredFields = false
  ;

  RouteFeeRequest._() : super();
  factory RouteFeeRequest({
    $core.List<$core.int> dest,
    $fixnum.Int64 amtSat,
  }) {
    final _result = create();
    if (dest != null) {
      _result.dest = dest;
    }
    if (amtSat != null) {
      _result.amtSat = amtSat;
    }
    return _result;
  }
  factory RouteFeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RouteFeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RouteFeeRequest clone() => RouteFeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RouteFeeRequest copyWith(void Function(RouteFeeRequest) updates) => super.copyWith((message) => updates(message as RouteFeeRequest)) as RouteFeeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RouteFeeRequest create() => RouteFeeRequest._();
  RouteFeeRequest createEmptyInstance() => create();
  static $pb.PbList<RouteFeeRequest> createRepeated() => $pb.PbList<RouteFeeRequest>();
  @$core.pragma('dart2js:noInline')
  static RouteFeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RouteFeeRequest>(create);
  static RouteFeeRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dest => $_getN(0);
  @$pb.TagNumber(1)
  set dest($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDest() => $_has(0);
  @$pb.TagNumber(1)
  void clearDest() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amtSat => $_getI64(1);
  @$pb.TagNumber(2)
  set amtSat($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmtSat() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmtSat() => clearField(2);
}

class RouteFeeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RouteFeeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routingFeeMsat')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeLockDelay')
    ..hasRequiredFields = false
  ;

  RouteFeeResponse._() : super();
  factory RouteFeeResponse({
    $fixnum.Int64 routingFeeMsat,
    $fixnum.Int64 timeLockDelay,
  }) {
    final _result = create();
    if (routingFeeMsat != null) {
      _result.routingFeeMsat = routingFeeMsat;
    }
    if (timeLockDelay != null) {
      _result.timeLockDelay = timeLockDelay;
    }
    return _result;
  }
  factory RouteFeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RouteFeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RouteFeeResponse clone() => RouteFeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RouteFeeResponse copyWith(void Function(RouteFeeResponse) updates) => super.copyWith((message) => updates(message as RouteFeeResponse)) as RouteFeeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RouteFeeResponse create() => RouteFeeResponse._();
  RouteFeeResponse createEmptyInstance() => create();
  static $pb.PbList<RouteFeeResponse> createRepeated() => $pb.PbList<RouteFeeResponse>();
  @$core.pragma('dart2js:noInline')
  static RouteFeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RouteFeeResponse>(create);
  static RouteFeeResponse _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get routingFeeMsat => $_getI64(0);
  @$pb.TagNumber(1)
  set routingFeeMsat($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoutingFeeMsat() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoutingFeeMsat() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get timeLockDelay => $_getI64(1);
  @$pb.TagNumber(2)
  set timeLockDelay($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTimeLockDelay() => $_has(1);
  @$pb.TagNumber(2)
  void clearTimeLockDelay() => clearField(2);
}

class SendToRouteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendToRouteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHash', $pb.PbFieldType.OY)
    ..aOM<$0.Route>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'route', subBuilder: $0.Route.create)
    ..hasRequiredFields = false
  ;

  SendToRouteRequest._() : super();
  factory SendToRouteRequest({
    $core.List<$core.int> paymentHash,
    $0.Route route,
  }) {
    final _result = create();
    if (paymentHash != null) {
      _result.paymentHash = paymentHash;
    }
    if (route != null) {
      _result.route = route;
    }
    return _result;
  }
  factory SendToRouteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendToRouteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendToRouteRequest clone() => SendToRouteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendToRouteRequest copyWith(void Function(SendToRouteRequest) updates) => super.copyWith((message) => updates(message as SendToRouteRequest)) as SendToRouteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendToRouteRequest create() => SendToRouteRequest._();
  SendToRouteRequest createEmptyInstance() => create();
  static $pb.PbList<SendToRouteRequest> createRepeated() => $pb.PbList<SendToRouteRequest>();
  @$core.pragma('dart2js:noInline')
  static SendToRouteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendToRouteRequest>(create);
  static SendToRouteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get paymentHash => $_getN(0);
  @$pb.TagNumber(1)
  set paymentHash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPaymentHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaymentHash() => clearField(1);

  @$pb.TagNumber(2)
  $0.Route get route => $_getN(1);
  @$pb.TagNumber(2)
  set route($0.Route v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoute() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoute() => clearField(2);
  @$pb.TagNumber(2)
  $0.Route ensureRoute() => $_ensure(1);
}

class SendToRouteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendToRouteResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preimage', $pb.PbFieldType.OY)
    ..aOM<$0.Failure>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failure', subBuilder: $0.Failure.create)
    ..hasRequiredFields = false
  ;

  SendToRouteResponse._() : super();
  factory SendToRouteResponse({
    $core.List<$core.int> preimage,
    $0.Failure failure,
  }) {
    final _result = create();
    if (preimage != null) {
      _result.preimage = preimage;
    }
    if (failure != null) {
      _result.failure = failure;
    }
    return _result;
  }
  factory SendToRouteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendToRouteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendToRouteResponse clone() => SendToRouteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendToRouteResponse copyWith(void Function(SendToRouteResponse) updates) => super.copyWith((message) => updates(message as SendToRouteResponse)) as SendToRouteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendToRouteResponse create() => SendToRouteResponse._();
  SendToRouteResponse createEmptyInstance() => create();
  static $pb.PbList<SendToRouteResponse> createRepeated() => $pb.PbList<SendToRouteResponse>();
  @$core.pragma('dart2js:noInline')
  static SendToRouteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendToRouteResponse>(create);
  static SendToRouteResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get preimage => $_getN(0);
  @$pb.TagNumber(1)
  set preimage($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPreimage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreimage() => clearField(1);

  @$pb.TagNumber(2)
  $0.Failure get failure => $_getN(1);
  @$pb.TagNumber(2)
  set failure($0.Failure v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailure() => clearField(2);
  @$pb.TagNumber(2)
  $0.Failure ensureFailure() => $_ensure(1);
}

class ResetMissionControlRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResetMissionControlRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ResetMissionControlRequest._() : super();
  factory ResetMissionControlRequest() => create();
  factory ResetMissionControlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetMissionControlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetMissionControlRequest clone() => ResetMissionControlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetMissionControlRequest copyWith(void Function(ResetMissionControlRequest) updates) => super.copyWith((message) => updates(message as ResetMissionControlRequest)) as ResetMissionControlRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetMissionControlRequest create() => ResetMissionControlRequest._();
  ResetMissionControlRequest createEmptyInstance() => create();
  static $pb.PbList<ResetMissionControlRequest> createRepeated() => $pb.PbList<ResetMissionControlRequest>();
  @$core.pragma('dart2js:noInline')
  static ResetMissionControlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetMissionControlRequest>(create);
  static ResetMissionControlRequest _defaultInstance;
}

class ResetMissionControlResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ResetMissionControlResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ResetMissionControlResponse._() : super();
  factory ResetMissionControlResponse() => create();
  factory ResetMissionControlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ResetMissionControlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ResetMissionControlResponse clone() => ResetMissionControlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ResetMissionControlResponse copyWith(void Function(ResetMissionControlResponse) updates) => super.copyWith((message) => updates(message as ResetMissionControlResponse)) as ResetMissionControlResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetMissionControlResponse create() => ResetMissionControlResponse._();
  ResetMissionControlResponse createEmptyInstance() => create();
  static $pb.PbList<ResetMissionControlResponse> createRepeated() => $pb.PbList<ResetMissionControlResponse>();
  @$core.pragma('dart2js:noInline')
  static ResetMissionControlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ResetMissionControlResponse>(create);
  static ResetMissionControlResponse _defaultInstance;
}

class QueryMissionControlRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryMissionControlRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  QueryMissionControlRequest._() : super();
  factory QueryMissionControlRequest() => create();
  factory QueryMissionControlRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryMissionControlRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryMissionControlRequest clone() => QueryMissionControlRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryMissionControlRequest copyWith(void Function(QueryMissionControlRequest) updates) => super.copyWith((message) => updates(message as QueryMissionControlRequest)) as QueryMissionControlRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryMissionControlRequest create() => QueryMissionControlRequest._();
  QueryMissionControlRequest createEmptyInstance() => create();
  static $pb.PbList<QueryMissionControlRequest> createRepeated() => $pb.PbList<QueryMissionControlRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryMissionControlRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryMissionControlRequest>(create);
  static QueryMissionControlRequest _defaultInstance;
}

class QueryMissionControlResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryMissionControlResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..pc<PairHistory>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pairs', $pb.PbFieldType.PM, subBuilder: PairHistory.create)
    ..hasRequiredFields = false
  ;

  QueryMissionControlResponse._() : super();
  factory QueryMissionControlResponse({
    $core.Iterable<PairHistory> pairs,
  }) {
    final _result = create();
    if (pairs != null) {
      _result.pairs.addAll(pairs);
    }
    return _result;
  }
  factory QueryMissionControlResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryMissionControlResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryMissionControlResponse clone() => QueryMissionControlResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryMissionControlResponse copyWith(void Function(QueryMissionControlResponse) updates) => super.copyWith((message) => updates(message as QueryMissionControlResponse)) as QueryMissionControlResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryMissionControlResponse create() => QueryMissionControlResponse._();
  QueryMissionControlResponse createEmptyInstance() => create();
  static $pb.PbList<QueryMissionControlResponse> createRepeated() => $pb.PbList<QueryMissionControlResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryMissionControlResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryMissionControlResponse>(create);
  static QueryMissionControlResponse _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<PairHistory> get pairs => $_getList(0);
}

class PairHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PairHistory', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodeFrom', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodeTo', $pb.PbFieldType.OY)
    ..aOM<PairData>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'history', subBuilder: PairData.create)
    ..hasRequiredFields = false
  ;

  PairHistory._() : super();
  factory PairHistory({
    $core.List<$core.int> nodeFrom,
    $core.List<$core.int> nodeTo,
    PairData history,
  }) {
    final _result = create();
    if (nodeFrom != null) {
      _result.nodeFrom = nodeFrom;
    }
    if (nodeTo != null) {
      _result.nodeTo = nodeTo;
    }
    if (history != null) {
      _result.history = history;
    }
    return _result;
  }
  factory PairHistory.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PairHistory.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PairHistory clone() => PairHistory()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PairHistory copyWith(void Function(PairHistory) updates) => super.copyWith((message) => updates(message as PairHistory)) as PairHistory; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PairHistory create() => PairHistory._();
  PairHistory createEmptyInstance() => create();
  static $pb.PbList<PairHistory> createRepeated() => $pb.PbList<PairHistory>();
  @$core.pragma('dart2js:noInline')
  static PairHistory getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PairHistory>(create);
  static PairHistory _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get nodeFrom => $_getN(0);
  @$pb.TagNumber(1)
  set nodeFrom($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get nodeTo => $_getN(1);
  @$pb.TagNumber(2)
  set nodeTo($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodeTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearNodeTo() => clearField(2);

  @$pb.TagNumber(7)
  PairData get history => $_getN(2);
  @$pb.TagNumber(7)
  set history(PairData v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasHistory() => $_has(2);
  @$pb.TagNumber(7)
  void clearHistory() => clearField(7);
  @$pb.TagNumber(7)
  PairData ensureHistory() => $_ensure(2);
}

class PairData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PairData', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failTime')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failAmtSat')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failAmtMsat')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'successTime')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'successAmtSat')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'successAmtMsat')
    ..hasRequiredFields = false
  ;

  PairData._() : super();
  factory PairData({
    $fixnum.Int64 failTime,
    $fixnum.Int64 failAmtSat,
    $fixnum.Int64 failAmtMsat,
    $fixnum.Int64 successTime,
    $fixnum.Int64 successAmtSat,
    $fixnum.Int64 successAmtMsat,
  }) {
    final _result = create();
    if (failTime != null) {
      _result.failTime = failTime;
    }
    if (failAmtSat != null) {
      _result.failAmtSat = failAmtSat;
    }
    if (failAmtMsat != null) {
      _result.failAmtMsat = failAmtMsat;
    }
    if (successTime != null) {
      _result.successTime = successTime;
    }
    if (successAmtSat != null) {
      _result.successAmtSat = successAmtSat;
    }
    if (successAmtMsat != null) {
      _result.successAmtMsat = successAmtMsat;
    }
    return _result;
  }
  factory PairData.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PairData.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PairData clone() => PairData()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PairData copyWith(void Function(PairData) updates) => super.copyWith((message) => updates(message as PairData)) as PairData; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PairData create() => PairData._();
  PairData createEmptyInstance() => create();
  static $pb.PbList<PairData> createRepeated() => $pb.PbList<PairData>();
  @$core.pragma('dart2js:noInline')
  static PairData getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PairData>(create);
  static PairData _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get failTime => $_getI64(0);
  @$pb.TagNumber(1)
  set failTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFailTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearFailTime() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get failAmtSat => $_getI64(1);
  @$pb.TagNumber(2)
  set failAmtSat($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFailAmtSat() => $_has(1);
  @$pb.TagNumber(2)
  void clearFailAmtSat() => clearField(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get failAmtMsat => $_getI64(2);
  @$pb.TagNumber(4)
  set failAmtMsat($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasFailAmtMsat() => $_has(2);
  @$pb.TagNumber(4)
  void clearFailAmtMsat() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get successTime => $_getI64(3);
  @$pb.TagNumber(5)
  set successTime($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSuccessTime() => $_has(3);
  @$pb.TagNumber(5)
  void clearSuccessTime() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get successAmtSat => $_getI64(4);
  @$pb.TagNumber(6)
  set successAmtSat($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasSuccessAmtSat() => $_has(4);
  @$pb.TagNumber(6)
  void clearSuccessAmtSat() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get successAmtMsat => $_getI64(5);
  @$pb.TagNumber(7)
  set successAmtMsat($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasSuccessAmtMsat() => $_has(5);
  @$pb.TagNumber(7)
  void clearSuccessAmtMsat() => clearField(7);
}

class QueryProbabilityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryProbabilityRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fromNode', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'toNode', $pb.PbFieldType.OY)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtMsat')
    ..hasRequiredFields = false
  ;

  QueryProbabilityRequest._() : super();
  factory QueryProbabilityRequest({
    $core.List<$core.int> fromNode,
    $core.List<$core.int> toNode,
    $fixnum.Int64 amtMsat,
  }) {
    final _result = create();
    if (fromNode != null) {
      _result.fromNode = fromNode;
    }
    if (toNode != null) {
      _result.toNode = toNode;
    }
    if (amtMsat != null) {
      _result.amtMsat = amtMsat;
    }
    return _result;
  }
  factory QueryProbabilityRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryProbabilityRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryProbabilityRequest clone() => QueryProbabilityRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryProbabilityRequest copyWith(void Function(QueryProbabilityRequest) updates) => super.copyWith((message) => updates(message as QueryProbabilityRequest)) as QueryProbabilityRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryProbabilityRequest create() => QueryProbabilityRequest._();
  QueryProbabilityRequest createEmptyInstance() => create();
  static $pb.PbList<QueryProbabilityRequest> createRepeated() => $pb.PbList<QueryProbabilityRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryProbabilityRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryProbabilityRequest>(create);
  static QueryProbabilityRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get fromNode => $_getN(0);
  @$pb.TagNumber(1)
  set fromNode($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFromNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearFromNode() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get toNode => $_getN(1);
  @$pb.TagNumber(2)
  set toNode($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasToNode() => $_has(1);
  @$pb.TagNumber(2)
  void clearToNode() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amtMsat => $_getI64(2);
  @$pb.TagNumber(3)
  set amtMsat($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmtMsat() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmtMsat() => clearField(3);
}

class QueryProbabilityResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryProbabilityResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'probability', $pb.PbFieldType.OD)
    ..aOM<PairData>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'history', subBuilder: PairData.create)
    ..hasRequiredFields = false
  ;

  QueryProbabilityResponse._() : super();
  factory QueryProbabilityResponse({
    $core.double probability,
    PairData history,
  }) {
    final _result = create();
    if (probability != null) {
      _result.probability = probability;
    }
    if (history != null) {
      _result.history = history;
    }
    return _result;
  }
  factory QueryProbabilityResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryProbabilityResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryProbabilityResponse clone() => QueryProbabilityResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryProbabilityResponse copyWith(void Function(QueryProbabilityResponse) updates) => super.copyWith((message) => updates(message as QueryProbabilityResponse)) as QueryProbabilityResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryProbabilityResponse create() => QueryProbabilityResponse._();
  QueryProbabilityResponse createEmptyInstance() => create();
  static $pb.PbList<QueryProbabilityResponse> createRepeated() => $pb.PbList<QueryProbabilityResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryProbabilityResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryProbabilityResponse>(create);
  static QueryProbabilityResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get probability => $_getN(0);
  @$pb.TagNumber(1)
  set probability($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasProbability() => $_has(0);
  @$pb.TagNumber(1)
  void clearProbability() => clearField(1);

  @$pb.TagNumber(2)
  PairData get history => $_getN(1);
  @$pb.TagNumber(2)
  set history(PairData v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasHistory() => $_has(1);
  @$pb.TagNumber(2)
  void clearHistory() => clearField(2);
  @$pb.TagNumber(2)
  PairData ensureHistory() => $_ensure(1);
}

class BuildRouteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BuildRouteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtMsat')
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finalCltvDelta', $pb.PbFieldType.O3)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outgoingChanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..p<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hopPubkeys', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentAddr', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  BuildRouteRequest._() : super();
  factory BuildRouteRequest({
    $fixnum.Int64 amtMsat,
    $core.int finalCltvDelta,
    $fixnum.Int64 outgoingChanId,
    $core.Iterable<$core.List<$core.int>> hopPubkeys,
    $core.List<$core.int> paymentAddr,
  }) {
    final _result = create();
    if (amtMsat != null) {
      _result.amtMsat = amtMsat;
    }
    if (finalCltvDelta != null) {
      _result.finalCltvDelta = finalCltvDelta;
    }
    if (outgoingChanId != null) {
      _result.outgoingChanId = outgoingChanId;
    }
    if (hopPubkeys != null) {
      _result.hopPubkeys.addAll(hopPubkeys);
    }
    if (paymentAddr != null) {
      _result.paymentAddr = paymentAddr;
    }
    return _result;
  }
  factory BuildRouteRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuildRouteRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuildRouteRequest clone() => BuildRouteRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuildRouteRequest copyWith(void Function(BuildRouteRequest) updates) => super.copyWith((message) => updates(message as BuildRouteRequest)) as BuildRouteRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BuildRouteRequest create() => BuildRouteRequest._();
  BuildRouteRequest createEmptyInstance() => create();
  static $pb.PbList<BuildRouteRequest> createRepeated() => $pb.PbList<BuildRouteRequest>();
  @$core.pragma('dart2js:noInline')
  static BuildRouteRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuildRouteRequest>(create);
  static BuildRouteRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get amtMsat => $_getI64(0);
  @$pb.TagNumber(1)
  set amtMsat($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmtMsat() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmtMsat() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get finalCltvDelta => $_getIZ(1);
  @$pb.TagNumber(2)
  set finalCltvDelta($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFinalCltvDelta() => $_has(1);
  @$pb.TagNumber(2)
  void clearFinalCltvDelta() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get outgoingChanId => $_getI64(2);
  @$pb.TagNumber(3)
  set outgoingChanId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutgoingChanId() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutgoingChanId() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.List<$core.int>> get hopPubkeys => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<$core.int> get paymentAddr => $_getN(4);
  @$pb.TagNumber(5)
  set paymentAddr($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPaymentAddr() => $_has(4);
  @$pb.TagNumber(5)
  void clearPaymentAddr() => clearField(5);
}

class BuildRouteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BuildRouteResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..aOM<$0.Route>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'route', subBuilder: $0.Route.create)
    ..hasRequiredFields = false
  ;

  BuildRouteResponse._() : super();
  factory BuildRouteResponse({
    $0.Route route,
  }) {
    final _result = create();
    if (route != null) {
      _result.route = route;
    }
    return _result;
  }
  factory BuildRouteResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BuildRouteResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BuildRouteResponse clone() => BuildRouteResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BuildRouteResponse copyWith(void Function(BuildRouteResponse) updates) => super.copyWith((message) => updates(message as BuildRouteResponse)) as BuildRouteResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BuildRouteResponse create() => BuildRouteResponse._();
  BuildRouteResponse createEmptyInstance() => create();
  static $pb.PbList<BuildRouteResponse> createRepeated() => $pb.PbList<BuildRouteResponse>();
  @$core.pragma('dart2js:noInline')
  static BuildRouteResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BuildRouteResponse>(create);
  static BuildRouteResponse _defaultInstance;

  @$pb.TagNumber(1)
  $0.Route get route => $_getN(0);
  @$pb.TagNumber(1)
  set route($0.Route v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasRoute() => $_has(0);
  @$pb.TagNumber(1)
  void clearRoute() => clearField(1);
  @$pb.TagNumber(1)
  $0.Route ensureRoute() => $_ensure(0);
}

class SubscribeHtlcEventsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscribeHtlcEventsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SubscribeHtlcEventsRequest._() : super();
  factory SubscribeHtlcEventsRequest() => create();
  factory SubscribeHtlcEventsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeHtlcEventsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeHtlcEventsRequest clone() => SubscribeHtlcEventsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeHtlcEventsRequest copyWith(void Function(SubscribeHtlcEventsRequest) updates) => super.copyWith((message) => updates(message as SubscribeHtlcEventsRequest)) as SubscribeHtlcEventsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscribeHtlcEventsRequest create() => SubscribeHtlcEventsRequest._();
  SubscribeHtlcEventsRequest createEmptyInstance() => create();
  static $pb.PbList<SubscribeHtlcEventsRequest> createRepeated() => $pb.PbList<SubscribeHtlcEventsRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscribeHtlcEventsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeHtlcEventsRequest>(create);
  static SubscribeHtlcEventsRequest _defaultInstance;
}

enum HtlcEvent_Event {
  forwardEvent, 
  forwardFailEvent, 
  settleEvent, 
  linkFailEvent, 
  notSet
}

class HtlcEvent extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, HtlcEvent_Event> _HtlcEvent_EventByTag = {
    7 : HtlcEvent_Event.forwardEvent,
    8 : HtlcEvent_Event.forwardFailEvent,
    9 : HtlcEvent_Event.settleEvent,
    10 : HtlcEvent_Event.linkFailEvent,
    0 : HtlcEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HtlcEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..oo(0, [7, 8, 9, 10])
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incomingChannelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outgoingChannelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incomingHtlcId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outgoingHtlcId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestampNs', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<HtlcEvent_EventType>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'eventType', $pb.PbFieldType.OE, defaultOrMaker: HtlcEvent_EventType.UNKNOWN, valueOf: HtlcEvent_EventType.valueOf, enumValues: HtlcEvent_EventType.values)
    ..aOM<ForwardEvent>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forwardEvent', subBuilder: ForwardEvent.create)
    ..aOM<ForwardFailEvent>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forwardFailEvent', subBuilder: ForwardFailEvent.create)
    ..aOM<SettleEvent>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'settleEvent', subBuilder: SettleEvent.create)
    ..aOM<LinkFailEvent>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'linkFailEvent', subBuilder: LinkFailEvent.create)
    ..hasRequiredFields = false
  ;

  HtlcEvent._() : super();
  factory HtlcEvent({
    $fixnum.Int64 incomingChannelId,
    $fixnum.Int64 outgoingChannelId,
    $fixnum.Int64 incomingHtlcId,
    $fixnum.Int64 outgoingHtlcId,
    $fixnum.Int64 timestampNs,
    HtlcEvent_EventType eventType,
    ForwardEvent forwardEvent,
    ForwardFailEvent forwardFailEvent,
    SettleEvent settleEvent,
    LinkFailEvent linkFailEvent,
  }) {
    final _result = create();
    if (incomingChannelId != null) {
      _result.incomingChannelId = incomingChannelId;
    }
    if (outgoingChannelId != null) {
      _result.outgoingChannelId = outgoingChannelId;
    }
    if (incomingHtlcId != null) {
      _result.incomingHtlcId = incomingHtlcId;
    }
    if (outgoingHtlcId != null) {
      _result.outgoingHtlcId = outgoingHtlcId;
    }
    if (timestampNs != null) {
      _result.timestampNs = timestampNs;
    }
    if (eventType != null) {
      _result.eventType = eventType;
    }
    if (forwardEvent != null) {
      _result.forwardEvent = forwardEvent;
    }
    if (forwardFailEvent != null) {
      _result.forwardFailEvent = forwardFailEvent;
    }
    if (settleEvent != null) {
      _result.settleEvent = settleEvent;
    }
    if (linkFailEvent != null) {
      _result.linkFailEvent = linkFailEvent;
    }
    return _result;
  }
  factory HtlcEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HtlcEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HtlcEvent clone() => HtlcEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HtlcEvent copyWith(void Function(HtlcEvent) updates) => super.copyWith((message) => updates(message as HtlcEvent)) as HtlcEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HtlcEvent create() => HtlcEvent._();
  HtlcEvent createEmptyInstance() => create();
  static $pb.PbList<HtlcEvent> createRepeated() => $pb.PbList<HtlcEvent>();
  @$core.pragma('dart2js:noInline')
  static HtlcEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HtlcEvent>(create);
  static HtlcEvent _defaultInstance;

  HtlcEvent_Event whichEvent() => _HtlcEvent_EventByTag[$_whichOneof(0)];
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get incomingChannelId => $_getI64(0);
  @$pb.TagNumber(1)
  set incomingChannelId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncomingChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncomingChannelId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get outgoingChannelId => $_getI64(1);
  @$pb.TagNumber(2)
  set outgoingChannelId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOutgoingChannelId() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutgoingChannelId() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get incomingHtlcId => $_getI64(2);
  @$pb.TagNumber(3)
  set incomingHtlcId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIncomingHtlcId() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncomingHtlcId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get outgoingHtlcId => $_getI64(3);
  @$pb.TagNumber(4)
  set outgoingHtlcId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOutgoingHtlcId() => $_has(3);
  @$pb.TagNumber(4)
  void clearOutgoingHtlcId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get timestampNs => $_getI64(4);
  @$pb.TagNumber(5)
  set timestampNs($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimestampNs() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimestampNs() => clearField(5);

  @$pb.TagNumber(6)
  HtlcEvent_EventType get eventType => $_getN(5);
  @$pb.TagNumber(6)
  set eventType(HtlcEvent_EventType v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasEventType() => $_has(5);
  @$pb.TagNumber(6)
  void clearEventType() => clearField(6);

  @$pb.TagNumber(7)
  ForwardEvent get forwardEvent => $_getN(6);
  @$pb.TagNumber(7)
  set forwardEvent(ForwardEvent v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasForwardEvent() => $_has(6);
  @$pb.TagNumber(7)
  void clearForwardEvent() => clearField(7);
  @$pb.TagNumber(7)
  ForwardEvent ensureForwardEvent() => $_ensure(6);

  @$pb.TagNumber(8)
  ForwardFailEvent get forwardFailEvent => $_getN(7);
  @$pb.TagNumber(8)
  set forwardFailEvent(ForwardFailEvent v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasForwardFailEvent() => $_has(7);
  @$pb.TagNumber(8)
  void clearForwardFailEvent() => clearField(8);
  @$pb.TagNumber(8)
  ForwardFailEvent ensureForwardFailEvent() => $_ensure(7);

  @$pb.TagNumber(9)
  SettleEvent get settleEvent => $_getN(8);
  @$pb.TagNumber(9)
  set settleEvent(SettleEvent v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasSettleEvent() => $_has(8);
  @$pb.TagNumber(9)
  void clearSettleEvent() => clearField(9);
  @$pb.TagNumber(9)
  SettleEvent ensureSettleEvent() => $_ensure(8);

  @$pb.TagNumber(10)
  LinkFailEvent get linkFailEvent => $_getN(9);
  @$pb.TagNumber(10)
  set linkFailEvent(LinkFailEvent v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasLinkFailEvent() => $_has(9);
  @$pb.TagNumber(10)
  void clearLinkFailEvent() => clearField(10);
  @$pb.TagNumber(10)
  LinkFailEvent ensureLinkFailEvent() => $_ensure(9);
}

class HtlcInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HtlcInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incomingTimelock', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outgoingTimelock', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incomingAmtMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outgoingAmtMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  HtlcInfo._() : super();
  factory HtlcInfo({
    $core.int incomingTimelock,
    $core.int outgoingTimelock,
    $fixnum.Int64 incomingAmtMsat,
    $fixnum.Int64 outgoingAmtMsat,
  }) {
    final _result = create();
    if (incomingTimelock != null) {
      _result.incomingTimelock = incomingTimelock;
    }
    if (outgoingTimelock != null) {
      _result.outgoingTimelock = outgoingTimelock;
    }
    if (incomingAmtMsat != null) {
      _result.incomingAmtMsat = incomingAmtMsat;
    }
    if (outgoingAmtMsat != null) {
      _result.outgoingAmtMsat = outgoingAmtMsat;
    }
    return _result;
  }
  factory HtlcInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HtlcInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HtlcInfo clone() => HtlcInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HtlcInfo copyWith(void Function(HtlcInfo) updates) => super.copyWith((message) => updates(message as HtlcInfo)) as HtlcInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HtlcInfo create() => HtlcInfo._();
  HtlcInfo createEmptyInstance() => create();
  static $pb.PbList<HtlcInfo> createRepeated() => $pb.PbList<HtlcInfo>();
  @$core.pragma('dart2js:noInline')
  static HtlcInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HtlcInfo>(create);
  static HtlcInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get incomingTimelock => $_getIZ(0);
  @$pb.TagNumber(1)
  set incomingTimelock($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncomingTimelock() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncomingTimelock() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get outgoingTimelock => $_getIZ(1);
  @$pb.TagNumber(2)
  set outgoingTimelock($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOutgoingTimelock() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutgoingTimelock() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get incomingAmtMsat => $_getI64(2);
  @$pb.TagNumber(3)
  set incomingAmtMsat($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIncomingAmtMsat() => $_has(2);
  @$pb.TagNumber(3)
  void clearIncomingAmtMsat() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get outgoingAmtMsat => $_getI64(3);
  @$pb.TagNumber(4)
  set outgoingAmtMsat($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOutgoingAmtMsat() => $_has(3);
  @$pb.TagNumber(4)
  void clearOutgoingAmtMsat() => clearField(4);
}

class ForwardEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForwardEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..aOM<HtlcInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'info', subBuilder: HtlcInfo.create)
    ..hasRequiredFields = false
  ;

  ForwardEvent._() : super();
  factory ForwardEvent({
    HtlcInfo info,
  }) {
    final _result = create();
    if (info != null) {
      _result.info = info;
    }
    return _result;
  }
  factory ForwardEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForwardEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForwardEvent clone() => ForwardEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForwardEvent copyWith(void Function(ForwardEvent) updates) => super.copyWith((message) => updates(message as ForwardEvent)) as ForwardEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForwardEvent create() => ForwardEvent._();
  ForwardEvent createEmptyInstance() => create();
  static $pb.PbList<ForwardEvent> createRepeated() => $pb.PbList<ForwardEvent>();
  @$core.pragma('dart2js:noInline')
  static ForwardEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForwardEvent>(create);
  static ForwardEvent _defaultInstance;

  @$pb.TagNumber(1)
  HtlcInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(HtlcInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  HtlcInfo ensureInfo() => $_ensure(0);
}

class ForwardFailEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForwardFailEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ForwardFailEvent._() : super();
  factory ForwardFailEvent() => create();
  factory ForwardFailEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForwardFailEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForwardFailEvent clone() => ForwardFailEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForwardFailEvent copyWith(void Function(ForwardFailEvent) updates) => super.copyWith((message) => updates(message as ForwardFailEvent)) as ForwardFailEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForwardFailEvent create() => ForwardFailEvent._();
  ForwardFailEvent createEmptyInstance() => create();
  static $pb.PbList<ForwardFailEvent> createRepeated() => $pb.PbList<ForwardFailEvent>();
  @$core.pragma('dart2js:noInline')
  static ForwardFailEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForwardFailEvent>(create);
  static ForwardFailEvent _defaultInstance;
}

class SettleEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SettleEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SettleEvent._() : super();
  factory SettleEvent() => create();
  factory SettleEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettleEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettleEvent clone() => SettleEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettleEvent copyWith(void Function(SettleEvent) updates) => super.copyWith((message) => updates(message as SettleEvent)) as SettleEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettleEvent create() => SettleEvent._();
  SettleEvent createEmptyInstance() => create();
  static $pb.PbList<SettleEvent> createRepeated() => $pb.PbList<SettleEvent>();
  @$core.pragma('dart2js:noInline')
  static SettleEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettleEvent>(create);
  static SettleEvent _defaultInstance;
}

class LinkFailEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LinkFailEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..aOM<HtlcInfo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'info', subBuilder: HtlcInfo.create)
    ..e<$0.Failure_FailureCode>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'wireFailure', $pb.PbFieldType.OE, defaultOrMaker: $0.Failure_FailureCode.RESERVED, valueOf: $0.Failure_FailureCode.valueOf, enumValues: $0.Failure_FailureCode.values)
    ..e<FailureDetail>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failureDetail', $pb.PbFieldType.OE, defaultOrMaker: FailureDetail.UNKNOWN, valueOf: FailureDetail.valueOf, enumValues: FailureDetail.values)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failureString')
    ..hasRequiredFields = false
  ;

  LinkFailEvent._() : super();
  factory LinkFailEvent({
    HtlcInfo info,
    $0.Failure_FailureCode wireFailure,
    FailureDetail failureDetail,
    $core.String failureString,
  }) {
    final _result = create();
    if (info != null) {
      _result.info = info;
    }
    if (wireFailure != null) {
      _result.wireFailure = wireFailure;
    }
    if (failureDetail != null) {
      _result.failureDetail = failureDetail;
    }
    if (failureString != null) {
      _result.failureString = failureString;
    }
    return _result;
  }
  factory LinkFailEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LinkFailEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LinkFailEvent clone() => LinkFailEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LinkFailEvent copyWith(void Function(LinkFailEvent) updates) => super.copyWith((message) => updates(message as LinkFailEvent)) as LinkFailEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LinkFailEvent create() => LinkFailEvent._();
  LinkFailEvent createEmptyInstance() => create();
  static $pb.PbList<LinkFailEvent> createRepeated() => $pb.PbList<LinkFailEvent>();
  @$core.pragma('dart2js:noInline')
  static LinkFailEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LinkFailEvent>(create);
  static LinkFailEvent _defaultInstance;

  @$pb.TagNumber(1)
  HtlcInfo get info => $_getN(0);
  @$pb.TagNumber(1)
  set info(HtlcInfo v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasInfo() => $_has(0);
  @$pb.TagNumber(1)
  void clearInfo() => clearField(1);
  @$pb.TagNumber(1)
  HtlcInfo ensureInfo() => $_ensure(0);

  @$pb.TagNumber(2)
  $0.Failure_FailureCode get wireFailure => $_getN(1);
  @$pb.TagNumber(2)
  set wireFailure($0.Failure_FailureCode v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasWireFailure() => $_has(1);
  @$pb.TagNumber(2)
  void clearWireFailure() => clearField(2);

  @$pb.TagNumber(3)
  FailureDetail get failureDetail => $_getN(2);
  @$pb.TagNumber(3)
  set failureDetail(FailureDetail v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasFailureDetail() => $_has(2);
  @$pb.TagNumber(3)
  void clearFailureDetail() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get failureString => $_getSZ(3);
  @$pb.TagNumber(4)
  set failureString($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFailureString() => $_has(3);
  @$pb.TagNumber(4)
  void clearFailureString() => clearField(4);
}

class PaymentStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentStatus', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..e<PaymentState>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: PaymentState.IN_FLIGHT, valueOf: PaymentState.valueOf, enumValues: PaymentState.values)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preimage', $pb.PbFieldType.OY)
    ..pc<$0.HTLCAttempt>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htlcs', $pb.PbFieldType.PM, subBuilder: $0.HTLCAttempt.create)
    ..hasRequiredFields = false
  ;

  PaymentStatus._() : super();
  factory PaymentStatus({
    PaymentState state,
    $core.List<$core.int> preimage,
    $core.Iterable<$0.HTLCAttempt> htlcs,
  }) {
    final _result = create();
    if (state != null) {
      _result.state = state;
    }
    if (preimage != null) {
      _result.preimage = preimage;
    }
    if (htlcs != null) {
      _result.htlcs.addAll(htlcs);
    }
    return _result;
  }
  factory PaymentStatus.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentStatus.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentStatus clone() => PaymentStatus()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentStatus copyWith(void Function(PaymentStatus) updates) => super.copyWith((message) => updates(message as PaymentStatus)) as PaymentStatus; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentStatus create() => PaymentStatus._();
  PaymentStatus createEmptyInstance() => create();
  static $pb.PbList<PaymentStatus> createRepeated() => $pb.PbList<PaymentStatus>();
  @$core.pragma('dart2js:noInline')
  static PaymentStatus getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentStatus>(create);
  static PaymentStatus _defaultInstance;

  @$pb.TagNumber(1)
  PaymentState get state => $_getN(0);
  @$pb.TagNumber(1)
  set state(PaymentState v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasState() => $_has(0);
  @$pb.TagNumber(1)
  void clearState() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get preimage => $_getN(1);
  @$pb.TagNumber(2)
  set preimage($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPreimage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPreimage() => clearField(2);

  @$pb.TagNumber(4)
  $core.List<$0.HTLCAttempt> get htlcs => $_getList(2);
}

class CircuitKey extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CircuitKey', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htlcId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  CircuitKey._() : super();
  factory CircuitKey({
    $fixnum.Int64 chanId,
    $fixnum.Int64 htlcId,
  }) {
    final _result = create();
    if (chanId != null) {
      _result.chanId = chanId;
    }
    if (htlcId != null) {
      _result.htlcId = htlcId;
    }
    return _result;
  }
  factory CircuitKey.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CircuitKey.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CircuitKey clone() => CircuitKey()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CircuitKey copyWith(void Function(CircuitKey) updates) => super.copyWith((message) => updates(message as CircuitKey)) as CircuitKey; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CircuitKey create() => CircuitKey._();
  CircuitKey createEmptyInstance() => create();
  static $pb.PbList<CircuitKey> createRepeated() => $pb.PbList<CircuitKey>();
  @$core.pragma('dart2js:noInline')
  static CircuitKey getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CircuitKey>(create);
  static CircuitKey _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chanId => $_getI64(0);
  @$pb.TagNumber(1)
  set chanId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChanId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChanId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get htlcId => $_getI64(1);
  @$pb.TagNumber(2)
  set htlcId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHtlcId() => $_has(1);
  @$pb.TagNumber(2)
  void clearHtlcId() => clearField(2);
}

class ForwardHtlcInterceptRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForwardHtlcInterceptRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..aOM<CircuitKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incomingCircuitKey', subBuilder: CircuitKey.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHash', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outgoingAmountMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outgoingExpiry', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incomingAmountMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incomingExpiry', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outgoingRequestedChanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..m<$fixnum.Int64, $core.List<$core.int>>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customRecords', entryClassName: 'ForwardHtlcInterceptRequest.CustomRecordsEntry', keyFieldType: $pb.PbFieldType.OU6, valueFieldType: $pb.PbFieldType.OY, packageName: const $pb.PackageName('routerrpc'))
    ..a<$core.List<$core.int>>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'onionBlob', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ForwardHtlcInterceptRequest._() : super();
  factory ForwardHtlcInterceptRequest({
    CircuitKey incomingCircuitKey,
    $core.List<$core.int> paymentHash,
    $fixnum.Int64 outgoingAmountMsat,
    $core.int outgoingExpiry,
    $fixnum.Int64 incomingAmountMsat,
    $core.int incomingExpiry,
    $fixnum.Int64 outgoingRequestedChanId,
    $core.Map<$fixnum.Int64, $core.List<$core.int>> customRecords,
    $core.List<$core.int> onionBlob,
  }) {
    final _result = create();
    if (incomingCircuitKey != null) {
      _result.incomingCircuitKey = incomingCircuitKey;
    }
    if (paymentHash != null) {
      _result.paymentHash = paymentHash;
    }
    if (outgoingAmountMsat != null) {
      _result.outgoingAmountMsat = outgoingAmountMsat;
    }
    if (outgoingExpiry != null) {
      _result.outgoingExpiry = outgoingExpiry;
    }
    if (incomingAmountMsat != null) {
      _result.incomingAmountMsat = incomingAmountMsat;
    }
    if (incomingExpiry != null) {
      _result.incomingExpiry = incomingExpiry;
    }
    if (outgoingRequestedChanId != null) {
      _result.outgoingRequestedChanId = outgoingRequestedChanId;
    }
    if (customRecords != null) {
      _result.customRecords.addAll(customRecords);
    }
    if (onionBlob != null) {
      _result.onionBlob = onionBlob;
    }
    return _result;
  }
  factory ForwardHtlcInterceptRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForwardHtlcInterceptRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForwardHtlcInterceptRequest clone() => ForwardHtlcInterceptRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForwardHtlcInterceptRequest copyWith(void Function(ForwardHtlcInterceptRequest) updates) => super.copyWith((message) => updates(message as ForwardHtlcInterceptRequest)) as ForwardHtlcInterceptRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForwardHtlcInterceptRequest create() => ForwardHtlcInterceptRequest._();
  ForwardHtlcInterceptRequest createEmptyInstance() => create();
  static $pb.PbList<ForwardHtlcInterceptRequest> createRepeated() => $pb.PbList<ForwardHtlcInterceptRequest>();
  @$core.pragma('dart2js:noInline')
  static ForwardHtlcInterceptRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForwardHtlcInterceptRequest>(create);
  static ForwardHtlcInterceptRequest _defaultInstance;

  @$pb.TagNumber(1)
  CircuitKey get incomingCircuitKey => $_getN(0);
  @$pb.TagNumber(1)
  set incomingCircuitKey(CircuitKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncomingCircuitKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncomingCircuitKey() => clearField(1);
  @$pb.TagNumber(1)
  CircuitKey ensureIncomingCircuitKey() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get paymentHash => $_getN(1);
  @$pb.TagNumber(2)
  set paymentHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaymentHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaymentHash() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get outgoingAmountMsat => $_getI64(2);
  @$pb.TagNumber(3)
  set outgoingAmountMsat($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutgoingAmountMsat() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutgoingAmountMsat() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get outgoingExpiry => $_getIZ(3);
  @$pb.TagNumber(4)
  set outgoingExpiry($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasOutgoingExpiry() => $_has(3);
  @$pb.TagNumber(4)
  void clearOutgoingExpiry() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get incomingAmountMsat => $_getI64(4);
  @$pb.TagNumber(5)
  set incomingAmountMsat($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasIncomingAmountMsat() => $_has(4);
  @$pb.TagNumber(5)
  void clearIncomingAmountMsat() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get incomingExpiry => $_getIZ(5);
  @$pb.TagNumber(6)
  set incomingExpiry($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasIncomingExpiry() => $_has(5);
  @$pb.TagNumber(6)
  void clearIncomingExpiry() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get outgoingRequestedChanId => $_getI64(6);
  @$pb.TagNumber(7)
  set outgoingRequestedChanId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasOutgoingRequestedChanId() => $_has(6);
  @$pb.TagNumber(7)
  void clearOutgoingRequestedChanId() => clearField(7);

  @$pb.TagNumber(8)
  $core.Map<$fixnum.Int64, $core.List<$core.int>> get customRecords => $_getMap(7);

  @$pb.TagNumber(9)
  $core.List<$core.int> get onionBlob => $_getN(8);
  @$pb.TagNumber(9)
  set onionBlob($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasOnionBlob() => $_has(8);
  @$pb.TagNumber(9)
  void clearOnionBlob() => clearField(9);
}

class ForwardHtlcInterceptResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForwardHtlcInterceptResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'routerrpc'), createEmptyInstance: create)
    ..aOM<CircuitKey>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incomingCircuitKey', subBuilder: CircuitKey.create)
    ..e<ResolveHoldForwardAction>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action', $pb.PbFieldType.OE, defaultOrMaker: ResolveHoldForwardAction.SETTLE, valueOf: ResolveHoldForwardAction.valueOf, enumValues: ResolveHoldForwardAction.values)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preimage', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ForwardHtlcInterceptResponse._() : super();
  factory ForwardHtlcInterceptResponse({
    CircuitKey incomingCircuitKey,
    ResolveHoldForwardAction action,
    $core.List<$core.int> preimage,
  }) {
    final _result = create();
    if (incomingCircuitKey != null) {
      _result.incomingCircuitKey = incomingCircuitKey;
    }
    if (action != null) {
      _result.action = action;
    }
    if (preimage != null) {
      _result.preimage = preimage;
    }
    return _result;
  }
  factory ForwardHtlcInterceptResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForwardHtlcInterceptResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForwardHtlcInterceptResponse clone() => ForwardHtlcInterceptResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForwardHtlcInterceptResponse copyWith(void Function(ForwardHtlcInterceptResponse) updates) => super.copyWith((message) => updates(message as ForwardHtlcInterceptResponse)) as ForwardHtlcInterceptResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForwardHtlcInterceptResponse create() => ForwardHtlcInterceptResponse._();
  ForwardHtlcInterceptResponse createEmptyInstance() => create();
  static $pb.PbList<ForwardHtlcInterceptResponse> createRepeated() => $pb.PbList<ForwardHtlcInterceptResponse>();
  @$core.pragma('dart2js:noInline')
  static ForwardHtlcInterceptResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForwardHtlcInterceptResponse>(create);
  static ForwardHtlcInterceptResponse _defaultInstance;

  @$pb.TagNumber(1)
  CircuitKey get incomingCircuitKey => $_getN(0);
  @$pb.TagNumber(1)
  set incomingCircuitKey(CircuitKey v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncomingCircuitKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncomingCircuitKey() => clearField(1);
  @$pb.TagNumber(1)
  CircuitKey ensureIncomingCircuitKey() => $_ensure(0);

  @$pb.TagNumber(2)
  ResolveHoldForwardAction get action => $_getN(1);
  @$pb.TagNumber(2)
  set action(ResolveHoldForwardAction v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get preimage => $_getN(2);
  @$pb.TagNumber(3)
  set preimage($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPreimage() => $_has(2);
  @$pb.TagNumber(3)
  void clearPreimage() => clearField(3);
}

