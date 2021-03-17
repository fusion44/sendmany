///
//  Generated code. Do not modify.
//  source: verrpc/verrpc.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class VersionRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VersionRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'verrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  VersionRequest._() : super();
  factory VersionRequest() => create();
  factory VersionRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VersionRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VersionRequest clone() => VersionRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VersionRequest copyWith(void Function(VersionRequest) updates) => super.copyWith((message) => updates(message as VersionRequest)) as VersionRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VersionRequest create() => VersionRequest._();
  VersionRequest createEmptyInstance() => create();
  static $pb.PbList<VersionRequest> createRepeated() => $pb.PbList<VersionRequest>();
  @$core.pragma('dart2js:noInline')
  static VersionRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VersionRequest>(create);
  static VersionRequest _defaultInstance;
}

class Version extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Version', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'verrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commit')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitHash')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appMajor', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appMinor', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appPatch', $pb.PbFieldType.OU3)
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'appPreRelease')
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'buildTags')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'goVersion')
    ..hasRequiredFields = false
  ;

  Version._() : super();
  factory Version({
    $core.String commit,
    $core.String commitHash,
    $core.String version,
    $core.int appMajor,
    $core.int appMinor,
    $core.int appPatch,
    $core.String appPreRelease,
    $core.Iterable<$core.String> buildTags,
    $core.String goVersion,
  }) {
    final _result = create();
    if (commit != null) {
      _result.commit = commit;
    }
    if (commitHash != null) {
      _result.commitHash = commitHash;
    }
    if (version != null) {
      _result.version = version;
    }
    if (appMajor != null) {
      _result.appMajor = appMajor;
    }
    if (appMinor != null) {
      _result.appMinor = appMinor;
    }
    if (appPatch != null) {
      _result.appPatch = appPatch;
    }
    if (appPreRelease != null) {
      _result.appPreRelease = appPreRelease;
    }
    if (buildTags != null) {
      _result.buildTags.addAll(buildTags);
    }
    if (goVersion != null) {
      _result.goVersion = goVersion;
    }
    return _result;
  }
  factory Version.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Version.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Version clone() => Version()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Version copyWith(void Function(Version) updates) => super.copyWith((message) => updates(message as Version)) as Version; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Version create() => Version._();
  Version createEmptyInstance() => create();
  static $pb.PbList<Version> createRepeated() => $pb.PbList<Version>();
  @$core.pragma('dart2js:noInline')
  static Version getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Version>(create);
  static Version _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get commit => $_getSZ(0);
  @$pb.TagNumber(1)
  set commit($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCommit() => $_has(0);
  @$pb.TagNumber(1)
  void clearCommit() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get commitHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set commitHash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCommitHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearCommitHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get version => $_getSZ(2);
  @$pb.TagNumber(3)
  set version($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasVersion() => $_has(2);
  @$pb.TagNumber(3)
  void clearVersion() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get appMajor => $_getIZ(3);
  @$pb.TagNumber(4)
  set appMajor($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAppMajor() => $_has(3);
  @$pb.TagNumber(4)
  void clearAppMajor() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get appMinor => $_getIZ(4);
  @$pb.TagNumber(5)
  set appMinor($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAppMinor() => $_has(4);
  @$pb.TagNumber(5)
  void clearAppMinor() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get appPatch => $_getIZ(5);
  @$pb.TagNumber(6)
  set appPatch($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAppPatch() => $_has(5);
  @$pb.TagNumber(6)
  void clearAppPatch() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get appPreRelease => $_getSZ(6);
  @$pb.TagNumber(7)
  set appPreRelease($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAppPreRelease() => $_has(6);
  @$pb.TagNumber(7)
  void clearAppPreRelease() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.String> get buildTags => $_getList(7);

  @$pb.TagNumber(9)
  $core.String get goVersion => $_getSZ(8);
  @$pb.TagNumber(9)
  set goVersion($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasGoVersion() => $_has(8);
  @$pb.TagNumber(9)
  void clearGoVersion() => clearField(9);
}

