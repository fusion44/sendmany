///
//  Generated code. Do not modify.
//  source: wtclientrpc/wtclient.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

import 'wtclient.pbenum.dart';

export 'wtclient.pbenum.dart';

class AddTowerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddTowerRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubkey', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  AddTowerRequest._() : super();
  factory AddTowerRequest({
    $core.List<$core.int> pubkey,
    $core.String address,
  }) {
    final _result = create();
    if (pubkey != null) {
      _result.pubkey = pubkey;
    }
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory AddTowerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTowerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddTowerRequest clone() => AddTowerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddTowerRequest copyWith(void Function(AddTowerRequest) updates) => super.copyWith((message) => updates(message as AddTowerRequest)) as AddTowerRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddTowerRequest create() => AddTowerRequest._();
  AddTowerRequest createEmptyInstance() => create();
  static $pb.PbList<AddTowerRequest> createRepeated() => $pb.PbList<AddTowerRequest>();
  @$core.pragma('dart2js:noInline')
  static AddTowerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddTowerRequest>(create);
  static AddTowerRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get pubkey => $_getN(0);
  @$pb.TagNumber(1)
  set pubkey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubkey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubkey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);
}

class AddTowerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddTowerResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AddTowerResponse._() : super();
  factory AddTowerResponse() => create();
  factory AddTowerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddTowerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddTowerResponse clone() => AddTowerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddTowerResponse copyWith(void Function(AddTowerResponse) updates) => super.copyWith((message) => updates(message as AddTowerResponse)) as AddTowerResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddTowerResponse create() => AddTowerResponse._();
  AddTowerResponse createEmptyInstance() => create();
  static $pb.PbList<AddTowerResponse> createRepeated() => $pb.PbList<AddTowerResponse>();
  @$core.pragma('dart2js:noInline')
  static AddTowerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddTowerResponse>(create);
  static AddTowerResponse _defaultInstance;
}

class RemoveTowerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveTowerRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubkey', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  RemoveTowerRequest._() : super();
  factory RemoveTowerRequest({
    $core.List<$core.int> pubkey,
    $core.String address,
  }) {
    final _result = create();
    if (pubkey != null) {
      _result.pubkey = pubkey;
    }
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory RemoveTowerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveTowerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveTowerRequest clone() => RemoveTowerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveTowerRequest copyWith(void Function(RemoveTowerRequest) updates) => super.copyWith((message) => updates(message as RemoveTowerRequest)) as RemoveTowerRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveTowerRequest create() => RemoveTowerRequest._();
  RemoveTowerRequest createEmptyInstance() => create();
  static $pb.PbList<RemoveTowerRequest> createRepeated() => $pb.PbList<RemoveTowerRequest>();
  @$core.pragma('dart2js:noInline')
  static RemoveTowerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveTowerRequest>(create);
  static RemoveTowerRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get pubkey => $_getN(0);
  @$pb.TagNumber(1)
  set pubkey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubkey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubkey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);
}

class RemoveTowerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RemoveTowerResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RemoveTowerResponse._() : super();
  factory RemoveTowerResponse() => create();
  factory RemoveTowerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RemoveTowerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RemoveTowerResponse clone() => RemoveTowerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RemoveTowerResponse copyWith(void Function(RemoveTowerResponse) updates) => super.copyWith((message) => updates(message as RemoveTowerResponse)) as RemoveTowerResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RemoveTowerResponse create() => RemoveTowerResponse._();
  RemoveTowerResponse createEmptyInstance() => create();
  static $pb.PbList<RemoveTowerResponse> createRepeated() => $pb.PbList<RemoveTowerResponse>();
  @$core.pragma('dart2js:noInline')
  static RemoveTowerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RemoveTowerResponse>(create);
  static RemoveTowerResponse _defaultInstance;
}

class GetTowerInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTowerInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubkey', $pb.PbFieldType.OY)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeSessions')
    ..hasRequiredFields = false
  ;

  GetTowerInfoRequest._() : super();
  factory GetTowerInfoRequest({
    $core.List<$core.int> pubkey,
    $core.bool includeSessions,
  }) {
    final _result = create();
    if (pubkey != null) {
      _result.pubkey = pubkey;
    }
    if (includeSessions != null) {
      _result.includeSessions = includeSessions;
    }
    return _result;
  }
  factory GetTowerInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTowerInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTowerInfoRequest clone() => GetTowerInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTowerInfoRequest copyWith(void Function(GetTowerInfoRequest) updates) => super.copyWith((message) => updates(message as GetTowerInfoRequest)) as GetTowerInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTowerInfoRequest create() => GetTowerInfoRequest._();
  GetTowerInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetTowerInfoRequest> createRepeated() => $pb.PbList<GetTowerInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTowerInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTowerInfoRequest>(create);
  static GetTowerInfoRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get pubkey => $_getN(0);
  @$pb.TagNumber(1)
  set pubkey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubkey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubkey() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get includeSessions => $_getBF(1);
  @$pb.TagNumber(2)
  set includeSessions($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIncludeSessions() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeSessions() => clearField(2);
}

class TowerSession extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TowerSession', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numBackups', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numPendingBackups', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxBackups', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sweepSatPerByte', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  TowerSession._() : super();
  factory TowerSession({
    $core.int numBackups,
    $core.int numPendingBackups,
    $core.int maxBackups,
    $core.int sweepSatPerByte,
  }) {
    final _result = create();
    if (numBackups != null) {
      _result.numBackups = numBackups;
    }
    if (numPendingBackups != null) {
      _result.numPendingBackups = numPendingBackups;
    }
    if (maxBackups != null) {
      _result.maxBackups = maxBackups;
    }
    if (sweepSatPerByte != null) {
      _result.sweepSatPerByte = sweepSatPerByte;
    }
    return _result;
  }
  factory TowerSession.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TowerSession.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TowerSession clone() => TowerSession()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TowerSession copyWith(void Function(TowerSession) updates) => super.copyWith((message) => updates(message as TowerSession)) as TowerSession; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TowerSession create() => TowerSession._();
  TowerSession createEmptyInstance() => create();
  static $pb.PbList<TowerSession> createRepeated() => $pb.PbList<TowerSession>();
  @$core.pragma('dart2js:noInline')
  static TowerSession getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TowerSession>(create);
  static TowerSession _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get numBackups => $_getIZ(0);
  @$pb.TagNumber(1)
  set numBackups($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumBackups() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumBackups() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get numPendingBackups => $_getIZ(1);
  @$pb.TagNumber(2)
  set numPendingBackups($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumPendingBackups() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumPendingBackups() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxBackups => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxBackups($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxBackups() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxBackups() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get sweepSatPerByte => $_getIZ(3);
  @$pb.TagNumber(4)
  set sweepSatPerByte($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSweepSatPerByte() => $_has(3);
  @$pb.TagNumber(4)
  void clearSweepSatPerByte() => clearField(4);
}

class Tower extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Tower', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubkey', $pb.PbFieldType.OY)
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addresses')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'activeSessionCandidate')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numSessions', $pb.PbFieldType.OU3)
    ..pc<TowerSession>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sessions', $pb.PbFieldType.PM, subBuilder: TowerSession.create)
    ..hasRequiredFields = false
  ;

  Tower._() : super();
  factory Tower({
    $core.List<$core.int> pubkey,
    $core.Iterable<$core.String> addresses,
    $core.bool activeSessionCandidate,
    $core.int numSessions,
    $core.Iterable<TowerSession> sessions,
  }) {
    final _result = create();
    if (pubkey != null) {
      _result.pubkey = pubkey;
    }
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    if (activeSessionCandidate != null) {
      _result.activeSessionCandidate = activeSessionCandidate;
    }
    if (numSessions != null) {
      _result.numSessions = numSessions;
    }
    if (sessions != null) {
      _result.sessions.addAll(sessions);
    }
    return _result;
  }
  factory Tower.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Tower.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Tower clone() => Tower()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Tower copyWith(void Function(Tower) updates) => super.copyWith((message) => updates(message as Tower)) as Tower; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Tower create() => Tower._();
  Tower createEmptyInstance() => create();
  static $pb.PbList<Tower> createRepeated() => $pb.PbList<Tower>();
  @$core.pragma('dart2js:noInline')
  static Tower getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Tower>(create);
  static Tower _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get pubkey => $_getN(0);
  @$pb.TagNumber(1)
  set pubkey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubkey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubkey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get addresses => $_getList(1);

  @$pb.TagNumber(3)
  $core.bool get activeSessionCandidate => $_getBF(2);
  @$pb.TagNumber(3)
  set activeSessionCandidate($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasActiveSessionCandidate() => $_has(2);
  @$pb.TagNumber(3)
  void clearActiveSessionCandidate() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get numSessions => $_getIZ(3);
  @$pb.TagNumber(4)
  set numSessions($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumSessions() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumSessions() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<TowerSession> get sessions => $_getList(4);
}

class ListTowersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTowersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeSessions')
    ..hasRequiredFields = false
  ;

  ListTowersRequest._() : super();
  factory ListTowersRequest({
    $core.bool includeSessions,
  }) {
    final _result = create();
    if (includeSessions != null) {
      _result.includeSessions = includeSessions;
    }
    return _result;
  }
  factory ListTowersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTowersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTowersRequest clone() => ListTowersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTowersRequest copyWith(void Function(ListTowersRequest) updates) => super.copyWith((message) => updates(message as ListTowersRequest)) as ListTowersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTowersRequest create() => ListTowersRequest._();
  ListTowersRequest createEmptyInstance() => create();
  static $pb.PbList<ListTowersRequest> createRepeated() => $pb.PbList<ListTowersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListTowersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTowersRequest>(create);
  static ListTowersRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get includeSessions => $_getBF(0);
  @$pb.TagNumber(1)
  set includeSessions($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncludeSessions() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeSessions() => clearField(1);
}

class ListTowersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListTowersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..pc<Tower>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'towers', $pb.PbFieldType.PM, subBuilder: Tower.create)
    ..hasRequiredFields = false
  ;

  ListTowersResponse._() : super();
  factory ListTowersResponse({
    $core.Iterable<Tower> towers,
  }) {
    final _result = create();
    if (towers != null) {
      _result.towers.addAll(towers);
    }
    return _result;
  }
  factory ListTowersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListTowersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListTowersResponse clone() => ListTowersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListTowersResponse copyWith(void Function(ListTowersResponse) updates) => super.copyWith((message) => updates(message as ListTowersResponse)) as ListTowersResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListTowersResponse create() => ListTowersResponse._();
  ListTowersResponse createEmptyInstance() => create();
  static $pb.PbList<ListTowersResponse> createRepeated() => $pb.PbList<ListTowersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListTowersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListTowersResponse>(create);
  static ListTowersResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Tower> get towers => $_getList(0);
}

class StatsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StatsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StatsRequest._() : super();
  factory StatsRequest() => create();
  factory StatsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatsRequest clone() => StatsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatsRequest copyWith(void Function(StatsRequest) updates) => super.copyWith((message) => updates(message as StatsRequest)) as StatsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatsRequest create() => StatsRequest._();
  StatsRequest createEmptyInstance() => create();
  static $pb.PbList<StatsRequest> createRepeated() => $pb.PbList<StatsRequest>();
  @$core.pragma('dart2js:noInline')
  static StatsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatsRequest>(create);
  static StatsRequest _defaultInstance;
}

class StatsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StatsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numBackups', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numPendingBackups', $pb.PbFieldType.OU3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numFailedBackups', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numSessionsAcquired', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numSessionsExhausted', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  StatsResponse._() : super();
  factory StatsResponse({
    $core.int numBackups,
    $core.int numPendingBackups,
    $core.int numFailedBackups,
    $core.int numSessionsAcquired,
    $core.int numSessionsExhausted,
  }) {
    final _result = create();
    if (numBackups != null) {
      _result.numBackups = numBackups;
    }
    if (numPendingBackups != null) {
      _result.numPendingBackups = numPendingBackups;
    }
    if (numFailedBackups != null) {
      _result.numFailedBackups = numFailedBackups;
    }
    if (numSessionsAcquired != null) {
      _result.numSessionsAcquired = numSessionsAcquired;
    }
    if (numSessionsExhausted != null) {
      _result.numSessionsExhausted = numSessionsExhausted;
    }
    return _result;
  }
  factory StatsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StatsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StatsResponse clone() => StatsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StatsResponse copyWith(void Function(StatsResponse) updates) => super.copyWith((message) => updates(message as StatsResponse)) as StatsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StatsResponse create() => StatsResponse._();
  StatsResponse createEmptyInstance() => create();
  static $pb.PbList<StatsResponse> createRepeated() => $pb.PbList<StatsResponse>();
  @$core.pragma('dart2js:noInline')
  static StatsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StatsResponse>(create);
  static StatsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get numBackups => $_getIZ(0);
  @$pb.TagNumber(1)
  set numBackups($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNumBackups() => $_has(0);
  @$pb.TagNumber(1)
  void clearNumBackups() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get numPendingBackups => $_getIZ(1);
  @$pb.TagNumber(2)
  set numPendingBackups($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumPendingBackups() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumPendingBackups() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get numFailedBackups => $_getIZ(2);
  @$pb.TagNumber(3)
  set numFailedBackups($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumFailedBackups() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumFailedBackups() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get numSessionsAcquired => $_getIZ(3);
  @$pb.TagNumber(4)
  set numSessionsAcquired($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumSessionsAcquired() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumSessionsAcquired() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get numSessionsExhausted => $_getIZ(4);
  @$pb.TagNumber(5)
  set numSessionsExhausted($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNumSessionsExhausted() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumSessionsExhausted() => clearField(5);
}

class PolicyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PolicyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..e<PolicyType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'policyType', $pb.PbFieldType.OE, defaultOrMaker: PolicyType.LEGACY, valueOf: PolicyType.valueOf, enumValues: PolicyType.values)
    ..hasRequiredFields = false
  ;

  PolicyRequest._() : super();
  factory PolicyRequest({
    PolicyType policyType,
  }) {
    final _result = create();
    if (policyType != null) {
      _result.policyType = policyType;
    }
    return _result;
  }
  factory PolicyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PolicyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PolicyRequest clone() => PolicyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PolicyRequest copyWith(void Function(PolicyRequest) updates) => super.copyWith((message) => updates(message as PolicyRequest)) as PolicyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PolicyRequest create() => PolicyRequest._();
  PolicyRequest createEmptyInstance() => create();
  static $pb.PbList<PolicyRequest> createRepeated() => $pb.PbList<PolicyRequest>();
  @$core.pragma('dart2js:noInline')
  static PolicyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PolicyRequest>(create);
  static PolicyRequest _defaultInstance;

  @$pb.TagNumber(1)
  PolicyType get policyType => $_getN(0);
  @$pb.TagNumber(1)
  set policyType(PolicyType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasPolicyType() => $_has(0);
  @$pb.TagNumber(1)
  void clearPolicyType() => clearField(1);
}

class PolicyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PolicyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'wtclientrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxUpdates', $pb.PbFieldType.OU3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sweepSatPerByte', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  PolicyResponse._() : super();
  factory PolicyResponse({
    $core.int maxUpdates,
    $core.int sweepSatPerByte,
  }) {
    final _result = create();
    if (maxUpdates != null) {
      _result.maxUpdates = maxUpdates;
    }
    if (sweepSatPerByte != null) {
      _result.sweepSatPerByte = sweepSatPerByte;
    }
    return _result;
  }
  factory PolicyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PolicyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PolicyResponse clone() => PolicyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PolicyResponse copyWith(void Function(PolicyResponse) updates) => super.copyWith((message) => updates(message as PolicyResponse)) as PolicyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PolicyResponse create() => PolicyResponse._();
  PolicyResponse createEmptyInstance() => create();
  static $pb.PbList<PolicyResponse> createRepeated() => $pb.PbList<PolicyResponse>();
  @$core.pragma('dart2js:noInline')
  static PolicyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PolicyResponse>(create);
  static PolicyResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get maxUpdates => $_getIZ(0);
  @$pb.TagNumber(1)
  set maxUpdates($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMaxUpdates() => $_has(0);
  @$pb.TagNumber(1)
  void clearMaxUpdates() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get sweepSatPerByte => $_getIZ(1);
  @$pb.TagNumber(2)
  set sweepSatPerByte($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSweepSatPerByte() => $_has(1);
  @$pb.TagNumber(2)
  void clearSweepSatPerByte() => clearField(2);
}

