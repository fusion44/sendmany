///
//  Generated code. Do not modify.
//  source: autopilotrpc/autopilot.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class StatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StatusRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'autopilotrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StatusRequest._() : super();
  factory StatusRequest() => create();
  factory StatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusRequest clone() => StatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusRequest copyWith(void Function(StatusRequest) updates) => super.copyWith((message) => updates(message as StatusRequest)) as StatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatusRequest create() => StatusRequest._();
  StatusRequest createEmptyInstance() => create();
  static $pb.PbList<StatusRequest> createRepeated() => $pb.PbList<StatusRequest>();
  @$core.pragma('dart2js:noInline')
  static StatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusRequest>(create);
  static StatusRequest _defaultInstance;
}

class StatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StatusResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'autopilotrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'active')
    ..hasRequiredFields = false
  ;

  StatusResponse._() : super();
  factory StatusResponse({
    $core.bool active,
  }) {
    final _result = create();
    if (active != null) {
      _result.active = active;
    }
    return _result;
  }
  factory StatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatusResponse clone() => StatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatusResponse copyWith(void Function(StatusResponse) updates) => super.copyWith((message) => updates(message as StatusResponse)) as StatusResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatusResponse create() => StatusResponse._();
  StatusResponse createEmptyInstance() => create();
  static $pb.PbList<StatusResponse> createRepeated() => $pb.PbList<StatusResponse>();
  @$core.pragma('dart2js:noInline')
  static StatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatusResponse>(create);
  static StatusResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get active => $_getBF(0);
  @$pb.TagNumber(1)
  set active($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasActive() => $_has(0);
  @$pb.TagNumber(1)
  void clearActive() => clearField(1);
}

class ModifyStatusRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyStatusRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'autopilotrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'enable')
    ..hasRequiredFields = false
  ;

  ModifyStatusRequest._() : super();
  factory ModifyStatusRequest({
    $core.bool enable,
  }) {
    final _result = create();
    if (enable != null) {
      _result.enable = enable;
    }
    return _result;
  }
  factory ModifyStatusRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyStatusRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyStatusRequest clone() => ModifyStatusRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyStatusRequest copyWith(void Function(ModifyStatusRequest) updates) => super.copyWith((message) => updates(message as ModifyStatusRequest)) as ModifyStatusRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyStatusRequest create() => ModifyStatusRequest._();
  ModifyStatusRequest createEmptyInstance() => create();
  static $pb.PbList<ModifyStatusRequest> createRepeated() => $pb.PbList<ModifyStatusRequest>();
  @$core.pragma('dart2js:noInline')
  static ModifyStatusRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyStatusRequest>(create);
  static ModifyStatusRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get enable => $_getBF(0);
  @$pb.TagNumber(1)
  set enable($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEnable() => $_has(0);
  @$pb.TagNumber(1)
  void clearEnable() => clearField(1);
}

class ModifyStatusResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ModifyStatusResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'autopilotrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ModifyStatusResponse._() : super();
  factory ModifyStatusResponse() => create();
  factory ModifyStatusResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ModifyStatusResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ModifyStatusResponse clone() => ModifyStatusResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ModifyStatusResponse copyWith(void Function(ModifyStatusResponse) updates) => super.copyWith((message) => updates(message as ModifyStatusResponse)) as ModifyStatusResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ModifyStatusResponse create() => ModifyStatusResponse._();
  ModifyStatusResponse createEmptyInstance() => create();
  static $pb.PbList<ModifyStatusResponse> createRepeated() => $pb.PbList<ModifyStatusResponse>();
  @$core.pragma('dart2js:noInline')
  static ModifyStatusResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ModifyStatusResponse>(create);
  static ModifyStatusResponse _defaultInstance;
}

class QueryScoresRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryScoresRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'autopilotrpc'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubkeys')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoreLocalState')
    ..hasRequiredFields = false
  ;

  QueryScoresRequest._() : super();
  factory QueryScoresRequest({
    $core.Iterable<$core.String> pubkeys,
    $core.bool ignoreLocalState,
  }) {
    final _result = create();
    if (pubkeys != null) {
      _result.pubkeys.addAll(pubkeys);
    }
    if (ignoreLocalState != null) {
      _result.ignoreLocalState = ignoreLocalState;
    }
    return _result;
  }
  factory QueryScoresRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryScoresRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryScoresRequest clone() => QueryScoresRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryScoresRequest copyWith(void Function(QueryScoresRequest) updates) => super.copyWith((message) => updates(message as QueryScoresRequest)) as QueryScoresRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryScoresRequest create() => QueryScoresRequest._();
  QueryScoresRequest createEmptyInstance() => create();
  static $pb.PbList<QueryScoresRequest> createRepeated() => $pb.PbList<QueryScoresRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryScoresRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryScoresRequest>(create);
  static QueryScoresRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get pubkeys => $_getList(0);

  @$pb.TagNumber(2)
  $core.bool get ignoreLocalState => $_getBF(1);
  @$pb.TagNumber(2)
  set ignoreLocalState($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIgnoreLocalState() => $_has(1);
  @$pb.TagNumber(2)
  void clearIgnoreLocalState() => clearField(2);
}

