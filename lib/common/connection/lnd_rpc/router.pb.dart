///
//  Generated code. Do not modify.
//  source: router.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,annotate_overrides,unnecessary_const

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'rpc.pb.dart' as $0;

import 'rpc.pbenum.dart' as $0;
import 'router.pbenum.dart';

export 'router.pbenum.dart';

class SendPaymentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendPaymentRequest',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'dest', $pb.PbFieldType.OY)
    ..aInt64(2, 'amt')
    ..a<$core.List<$core.int>>(3, 'paymentHash', $pb.PbFieldType.OY)
    ..a<$core.int>(4, 'finalCltvDelta', $pb.PbFieldType.O3)
    ..aOS(5, 'paymentRequest')
    ..a<$core.int>(6, 'timeoutSeconds', $pb.PbFieldType.O3)
    ..aInt64(7, 'feeLimitSat')
    ..a<Int64>(8, 'outgoingChanId', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<$core.int>(9, 'cltvLimit', $pb.PbFieldType.O3)
    ..pc<$0.RouteHint>(10, 'route_hints', $pb.PbFieldType.PM,
        subBuilder: $0.RouteHint.create)
    ..m<Int64, $core.List<$core.int>>(11, 'destCustomRecords',
        entryClassName: 'SendPaymentRequest.DestCustomRecordsEntry',
        keyFieldType: $pb.PbFieldType.OU6,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('routerrpc'))
    ..aInt64(12, 'amtMsat')
    ..aInt64(13, 'feeLimitMsat')
    ..a<$core.List<$core.int>>(14, 'lastHopPubkey', $pb.PbFieldType.OY)
    ..aOB(15, 'allowSelfPayment')
    ..pc<$0.FeatureBit>(16, 'destFeatures', $pb.PbFieldType.PE,
        valueOf: $0.FeatureBit.valueOf, enumValues: $0.FeatureBit.values)
    ..hasRequiredFields = false;

  SendPaymentRequest._() : super();
  factory SendPaymentRequest() => create();
  factory SendPaymentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendPaymentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SendPaymentRequest clone() => SendPaymentRequest()..mergeFromMessage(this);
  SendPaymentRequest copyWith(void Function(SendPaymentRequest) updates) =>
      super.copyWith((message) => updates(message as SendPaymentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendPaymentRequest create() => SendPaymentRequest._();
  SendPaymentRequest createEmptyInstance() => create();
  static $pb.PbList<SendPaymentRequest> createRepeated() =>
      $pb.PbList<SendPaymentRequest>();
  static SendPaymentRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SendPaymentRequest _defaultInstance;

  $core.List<$core.int> get dest => $_getN(0);
  set dest($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasDest() => $_has(0);
  void clearDest() => clearField(1);

  Int64 get amt => $_getI64(1);
  set amt(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasAmt() => $_has(1);
  void clearAmt() => clearField(2);

  $core.List<$core.int> get paymentHash => $_getN(2);
  set paymentHash($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  $core.bool hasPaymentHash() => $_has(2);
  void clearPaymentHash() => clearField(3);

  $core.int get finalCltvDelta => $_get(3, 0);
  set finalCltvDelta($core.int v) {
    $_setSignedInt32(3, v);
  }

  $core.bool hasFinalCltvDelta() => $_has(3);
  void clearFinalCltvDelta() => clearField(4);

  $core.String get paymentRequest => $_getS(4, '');
  set paymentRequest($core.String v) {
    $_setString(4, v);
  }

  $core.bool hasPaymentRequest() => $_has(4);
  void clearPaymentRequest() => clearField(5);

  $core.int get timeoutSeconds => $_get(5, 0);
  set timeoutSeconds($core.int v) {
    $_setSignedInt32(5, v);
  }

  $core.bool hasTimeoutSeconds() => $_has(5);
  void clearTimeoutSeconds() => clearField(6);

  Int64 get feeLimitSat => $_getI64(6);
  set feeLimitSat(Int64 v) {
    $_setInt64(6, v);
  }

  $core.bool hasFeeLimitSat() => $_has(6);
  void clearFeeLimitSat() => clearField(7);

  Int64 get outgoingChanId => $_getI64(7);
  set outgoingChanId(Int64 v) {
    $_setInt64(7, v);
  }

  $core.bool hasOutgoingChanId() => $_has(7);
  void clearOutgoingChanId() => clearField(8);

  $core.int get cltvLimit => $_get(8, 0);
  set cltvLimit($core.int v) {
    $_setSignedInt32(8, v);
  }

  $core.bool hasCltvLimit() => $_has(8);
  void clearCltvLimit() => clearField(9);

  $core.List<$0.RouteHint> get routeHints => $_getList(9);

  $core.Map<Int64, $core.List<$core.int>> get destCustomRecords => $_getMap(10);

  Int64 get amtMsat => $_getI64(11);
  set amtMsat(Int64 v) {
    $_setInt64(11, v);
  }

  $core.bool hasAmtMsat() => $_has(11);
  void clearAmtMsat() => clearField(12);

  Int64 get feeLimitMsat => $_getI64(12);
  set feeLimitMsat(Int64 v) {
    $_setInt64(12, v);
  }

  $core.bool hasFeeLimitMsat() => $_has(12);
  void clearFeeLimitMsat() => clearField(13);

  $core.List<$core.int> get lastHopPubkey => $_getN(13);
  set lastHopPubkey($core.List<$core.int> v) {
    $_setBytes(13, v);
  }

  $core.bool hasLastHopPubkey() => $_has(13);
  void clearLastHopPubkey() => clearField(14);

  $core.bool get allowSelfPayment => $_get(14, false);
  set allowSelfPayment($core.bool v) {
    $_setBool(14, v);
  }

  $core.bool hasAllowSelfPayment() => $_has(14);
  void clearAllowSelfPayment() => clearField(15);

  $core.List<$0.FeatureBit> get destFeatures => $_getList(15);
}

class TrackPaymentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TrackPaymentRequest',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'paymentHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  TrackPaymentRequest._() : super();
  factory TrackPaymentRequest() => create();
  factory TrackPaymentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TrackPaymentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TrackPaymentRequest clone() => TrackPaymentRequest()..mergeFromMessage(this);
  TrackPaymentRequest copyWith(void Function(TrackPaymentRequest) updates) =>
      super.copyWith((message) => updates(message as TrackPaymentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TrackPaymentRequest create() => TrackPaymentRequest._();
  TrackPaymentRequest createEmptyInstance() => create();
  static $pb.PbList<TrackPaymentRequest> createRepeated() =>
      $pb.PbList<TrackPaymentRequest>();
  static TrackPaymentRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static TrackPaymentRequest _defaultInstance;

  $core.List<$core.int> get paymentHash => $_getN(0);
  set paymentHash($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasPaymentHash() => $_has(0);
  void clearPaymentHash() => clearField(1);
}

class PaymentStatus extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PaymentStatus',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..e<PaymentState>(1, 'state', $pb.PbFieldType.OE,
        defaultOrMaker: PaymentState.IN_FLIGHT,
        valueOf: PaymentState.valueOf,
        enumValues: PaymentState.values)
    ..a<$core.List<$core.int>>(2, 'preimage', $pb.PbFieldType.OY)
    ..a<$0.Route>(3, 'route', $pb.PbFieldType.OM,
        defaultOrMaker: $0.Route.getDefault, subBuilder: $0.Route.create)
    ..pc<$0.HTLCAttempt>(4, 'htlcs', $pb.PbFieldType.PM,
        subBuilder: $0.HTLCAttempt.create)
    ..hasRequiredFields = false;

  PaymentStatus._() : super();
  factory PaymentStatus() => create();
  factory PaymentStatus.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PaymentStatus.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PaymentStatus clone() => PaymentStatus()..mergeFromMessage(this);
  PaymentStatus copyWith(void Function(PaymentStatus) updates) =>
      super.copyWith((message) => updates(message as PaymentStatus));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentStatus create() => PaymentStatus._();
  PaymentStatus createEmptyInstance() => create();
  static $pb.PbList<PaymentStatus> createRepeated() =>
      $pb.PbList<PaymentStatus>();
  static PaymentStatus getDefault() => _defaultInstance ??= create()..freeze();
  static PaymentStatus _defaultInstance;

  PaymentState get state => $_getN(0);
  set state(PaymentState v) {
    setField(1, v);
  }

  $core.bool hasState() => $_has(0);
  void clearState() => clearField(1);

  $core.List<$core.int> get preimage => $_getN(1);
  set preimage($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasPreimage() => $_has(1);
  void clearPreimage() => clearField(2);

  $0.Route get route => $_getN(2);
  set route($0.Route v) {
    setField(3, v);
  }

  $core.bool hasRoute() => $_has(2);
  void clearRoute() => clearField(3);

  $core.List<$0.HTLCAttempt> get htlcs => $_getList(3);
}

class RouteFeeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RouteFeeRequest',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'dest', $pb.PbFieldType.OY)
    ..aInt64(2, 'amtSat')
    ..hasRequiredFields = false;

  RouteFeeRequest._() : super();
  factory RouteFeeRequest() => create();
  factory RouteFeeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RouteFeeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  RouteFeeRequest clone() => RouteFeeRequest()..mergeFromMessage(this);
  RouteFeeRequest copyWith(void Function(RouteFeeRequest) updates) =>
      super.copyWith((message) => updates(message as RouteFeeRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RouteFeeRequest create() => RouteFeeRequest._();
  RouteFeeRequest createEmptyInstance() => create();
  static $pb.PbList<RouteFeeRequest> createRepeated() =>
      $pb.PbList<RouteFeeRequest>();
  static RouteFeeRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static RouteFeeRequest _defaultInstance;

  $core.List<$core.int> get dest => $_getN(0);
  set dest($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasDest() => $_has(0);
  void clearDest() => clearField(1);

  Int64 get amtSat => $_getI64(1);
  set amtSat(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasAmtSat() => $_has(1);
  void clearAmtSat() => clearField(2);
}

class RouteFeeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RouteFeeResponse',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..aInt64(1, 'routingFeeMsat')
    ..aInt64(2, 'timeLockDelay')
    ..hasRequiredFields = false;

  RouteFeeResponse._() : super();
  factory RouteFeeResponse() => create();
  factory RouteFeeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RouteFeeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  RouteFeeResponse clone() => RouteFeeResponse()..mergeFromMessage(this);
  RouteFeeResponse copyWith(void Function(RouteFeeResponse) updates) =>
      super.copyWith((message) => updates(message as RouteFeeResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RouteFeeResponse create() => RouteFeeResponse._();
  RouteFeeResponse createEmptyInstance() => create();
  static $pb.PbList<RouteFeeResponse> createRepeated() =>
      $pb.PbList<RouteFeeResponse>();
  static RouteFeeResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static RouteFeeResponse _defaultInstance;

  Int64 get routingFeeMsat => $_getI64(0);
  set routingFeeMsat(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasRoutingFeeMsat() => $_has(0);
  void clearRoutingFeeMsat() => clearField(1);

  Int64 get timeLockDelay => $_getI64(1);
  set timeLockDelay(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasTimeLockDelay() => $_has(1);
  void clearTimeLockDelay() => clearField(2);
}

class SendToRouteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendToRouteRequest',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'paymentHash', $pb.PbFieldType.OY)
    ..a<$0.Route>(2, 'route', $pb.PbFieldType.OM,
        defaultOrMaker: $0.Route.getDefault, subBuilder: $0.Route.create)
    ..hasRequiredFields = false;

  SendToRouteRequest._() : super();
  factory SendToRouteRequest() => create();
  factory SendToRouteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendToRouteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SendToRouteRequest clone() => SendToRouteRequest()..mergeFromMessage(this);
  SendToRouteRequest copyWith(void Function(SendToRouteRequest) updates) =>
      super.copyWith((message) => updates(message as SendToRouteRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendToRouteRequest create() => SendToRouteRequest._();
  SendToRouteRequest createEmptyInstance() => create();
  static $pb.PbList<SendToRouteRequest> createRepeated() =>
      $pb.PbList<SendToRouteRequest>();
  static SendToRouteRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SendToRouteRequest _defaultInstance;

  $core.List<$core.int> get paymentHash => $_getN(0);
  set paymentHash($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasPaymentHash() => $_has(0);
  void clearPaymentHash() => clearField(1);

  $0.Route get route => $_getN(1);
  set route($0.Route v) {
    setField(2, v);
  }

  $core.bool hasRoute() => $_has(1);
  void clearRoute() => clearField(2);
}

class SendToRouteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendToRouteResponse',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'preimage', $pb.PbFieldType.OY)
    ..a<Failure>(2, 'failure', $pb.PbFieldType.OM,
        defaultOrMaker: Failure.getDefault, subBuilder: Failure.create)
    ..hasRequiredFields = false;

  SendToRouteResponse._() : super();
  factory SendToRouteResponse() => create();
  factory SendToRouteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendToRouteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SendToRouteResponse clone() => SendToRouteResponse()..mergeFromMessage(this);
  SendToRouteResponse copyWith(void Function(SendToRouteResponse) updates) =>
      super.copyWith((message) => updates(message as SendToRouteResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendToRouteResponse create() => SendToRouteResponse._();
  SendToRouteResponse createEmptyInstance() => create();
  static $pb.PbList<SendToRouteResponse> createRepeated() =>
      $pb.PbList<SendToRouteResponse>();
  static SendToRouteResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SendToRouteResponse _defaultInstance;

  $core.List<$core.int> get preimage => $_getN(0);
  set preimage($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasPreimage() => $_has(0);
  void clearPreimage() => clearField(1);

  Failure get failure => $_getN(1);
  set failure(Failure v) {
    setField(2, v);
  }

  $core.bool hasFailure() => $_has(1);
  void clearFailure() => clearField(2);
}

class Failure extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Failure',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..e<Failure_FailureCode>(1, 'code', $pb.PbFieldType.OE,
        defaultOrMaker: Failure_FailureCode.RESERVED,
        valueOf: Failure_FailureCode.valueOf,
        enumValues: Failure_FailureCode.values)
    ..a<ChannelUpdate>(3, 'channelUpdate', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelUpdate.getDefault,
        subBuilder: ChannelUpdate.create)
    ..a<Int64>(4, 'htlcMsat', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<$core.List<$core.int>>(5, 'onionSha256', $pb.PbFieldType.OY,
        protoName: 'onion_sha_256')
    ..a<$core.int>(6, 'cltvExpiry', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, 'flags', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, 'failureSourceIndex', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, 'height', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  Failure._() : super();
  factory Failure() => create();
  factory Failure.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Failure.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Failure clone() => Failure()..mergeFromMessage(this);
  Failure copyWith(void Function(Failure) updates) =>
      super.copyWith((message) => updates(message as Failure));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Failure create() => Failure._();
  Failure createEmptyInstance() => create();
  static $pb.PbList<Failure> createRepeated() => $pb.PbList<Failure>();
  static Failure getDefault() => _defaultInstance ??= create()..freeze();
  static Failure _defaultInstance;

  Failure_FailureCode get code => $_getN(0);
  set code(Failure_FailureCode v) {
    setField(1, v);
  }

  $core.bool hasCode() => $_has(0);
  void clearCode() => clearField(1);

  ChannelUpdate get channelUpdate => $_getN(1);
  set channelUpdate(ChannelUpdate v) {
    setField(3, v);
  }

  $core.bool hasChannelUpdate() => $_has(1);
  void clearChannelUpdate() => clearField(3);

  Int64 get htlcMsat => $_getI64(2);
  set htlcMsat(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasHtlcMsat() => $_has(2);
  void clearHtlcMsat() => clearField(4);

  $core.List<$core.int> get onionSha256 => $_getN(3);
  set onionSha256($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  $core.bool hasOnionSha256() => $_has(3);
  void clearOnionSha256() => clearField(5);

  $core.int get cltvExpiry => $_get(4, 0);
  set cltvExpiry($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  $core.bool hasCltvExpiry() => $_has(4);
  void clearCltvExpiry() => clearField(6);

  $core.int get flags => $_get(5, 0);
  set flags($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  $core.bool hasFlags() => $_has(5);
  void clearFlags() => clearField(7);

  $core.int get failureSourceIndex => $_get(6, 0);
  set failureSourceIndex($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  $core.bool hasFailureSourceIndex() => $_has(6);
  void clearFailureSourceIndex() => clearField(8);

  $core.int get height => $_get(7, 0);
  set height($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  $core.bool hasHeight() => $_has(7);
  void clearHeight() => clearField(9);
}

class ChannelUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelUpdate',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'signature', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'chainHash', $pb.PbFieldType.OY)
    ..a<Int64>(3, 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<$core.int>(4, 'timestamp', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'channelFlags', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'timeLockDelta', $pb.PbFieldType.OU3)
    ..a<Int64>(7, 'htlcMinimumMsat', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<$core.int>(8, 'baseFee', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, 'feeRate', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, 'messageFlags', $pb.PbFieldType.OU3)
    ..a<Int64>(11, 'htlcMaximumMsat', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<$core.List<$core.int>>(12, 'extraOpaqueData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  ChannelUpdate._() : super();
  factory ChannelUpdate() => create();
  factory ChannelUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelUpdate clone() => ChannelUpdate()..mergeFromMessage(this);
  ChannelUpdate copyWith(void Function(ChannelUpdate) updates) =>
      super.copyWith((message) => updates(message as ChannelUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelUpdate create() => ChannelUpdate._();
  ChannelUpdate createEmptyInstance() => create();
  static $pb.PbList<ChannelUpdate> createRepeated() =>
      $pb.PbList<ChannelUpdate>();
  static ChannelUpdate getDefault() => _defaultInstance ??= create()..freeze();
  static ChannelUpdate _defaultInstance;

  $core.List<$core.int> get signature => $_getN(0);
  set signature($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasSignature() => $_has(0);
  void clearSignature() => clearField(1);

  $core.List<$core.int> get chainHash => $_getN(1);
  set chainHash($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasChainHash() => $_has(1);
  void clearChainHash() => clearField(2);

  Int64 get chanId => $_getI64(2);
  set chanId(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasChanId() => $_has(2);
  void clearChanId() => clearField(3);

  $core.int get timestamp => $_get(3, 0);
  set timestamp($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  $core.bool hasTimestamp() => $_has(3);
  void clearTimestamp() => clearField(4);

  $core.int get channelFlags => $_get(4, 0);
  set channelFlags($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  $core.bool hasChannelFlags() => $_has(4);
  void clearChannelFlags() => clearField(5);

  $core.int get timeLockDelta => $_get(5, 0);
  set timeLockDelta($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  $core.bool hasTimeLockDelta() => $_has(5);
  void clearTimeLockDelta() => clearField(6);

  Int64 get htlcMinimumMsat => $_getI64(6);
  set htlcMinimumMsat(Int64 v) {
    $_setInt64(6, v);
  }

  $core.bool hasHtlcMinimumMsat() => $_has(6);
  void clearHtlcMinimumMsat() => clearField(7);

  $core.int get baseFee => $_get(7, 0);
  set baseFee($core.int v) {
    $_setUnsignedInt32(7, v);
  }

  $core.bool hasBaseFee() => $_has(7);
  void clearBaseFee() => clearField(8);

  $core.int get feeRate => $_get(8, 0);
  set feeRate($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  $core.bool hasFeeRate() => $_has(8);
  void clearFeeRate() => clearField(9);

  $core.int get messageFlags => $_get(9, 0);
  set messageFlags($core.int v) {
    $_setUnsignedInt32(9, v);
  }

  $core.bool hasMessageFlags() => $_has(9);
  void clearMessageFlags() => clearField(10);

  Int64 get htlcMaximumMsat => $_getI64(10);
  set htlcMaximumMsat(Int64 v) {
    $_setInt64(10, v);
  }

  $core.bool hasHtlcMaximumMsat() => $_has(10);
  void clearHtlcMaximumMsat() => clearField(11);

  $core.List<$core.int> get extraOpaqueData => $_getN(11);
  set extraOpaqueData($core.List<$core.int> v) {
    $_setBytes(11, v);
  }

  $core.bool hasExtraOpaqueData() => $_has(11);
  void clearExtraOpaqueData() => clearField(12);
}

class ResetMissionControlRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ResetMissionControlRequest',
      package: const $pb.PackageName('routerrpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  ResetMissionControlRequest._() : super();
  factory ResetMissionControlRequest() => create();
  factory ResetMissionControlRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResetMissionControlRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ResetMissionControlRequest clone() =>
      ResetMissionControlRequest()..mergeFromMessage(this);
  ResetMissionControlRequest copyWith(
          void Function(ResetMissionControlRequest) updates) =>
      super.copyWith(
          (message) => updates(message as ResetMissionControlRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetMissionControlRequest create() => ResetMissionControlRequest._();
  ResetMissionControlRequest createEmptyInstance() => create();
  static $pb.PbList<ResetMissionControlRequest> createRepeated() =>
      $pb.PbList<ResetMissionControlRequest>();
  static ResetMissionControlRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ResetMissionControlRequest _defaultInstance;
}

class ResetMissionControlResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ResetMissionControlResponse',
      package: const $pb.PackageName('routerrpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  ResetMissionControlResponse._() : super();
  factory ResetMissionControlResponse() => create();
  factory ResetMissionControlResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ResetMissionControlResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ResetMissionControlResponse clone() =>
      ResetMissionControlResponse()..mergeFromMessage(this);
  ResetMissionControlResponse copyWith(
          void Function(ResetMissionControlResponse) updates) =>
      super.copyWith(
          (message) => updates(message as ResetMissionControlResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ResetMissionControlResponse create() =>
      ResetMissionControlResponse._();
  ResetMissionControlResponse createEmptyInstance() => create();
  static $pb.PbList<ResetMissionControlResponse> createRepeated() =>
      $pb.PbList<ResetMissionControlResponse>();
  static ResetMissionControlResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ResetMissionControlResponse _defaultInstance;
}

class QueryMissionControlRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'QueryMissionControlRequest',
      package: const $pb.PackageName('routerrpc'),
      createEmptyInstance: create)
    ..hasRequiredFields = false;

  QueryMissionControlRequest._() : super();
  factory QueryMissionControlRequest() => create();
  factory QueryMissionControlRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueryMissionControlRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  QueryMissionControlRequest clone() =>
      QueryMissionControlRequest()..mergeFromMessage(this);
  QueryMissionControlRequest copyWith(
          void Function(QueryMissionControlRequest) updates) =>
      super.copyWith(
          (message) => updates(message as QueryMissionControlRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryMissionControlRequest create() => QueryMissionControlRequest._();
  QueryMissionControlRequest createEmptyInstance() => create();
  static $pb.PbList<QueryMissionControlRequest> createRepeated() =>
      $pb.PbList<QueryMissionControlRequest>();
  static QueryMissionControlRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static QueryMissionControlRequest _defaultInstance;
}

class QueryMissionControlResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'QueryMissionControlResponse',
      package: const $pb.PackageName('routerrpc'),
      createEmptyInstance: create)
    ..pc<PairHistory>(2, 'pairs', $pb.PbFieldType.PM,
        subBuilder: PairHistory.create)
    ..hasRequiredFields = false;

  QueryMissionControlResponse._() : super();
  factory QueryMissionControlResponse() => create();
  factory QueryMissionControlResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueryMissionControlResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  QueryMissionControlResponse clone() =>
      QueryMissionControlResponse()..mergeFromMessage(this);
  QueryMissionControlResponse copyWith(
          void Function(QueryMissionControlResponse) updates) =>
      super.copyWith(
          (message) => updates(message as QueryMissionControlResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryMissionControlResponse create() =>
      QueryMissionControlResponse._();
  QueryMissionControlResponse createEmptyInstance() => create();
  static $pb.PbList<QueryMissionControlResponse> createRepeated() =>
      $pb.PbList<QueryMissionControlResponse>();
  static QueryMissionControlResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static QueryMissionControlResponse _defaultInstance;

  $core.List<PairHistory> get pairs => $_getList(0);
}

class PairHistory extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PairHistory',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'node_from', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'node_to', $pb.PbFieldType.OY)
    ..a<PairData>(7, 'history', $pb.PbFieldType.OM,
        defaultOrMaker: PairData.getDefault, subBuilder: PairData.create)
    ..hasRequiredFields = false;

  PairHistory._() : super();
  factory PairHistory() => create();
  factory PairHistory.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PairHistory.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PairHistory clone() => PairHistory()..mergeFromMessage(this);
  PairHistory copyWith(void Function(PairHistory) updates) =>
      super.copyWith((message) => updates(message as PairHistory));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PairHistory create() => PairHistory._();
  PairHistory createEmptyInstance() => create();
  static $pb.PbList<PairHistory> createRepeated() => $pb.PbList<PairHistory>();
  static PairHistory getDefault() => _defaultInstance ??= create()..freeze();
  static PairHistory _defaultInstance;

  $core.List<$core.int> get nodeFrom => $_getN(0);
  set nodeFrom($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasNodeFrom() => $_has(0);
  void clearNodeFrom() => clearField(1);

  $core.List<$core.int> get nodeTo => $_getN(1);
  set nodeTo($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasNodeTo() => $_has(1);
  void clearNodeTo() => clearField(2);

  PairData get history => $_getN(2);
  set history(PairData v) {
    setField(7, v);
  }

  $core.bool hasHistory() => $_has(2);
  void clearHistory() => clearField(7);
}

class PairData extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PairData',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..aInt64(1, 'fail_time')
    ..aInt64(2, 'fail_amt_sat')
    ..aInt64(4, 'fail_amt_msat')
    ..aInt64(5, 'success_time')
    ..aInt64(6, 'success_amt_sat')
    ..aInt64(7, 'success_amt_msat')
    ..hasRequiredFields = false;

  PairData._() : super();
  factory PairData() => create();
  factory PairData.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PairData.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PairData clone() => PairData()..mergeFromMessage(this);
  PairData copyWith(void Function(PairData) updates) =>
      super.copyWith((message) => updates(message as PairData));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PairData create() => PairData._();
  PairData createEmptyInstance() => create();
  static $pb.PbList<PairData> createRepeated() => $pb.PbList<PairData>();
  static PairData getDefault() => _defaultInstance ??= create()..freeze();
  static PairData _defaultInstance;

  Int64 get failTime => $_getI64(0);
  set failTime(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasFailTime() => $_has(0);
  void clearFailTime() => clearField(1);

  Int64 get failAmtSat => $_getI64(1);
  set failAmtSat(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasFailAmtSat() => $_has(1);
  void clearFailAmtSat() => clearField(2);

  Int64 get failAmtMsat => $_getI64(2);
  set failAmtMsat(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasFailAmtMsat() => $_has(2);
  void clearFailAmtMsat() => clearField(4);

  Int64 get successTime => $_getI64(3);
  set successTime(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasSuccessTime() => $_has(3);
  void clearSuccessTime() => clearField(5);

  Int64 get successAmtSat => $_getI64(4);
  set successAmtSat(Int64 v) {
    $_setInt64(4, v);
  }

  $core.bool hasSuccessAmtSat() => $_has(4);
  void clearSuccessAmtSat() => clearField(6);

  Int64 get successAmtMsat => $_getI64(5);
  set successAmtMsat(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasSuccessAmtMsat() => $_has(5);
  void clearSuccessAmtMsat() => clearField(7);
}

class QueryProbabilityRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QueryProbabilityRequest',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'from_node', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'to_node', $pb.PbFieldType.OY)
    ..aInt64(3, 'amt_msat')
    ..hasRequiredFields = false;

  QueryProbabilityRequest._() : super();
  factory QueryProbabilityRequest() => create();
  factory QueryProbabilityRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueryProbabilityRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  QueryProbabilityRequest clone() =>
      QueryProbabilityRequest()..mergeFromMessage(this);
  QueryProbabilityRequest copyWith(
          void Function(QueryProbabilityRequest) updates) =>
      super.copyWith((message) => updates(message as QueryProbabilityRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryProbabilityRequest create() => QueryProbabilityRequest._();
  QueryProbabilityRequest createEmptyInstance() => create();
  static $pb.PbList<QueryProbabilityRequest> createRepeated() =>
      $pb.PbList<QueryProbabilityRequest>();
  static QueryProbabilityRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static QueryProbabilityRequest _defaultInstance;

  $core.List<$core.int> get fromNode => $_getN(0);
  set fromNode($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasFromNode() => $_has(0);
  void clearFromNode() => clearField(1);

  $core.List<$core.int> get toNode => $_getN(1);
  set toNode($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasToNode() => $_has(1);
  void clearToNode() => clearField(2);

  Int64 get amtMsat => $_getI64(2);
  set amtMsat(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasAmtMsat() => $_has(2);
  void clearAmtMsat() => clearField(3);
}

class QueryProbabilityResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QueryProbabilityResponse',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..a<$core.double>(1, 'probability', $pb.PbFieldType.OD)
    ..a<PairData>(2, 'history', $pb.PbFieldType.OM,
        defaultOrMaker: PairData.getDefault, subBuilder: PairData.create)
    ..hasRequiredFields = false;

  QueryProbabilityResponse._() : super();
  factory QueryProbabilityResponse() => create();
  factory QueryProbabilityResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueryProbabilityResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  QueryProbabilityResponse clone() =>
      QueryProbabilityResponse()..mergeFromMessage(this);
  QueryProbabilityResponse copyWith(
          void Function(QueryProbabilityResponse) updates) =>
      super.copyWith((message) => updates(message as QueryProbabilityResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryProbabilityResponse create() => QueryProbabilityResponse._();
  QueryProbabilityResponse createEmptyInstance() => create();
  static $pb.PbList<QueryProbabilityResponse> createRepeated() =>
      $pb.PbList<QueryProbabilityResponse>();
  static QueryProbabilityResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static QueryProbabilityResponse _defaultInstance;

  $core.double get probability => $_getN(0);
  set probability($core.double v) {
    $_setDouble(0, v);
  }

  $core.bool hasProbability() => $_has(0);
  void clearProbability() => clearField(1);

  PairData get history => $_getN(1);
  set history(PairData v) {
    setField(2, v);
  }

  $core.bool hasHistory() => $_has(1);
  void clearHistory() => clearField(2);
}

class BuildRouteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BuildRouteRequest',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..aInt64(1, 'amtMsat')
    ..a<$core.int>(2, 'finalCltvDelta', $pb.PbFieldType.O3)
    ..a<Int64>(3, 'outgoingChanId', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..p<$core.List<$core.int>>(4, 'hopPubkeys', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  BuildRouteRequest._() : super();
  factory BuildRouteRequest() => create();
  factory BuildRouteRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BuildRouteRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  BuildRouteRequest clone() => BuildRouteRequest()..mergeFromMessage(this);
  BuildRouteRequest copyWith(void Function(BuildRouteRequest) updates) =>
      super.copyWith((message) => updates(message as BuildRouteRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BuildRouteRequest create() => BuildRouteRequest._();
  BuildRouteRequest createEmptyInstance() => create();
  static $pb.PbList<BuildRouteRequest> createRepeated() =>
      $pb.PbList<BuildRouteRequest>();
  static BuildRouteRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static BuildRouteRequest _defaultInstance;

  Int64 get amtMsat => $_getI64(0);
  set amtMsat(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasAmtMsat() => $_has(0);
  void clearAmtMsat() => clearField(1);

  $core.int get finalCltvDelta => $_get(1, 0);
  set finalCltvDelta($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasFinalCltvDelta() => $_has(1);
  void clearFinalCltvDelta() => clearField(2);

  Int64 get outgoingChanId => $_getI64(2);
  set outgoingChanId(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasOutgoingChanId() => $_has(2);
  void clearOutgoingChanId() => clearField(3);

  $core.List<$core.List<$core.int>> get hopPubkeys => $_getList(3);
}

class BuildRouteResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BuildRouteResponse',
      package: const $pb.PackageName('routerrpc'), createEmptyInstance: create)
    ..a<$0.Route>(1, 'route', $pb.PbFieldType.OM,
        defaultOrMaker: $0.Route.getDefault, subBuilder: $0.Route.create)
    ..hasRequiredFields = false;

  BuildRouteResponse._() : super();
  factory BuildRouteResponse() => create();
  factory BuildRouteResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BuildRouteResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  BuildRouteResponse clone() => BuildRouteResponse()..mergeFromMessage(this);
  BuildRouteResponse copyWith(void Function(BuildRouteResponse) updates) =>
      super.copyWith((message) => updates(message as BuildRouteResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BuildRouteResponse create() => BuildRouteResponse._();
  BuildRouteResponse createEmptyInstance() => create();
  static $pb.PbList<BuildRouteResponse> createRepeated() =>
      $pb.PbList<BuildRouteResponse>();
  static BuildRouteResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static BuildRouteResponse _defaultInstance;

  $0.Route get route => $_getN(0);
  set route($0.Route v) {
    setField(1, v);
  }

  $core.bool hasRoute() => $_has(0);
  void clearRoute() => clearField(1);
}
