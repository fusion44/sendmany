///
//  Generated code. Do not modify.
//  source: invoicesrpc/invoices.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import '../rpc.pb.dart' as $0;

class CancelInvoiceMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelInvoiceMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  CancelInvoiceMsg._() : super();
  factory CancelInvoiceMsg({
    $core.List<$core.int> paymentHash,
  }) {
    final _result = create();
    if (paymentHash != null) {
      _result.paymentHash = paymentHash;
    }
    return _result;
  }
  factory CancelInvoiceMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelInvoiceMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelInvoiceMsg clone() => CancelInvoiceMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelInvoiceMsg copyWith(void Function(CancelInvoiceMsg) updates) => super.copyWith((message) => updates(message as CancelInvoiceMsg)) as CancelInvoiceMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelInvoiceMsg create() => CancelInvoiceMsg._();
  CancelInvoiceMsg createEmptyInstance() => create();
  static $pb.PbList<CancelInvoiceMsg> createRepeated() => $pb.PbList<CancelInvoiceMsg>();
  @$core.pragma('dart2js:noInline')
  static CancelInvoiceMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelInvoiceMsg>(create);
  static CancelInvoiceMsg _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get paymentHash => $_getN(0);
  @$pb.TagNumber(1)
  set paymentHash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPaymentHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaymentHash() => clearField(1);
}

class CancelInvoiceResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CancelInvoiceResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  CancelInvoiceResp._() : super();
  factory CancelInvoiceResp() => create();
  factory CancelInvoiceResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CancelInvoiceResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CancelInvoiceResp clone() => CancelInvoiceResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CancelInvoiceResp copyWith(void Function(CancelInvoiceResp) updates) => super.copyWith((message) => updates(message as CancelInvoiceResp)) as CancelInvoiceResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CancelInvoiceResp create() => CancelInvoiceResp._();
  CancelInvoiceResp createEmptyInstance() => create();
  static $pb.PbList<CancelInvoiceResp> createRepeated() => $pb.PbList<CancelInvoiceResp>();
  @$core.pragma('dart2js:noInline')
  static CancelInvoiceResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CancelInvoiceResp>(create);
  static CancelInvoiceResp _defaultInstance;
}

class AddHoldInvoiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddHoldInvoiceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memo')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash', $pb.PbFieldType.OY)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'descriptionHash', $pb.PbFieldType.OY)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiry')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fallbackAddr')
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cltvExpiry', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<$0.RouteHint>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routeHints', $pb.PbFieldType.PM, subBuilder: $0.RouteHint.create)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'private')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueMsat')
    ..hasRequiredFields = false
  ;

  AddHoldInvoiceRequest._() : super();
  factory AddHoldInvoiceRequest({
    $core.String memo,
    $core.List<$core.int> hash,
    $fixnum.Int64 value,
    $core.List<$core.int> descriptionHash,
    $fixnum.Int64 expiry,
    $core.String fallbackAddr,
    $fixnum.Int64 cltvExpiry,
    $core.Iterable<$0.RouteHint> routeHints,
    $core.bool private,
    $fixnum.Int64 valueMsat,
  }) {
    final _result = create();
    if (memo != null) {
      _result.memo = memo;
    }
    if (hash != null) {
      _result.hash = hash;
    }
    if (value != null) {
      _result.value = value;
    }
    if (descriptionHash != null) {
      _result.descriptionHash = descriptionHash;
    }
    if (expiry != null) {
      _result.expiry = expiry;
    }
    if (fallbackAddr != null) {
      _result.fallbackAddr = fallbackAddr;
    }
    if (cltvExpiry != null) {
      _result.cltvExpiry = cltvExpiry;
    }
    if (routeHints != null) {
      _result.routeHints.addAll(routeHints);
    }
    if (private != null) {
      _result.private = private;
    }
    if (valueMsat != null) {
      _result.valueMsat = valueMsat;
    }
    return _result;
  }
  factory AddHoldInvoiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddHoldInvoiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddHoldInvoiceRequest clone() => AddHoldInvoiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddHoldInvoiceRequest copyWith(void Function(AddHoldInvoiceRequest) updates) => super.copyWith((message) => updates(message as AddHoldInvoiceRequest)) as AddHoldInvoiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddHoldInvoiceRequest create() => AddHoldInvoiceRequest._();
  AddHoldInvoiceRequest createEmptyInstance() => create();
  static $pb.PbList<AddHoldInvoiceRequest> createRepeated() => $pb.PbList<AddHoldInvoiceRequest>();
  @$core.pragma('dart2js:noInline')
  static AddHoldInvoiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddHoldInvoiceRequest>(create);
  static AddHoldInvoiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get memo => $_getSZ(0);
  @$pb.TagNumber(1)
  set memo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemo() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemo() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get hash => $_getN(1);
  @$pb.TagNumber(2)
  set hash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearHash() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get value => $_getI64(2);
  @$pb.TagNumber(3)
  set value($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasValue() => $_has(2);
  @$pb.TagNumber(3)
  void clearValue() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get descriptionHash => $_getN(3);
  @$pb.TagNumber(4)
  set descriptionHash($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasDescriptionHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearDescriptionHash() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get expiry => $_getI64(4);
  @$pb.TagNumber(5)
  set expiry($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExpiry() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpiry() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get fallbackAddr => $_getSZ(5);
  @$pb.TagNumber(6)
  set fallbackAddr($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasFallbackAddr() => $_has(5);
  @$pb.TagNumber(6)
  void clearFallbackAddr() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get cltvExpiry => $_getI64(6);
  @$pb.TagNumber(7)
  set cltvExpiry($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCltvExpiry() => $_has(6);
  @$pb.TagNumber(7)
  void clearCltvExpiry() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$0.RouteHint> get routeHints => $_getList(7);

  @$pb.TagNumber(9)
  $core.bool get private => $_getBF(8);
  @$pb.TagNumber(9)
  set private($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasPrivate() => $_has(8);
  @$pb.TagNumber(9)
  void clearPrivate() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get valueMsat => $_getI64(9);
  @$pb.TagNumber(10)
  set valueMsat($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasValueMsat() => $_has(9);
  @$pb.TagNumber(10)
  void clearValueMsat() => clearField(10);
}

class AddHoldInvoiceResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddHoldInvoiceResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentRequest')
    ..hasRequiredFields = false
  ;

  AddHoldInvoiceResp._() : super();
  factory AddHoldInvoiceResp({
    $core.String paymentRequest,
  }) {
    final _result = create();
    if (paymentRequest != null) {
      _result.paymentRequest = paymentRequest;
    }
    return _result;
  }
  factory AddHoldInvoiceResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddHoldInvoiceResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddHoldInvoiceResp clone() => AddHoldInvoiceResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddHoldInvoiceResp copyWith(void Function(AddHoldInvoiceResp) updates) => super.copyWith((message) => updates(message as AddHoldInvoiceResp)) as AddHoldInvoiceResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddHoldInvoiceResp create() => AddHoldInvoiceResp._();
  AddHoldInvoiceResp createEmptyInstance() => create();
  static $pb.PbList<AddHoldInvoiceResp> createRepeated() => $pb.PbList<AddHoldInvoiceResp>();
  @$core.pragma('dart2js:noInline')
  static AddHoldInvoiceResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddHoldInvoiceResp>(create);
  static AddHoldInvoiceResp _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get paymentRequest => $_getSZ(0);
  @$pb.TagNumber(1)
  set paymentRequest($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPaymentRequest() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaymentRequest() => clearField(1);
}

class SettleInvoiceMsg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SettleInvoiceMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preimage', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SettleInvoiceMsg._() : super();
  factory SettleInvoiceMsg({
    $core.List<$core.int> preimage,
  }) {
    final _result = create();
    if (preimage != null) {
      _result.preimage = preimage;
    }
    return _result;
  }
  factory SettleInvoiceMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettleInvoiceMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettleInvoiceMsg clone() => SettleInvoiceMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettleInvoiceMsg copyWith(void Function(SettleInvoiceMsg) updates) => super.copyWith((message) => updates(message as SettleInvoiceMsg)) as SettleInvoiceMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettleInvoiceMsg create() => SettleInvoiceMsg._();
  SettleInvoiceMsg createEmptyInstance() => create();
  static $pb.PbList<SettleInvoiceMsg> createRepeated() => $pb.PbList<SettleInvoiceMsg>();
  @$core.pragma('dart2js:noInline')
  static SettleInvoiceMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettleInvoiceMsg>(create);
  static SettleInvoiceMsg _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get preimage => $_getN(0);
  @$pb.TagNumber(1)
  set preimage($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPreimage() => $_has(0);
  @$pb.TagNumber(1)
  void clearPreimage() => clearField(1);
}

class SettleInvoiceResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SettleInvoiceResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SettleInvoiceResp._() : super();
  factory SettleInvoiceResp() => create();
  factory SettleInvoiceResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SettleInvoiceResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SettleInvoiceResp clone() => SettleInvoiceResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SettleInvoiceResp copyWith(void Function(SettleInvoiceResp) updates) => super.copyWith((message) => updates(message as SettleInvoiceResp)) as SettleInvoiceResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SettleInvoiceResp create() => SettleInvoiceResp._();
  SettleInvoiceResp createEmptyInstance() => create();
  static $pb.PbList<SettleInvoiceResp> createRepeated() => $pb.PbList<SettleInvoiceResp>();
  @$core.pragma('dart2js:noInline')
  static SettleInvoiceResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SettleInvoiceResp>(create);
  static SettleInvoiceResp _defaultInstance;
}

class SubscribeSingleInvoiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SubscribeSingleInvoiceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'invoicesrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SubscribeSingleInvoiceRequest._() : super();
  factory SubscribeSingleInvoiceRequest({
    $core.List<$core.int> rHash,
  }) {
    final _result = create();
    if (rHash != null) {
      _result.rHash = rHash;
    }
    return _result;
  }
  factory SubscribeSingleInvoiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SubscribeSingleInvoiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SubscribeSingleInvoiceRequest clone() => SubscribeSingleInvoiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SubscribeSingleInvoiceRequest copyWith(void Function(SubscribeSingleInvoiceRequest) updates) => super.copyWith((message) => updates(message as SubscribeSingleInvoiceRequest)) as SubscribeSingleInvoiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SubscribeSingleInvoiceRequest create() => SubscribeSingleInvoiceRequest._();
  SubscribeSingleInvoiceRequest createEmptyInstance() => create();
  static $pb.PbList<SubscribeSingleInvoiceRequest> createRepeated() => $pb.PbList<SubscribeSingleInvoiceRequest>();
  @$core.pragma('dart2js:noInline')
  static SubscribeSingleInvoiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SubscribeSingleInvoiceRequest>(create);
  static SubscribeSingleInvoiceRequest _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.int> get rHash => $_getN(0);
  @$pb.TagNumber(2)
  set rHash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasRHash() => $_has(0);
  @$pb.TagNumber(2)
  void clearRHash() => clearField(2);
}