class QueryScoresResponse_HeuristicResult extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryScoresResponse.HeuristicResult', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'autopilotrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'heuristic')
    ..m<$core.String, $core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scores', entryClassName: 'QueryScoresResponse.HeuristicResult.ScoresEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OD, packageName: const $pb.PackageName('autopilotrpc'))
    ..hasRequiredFields = false
  ;

  QueryScoresResponse_HeuristicResult._() : super();
  factory QueryScoresResponse_HeuristicResult({
    $core.String heuristic,
    $core.Map<$core.String, $core.double> scores,
  }) {
    final _result = create();
    if (heuristic != null) {
      _result.heuristic = heuristic;
    }
    if (scores != null) {
      _result.scores.addAll(scores);
    }
    return _result;
  }
  factory QueryScoresResponse_HeuristicResult.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryScoresResponse_HeuristicResult.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryScoresResponse_HeuristicResult clone() => QueryScoresResponse_HeuristicResult()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryScoresResponse_HeuristicResult copyWith(void Function(QueryScoresResponse_HeuristicResult) updates) => super.copyWith((message) => updates(message as QueryScoresResponse_HeuristicResult)) as QueryScoresResponse_HeuristicResult; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryScoresResponse_HeuristicResult create() => QueryScoresResponse_HeuristicResult._();
  QueryScoresResponse_HeuristicResult createEmptyInstance() => create();
  static $pb.PbList<QueryScoresResponse_HeuristicResult> createRepeated() => $pb.PbList<QueryScoresResponse_HeuristicResult>();
  @$core.pragma('dart2js:noInline')
  static QueryScoresResponse_HeuristicResult getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryScoresResponse_HeuristicResult>(create);
  static QueryScoresResponse_HeuristicResult _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get heuristic => $_getSZ(0);
  @$pb.TagNumber(1)
  set heuristic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeuristic() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeuristic() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.double> get scores => $_getMap(1);
}

class QueryScoresResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryScoresResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'autopilotrpc'), createEmptyInstance: create)
    ..pc<QueryScoresResponse_HeuristicResult>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'results', $pb.PbFieldType.PM, subBuilder: QueryScoresResponse_HeuristicResult.create)
    ..hasRequiredFields = false
  ;

  QueryScoresResponse._() : super();
  factory QueryScoresResponse({
    $core.Iterable<QueryScoresResponse_HeuristicResult> results,
  }) {
    final _result = create();
    if (results != null) {
      _result.results.addAll(results);
    }
    return _result;
  }
  factory QueryScoresResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryScoresResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryScoresResponse clone() => QueryScoresResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryScoresResponse copyWith(void Function(QueryScoresResponse) updates) => super.copyWith((message) => updates(message as QueryScoresResponse)) as QueryScoresResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryScoresResponse create() => QueryScoresResponse._();
  QueryScoresResponse createEmptyInstance() => create();
  static $pb.PbList<QueryScoresResponse> createRepeated() => $pb.PbList<QueryScoresResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryScoresResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryScoresResponse>(create);
  static QueryScoresResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<QueryScoresResponse_HeuristicResult> get results => $_getList(0);
}

class SetScoresRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetScoresRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'autopilotrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'heuristic')
    ..m<$core.String, $core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'scores', entryClassName: 'SetScoresRequest.ScoresEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OD, packageName: const $pb.PackageName('autopilotrpc'))
    ..hasRequiredFields = false
  ;

  SetScoresRequest._() : super();
  factory SetScoresRequest({
    $core.String heuristic,
    $core.Map<$core.String, $core.double> scores,
  }) {
    final _result = create();
    if (heuristic != null) {
      _result.heuristic = heuristic;
    }
    if (scores != null) {
      _result.scores.addAll(scores);
    }
    return _result;
  }
  factory SetScoresRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetScoresRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetScoresRequest clone() => SetScoresRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetScoresRequest copyWith(void Function(SetScoresRequest) updates) => super.copyWith((message) => updates(message as SetScoresRequest)) as SetScoresRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetScoresRequest create() => SetScoresRequest._();
  SetScoresRequest createEmptyInstance() => create();
  static $pb.PbList<SetScoresRequest> createRepeated() => $pb.PbList<SetScoresRequest>();
  @$core.pragma('dart2js:noInline')
  static SetScoresRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetScoresRequest>(create);
  static SetScoresRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get heuristic => $_getSZ(0);
  @$pb.TagNumber(1)
  set heuristic($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHeuristic() => $_has(0);
  @$pb.TagNumber(1)
  void clearHeuristic() => clearField(1);

  @$pb.TagNumber(2)
  $core.Map<$core.String, $core.double> get scores => $_getMap(1);
}

class SetScoresResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SetScoresResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'autopilotrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  SetScoresResponse._() : super();
  factory SetScoresResponse() => create();
  factory SetScoresResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SetScoresResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SetScoresResponse clone() => SetScoresResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SetScoresResponse copyWith(void Function(SetScoresResponse) updates) => super.copyWith((message) => updates(message as SetScoresResponse)) as SetScoresResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SetScoresResponse create() => SetScoresResponse._();
  SetScoresResponse createEmptyInstance() => create();
  static $pb.PbList<SetScoresResponse> createRepeated() => $pb.PbList<SetScoresResponse>();
  @$core.pragma('dart2js:noInline')
  static SetScoresResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SetScoresResponse>(create);
  static SetScoresResponse _defaultInstance;
}

