///
//  Generated code. Do not modify.
//  source: chainrpc/chainnotifier.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class ConfRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chainrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txid', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'script', $pb.PbFieldType.OY)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numConfs', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'heightHint', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ConfRequest._() : super();
  factory ConfRequest({
    $core.List<$core.int> txid,
    $core.List<$core.int> script,
    $core.int numConfs,
    $core.int heightHint,
  }) {
    final _result = create();
    if (txid != null) {
      _result.txid = txid;
    }
    if (script != null) {
      _result.script = script;
    }
    if (numConfs != null) {
      _result.numConfs = numConfs;
    }
    if (heightHint != null) {
      _result.heightHint = heightHint;
    }
    return _result;
  }
  factory ConfRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfRequest clone() => ConfRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfRequest copyWith(void Function(ConfRequest) updates) => super.copyWith((message) => updates(message as ConfRequest)) as ConfRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfRequest create() => ConfRequest._();
  ConfRequest createEmptyInstance() => create();
  static $pb.PbList<ConfRequest> createRepeated() => $pb.PbList<ConfRequest>();
  @$core.pragma('dart2js:noInline')
  static ConfRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfRequest>(create);
  static ConfRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get txid => $_getN(0);
  @$pb.TagNumber(1)
  set txid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxid() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get script => $_getN(1);
  @$pb.TagNumber(2)
  set script($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScript() => $_has(1);
  @$pb.TagNumber(2)
  void clearScript() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get numConfs => $_getIZ(2);
  @$pb.TagNumber(3)
  set numConfs($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumConfs() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumConfs() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get heightHint => $_getIZ(3);
  @$pb.TagNumber(4)
  set heightHint($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasHeightHint() => $_has(3);
  @$pb.TagNumber(4)
  void clearHeightHint() => clearField(4);
}

class ConfDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chainrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rawTx', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHash', $pb.PbFieldType.OY)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeight', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txIndex', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ConfDetails._() : super();
  factory ConfDetails({
    $core.List<$core.int> rawTx,
    $core.List<$core.int> blockHash,
    $core.int blockHeight,
    $core.int txIndex,
  }) {
    final _result = create();
    if (rawTx != null) {
      _result.rawTx = rawTx;
    }
    if (blockHash != null) {
      _result.blockHash = blockHash;
    }
    if (blockHeight != null) {
      _result.blockHeight = blockHeight;
    }
    if (txIndex != null) {
      _result.txIndex = txIndex;
    }
    return _result;
  }
  factory ConfDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfDetails clone() => ConfDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfDetails copyWith(void Function(ConfDetails) updates) => super.copyWith((message) => updates(message as ConfDetails)) as ConfDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfDetails create() => ConfDetails._();
  ConfDetails createEmptyInstance() => create();
  static $pb.PbList<ConfDetails> createRepeated() => $pb.PbList<ConfDetails>();
  @$core.pragma('dart2js:noInline')
  static ConfDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfDetails>(create);
  static ConfDetails _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get rawTx => $_getN(0);
  @$pb.TagNumber(1)
  set rawTx($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRawTx() => $_has(0);
  @$pb.TagNumber(1)
  void clearRawTx() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get blockHash => $_getN(1);
  @$pb.TagNumber(2)
  set blockHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get blockHeight => $_getIZ(2);
  @$pb.TagNumber(3)
  set blockHeight($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBlockHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearBlockHeight() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get txIndex => $_getIZ(3);
  @$pb.TagNumber(4)
  set txIndex($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTxIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearTxIndex() => clearField(4);
}

class Reorg extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Reorg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chainrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  Reorg._() : super();
  factory Reorg() => create();
  factory Reorg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Reorg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Reorg clone() => Reorg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Reorg copyWith(void Function(Reorg) updates) => super.copyWith((message) => updates(message as Reorg)) as Reorg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Reorg create() => Reorg._();
  Reorg createEmptyInstance() => create();
  static $pb.PbList<Reorg> createRepeated() => $pb.PbList<Reorg>();
  @$core.pragma('dart2js:noInline')
  static Reorg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Reorg>(create);
  static Reorg _defaultInstance;
}

enum ConfEvent_Event {
  conf, 
  reorg, 
  notSet
}

class ConfEvent extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ConfEvent_Event> _ConfEvent_EventByTag = {
    1 : ConfEvent_Event.conf,
    2 : ConfEvent_Event.reorg,
    0 : ConfEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chainrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ConfDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'conf', subBuilder: ConfDetails.create)
    ..aOM<Reorg>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reorg', subBuilder: Reorg.create)
    ..hasRequiredFields = false
  ;

  ConfEvent._() : super();
  factory ConfEvent({
    ConfDetails conf,
    Reorg reorg,
  }) {
    final _result = create();
    if (conf != null) {
      _result.conf = conf;
    }
    if (reorg != null) {
      _result.reorg = reorg;
    }
    return _result;
  }
  factory ConfEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfEvent clone() => ConfEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfEvent copyWith(void Function(ConfEvent) updates) => super.copyWith((message) => updates(message as ConfEvent)) as ConfEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfEvent create() => ConfEvent._();
  ConfEvent createEmptyInstance() => create();
  static $pb.PbList<ConfEvent> createRepeated() => $pb.PbList<ConfEvent>();
  @$core.pragma('dart2js:noInline')
  static ConfEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfEvent>(create);
  static ConfEvent _defaultInstance;

  ConfEvent_Event whichEvent() => _ConfEvent_EventByTag[$_whichOneof(0)];
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ConfDetails get conf => $_getN(0);
  @$pb.TagNumber(1)
  set conf(ConfDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasConf() => $_has(0);
  @$pb.TagNumber(1)
  void clearConf() => clearField(1);
  @$pb.TagNumber(1)
  ConfDetails ensureConf() => $_ensure(0);

  @$pb.TagNumber(2)
  Reorg get reorg => $_getN(1);
  @$pb.TagNumber(2)
  set reorg(Reorg v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReorg() => $_has(1);
  @$pb.TagNumber(2)
  void clearReorg() => clearField(2);
  @$pb.TagNumber(2)
  Reorg ensureReorg() => $_ensure(1);
}

class Outpoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Outpoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chainrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'index', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Outpoint._() : super();
  factory Outpoint({
    $core.List<$core.int> hash,
    $core.int index,
  }) {
    final _result = create();
    if (hash != null) {
      _result.hash = hash;
    }
    if (index != null) {
      _result.index = index;
    }
    return _result;
  }
  factory Outpoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Outpoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Outpoint clone() => Outpoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Outpoint copyWith(void Function(Outpoint) updates) => super.copyWith((message) => updates(message as Outpoint)) as Outpoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Outpoint create() => Outpoint._();
  Outpoint createEmptyInstance() => create();
  static $pb.PbList<Outpoint> createRepeated() => $pb.PbList<Outpoint>();
  @$core.pragma('dart2js:noInline')
  static Outpoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Outpoint>(create);
  static Outpoint _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get index => $_getIZ(1);
  @$pb.TagNumber(2)
  set index($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndex() => clearField(2);
}

class SpendRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpendRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chainrpc'), createEmptyInstance: create)
    ..aOM<Outpoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outpoint', subBuilder: Outpoint.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'script', $pb.PbFieldType.OY)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'heightHint', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SpendRequest._() : super();
  factory SpendRequest({
    Outpoint outpoint,
    $core.List<$core.int> script,
    $core.int heightHint,
  }) {
    final _result = create();
    if (outpoint != null) {
      _result.outpoint = outpoint;
    }
    if (script != null) {
      _result.script = script;
    }
    if (heightHint != null) {
      _result.heightHint = heightHint;
    }
    return _result;
  }
  factory SpendRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpendRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpendRequest clone() => SpendRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpendRequest copyWith(void Function(SpendRequest) updates) => super.copyWith((message) => updates(message as SpendRequest)) as SpendRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpendRequest create() => SpendRequest._();
  SpendRequest createEmptyInstance() => create();
  static $pb.PbList<SpendRequest> createRepeated() => $pb.PbList<SpendRequest>();
  @$core.pragma('dart2js:noInline')
  static SpendRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpendRequest>(create);
  static SpendRequest _defaultInstance;

  @$pb.TagNumber(1)
  Outpoint get outpoint => $_getN(0);
  @$pb.TagNumber(1)
  set outpoint(Outpoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOutpoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearOutpoint() => clearField(1);
  @$pb.TagNumber(1)
  Outpoint ensureOutpoint() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get script => $_getN(1);
  @$pb.TagNumber(2)
  set script($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasScript() => $_has(1);
  @$pb.TagNumber(2)
  void clearScript() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get heightHint => $_getIZ(2);
  @$pb.TagNumber(3)
  set heightHint($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHeightHint() => $_has(2);
  @$pb.TagNumber(3)
  void clearHeightHint() => clearField(3);
}

class SpendDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpendDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chainrpc'), createEmptyInstance: create)
    ..aOM<Outpoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spendingOutpoint', subBuilder: Outpoint.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rawSpendingTx', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spendingTxHash', $pb.PbFieldType.OY)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spendingInputIndex', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spendingHeight', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  SpendDetails._() : super();
  factory SpendDetails({
    Outpoint spendingOutpoint,
    $core.List<$core.int> rawSpendingTx,
    $core.List<$core.int> spendingTxHash,
    $core.int spendingInputIndex,
    $core.int spendingHeight,
  }) {
    final _result = create();
    if (spendingOutpoint != null) {
      _result.spendingOutpoint = spendingOutpoint;
    }
    if (rawSpendingTx != null) {
      _result.rawSpendingTx = rawSpendingTx;
    }
    if (spendingTxHash != null) {
      _result.spendingTxHash = spendingTxHash;
    }
    if (spendingInputIndex != null) {
      _result.spendingInputIndex = spendingInputIndex;
    }
    if (spendingHeight != null) {
      _result.spendingHeight = spendingHeight;
    }
    return _result;
  }
  factory SpendDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpendDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpendDetails clone() => SpendDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpendDetails copyWith(void Function(SpendDetails) updates) => super.copyWith((message) => updates(message as SpendDetails)) as SpendDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpendDetails create() => SpendDetails._();
  SpendDetails createEmptyInstance() => create();
  static $pb.PbList<SpendDetails> createRepeated() => $pb.PbList<SpendDetails>();
  @$core.pragma('dart2js:noInline')
  static SpendDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpendDetails>(create);
  static SpendDetails _defaultInstance;

  @$pb.TagNumber(1)
  Outpoint get spendingOutpoint => $_getN(0);
  @$pb.TagNumber(1)
  set spendingOutpoint(Outpoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpendingOutpoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpendingOutpoint() => clearField(1);
  @$pb.TagNumber(1)
  Outpoint ensureSpendingOutpoint() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get rawSpendingTx => $_getN(1);
  @$pb.TagNumber(2)
  set rawSpendingTx($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRawSpendingTx() => $_has(1);
  @$pb.TagNumber(2)
  void clearRawSpendingTx() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get spendingTxHash => $_getN(2);
  @$pb.TagNumber(3)
  set spendingTxHash($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasSpendingTxHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearSpendingTxHash() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get spendingInputIndex => $_getIZ(3);
  @$pb.TagNumber(4)
  set spendingInputIndex($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSpendingInputIndex() => $_has(3);
  @$pb.TagNumber(4)
  void clearSpendingInputIndex() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get spendingHeight => $_getIZ(4);
  @$pb.TagNumber(5)
  set spendingHeight($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSpendingHeight() => $_has(4);
  @$pb.TagNumber(5)
  void clearSpendingHeight() => clearField(5);
}

enum SpendEvent_Event {
  spend, 
  reorg, 
  notSet
}

class SpendEvent extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, SpendEvent_Event> _SpendEvent_EventByTag = {
    1 : SpendEvent_Event.spend,
    2 : SpendEvent_Event.reorg,
    0 : SpendEvent_Event.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SpendEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chainrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<SpendDetails>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spend', subBuilder: SpendDetails.create)
    ..aOM<Reorg>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reorg', subBuilder: Reorg.create)
    ..hasRequiredFields = false
  ;

  SpendEvent._() : super();
  factory SpendEvent({
    SpendDetails spend,
    Reorg reorg,
  }) {
    final _result = create();
    if (spend != null) {
      _result.spend = spend;
    }
    if (reorg != null) {
      _result.reorg = reorg;
    }
    return _result;
  }
  factory SpendEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SpendEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SpendEvent clone() => SpendEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SpendEvent copyWith(void Function(SpendEvent) updates) => super.copyWith((message) => updates(message as SpendEvent)) as SpendEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SpendEvent create() => SpendEvent._();
  SpendEvent createEmptyInstance() => create();
  static $pb.PbList<SpendEvent> createRepeated() => $pb.PbList<SpendEvent>();
  @$core.pragma('dart2js:noInline')
  static SpendEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SpendEvent>(create);
  static SpendEvent _defaultInstance;

  SpendEvent_Event whichEvent() => _SpendEvent_EventByTag[$_whichOneof(0)];
  void clearEvent() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  SpendDetails get spend => $_getN(0);
  @$pb.TagNumber(1)
  set spend(SpendDetails v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSpend() => $_has(0);
  @$pb.TagNumber(1)
  void clearSpend() => clearField(1);
  @$pb.TagNumber(1)
  SpendDetails ensureSpend() => $_ensure(0);

  @$pb.TagNumber(2)
  Reorg get reorg => $_getN(1);
  @$pb.TagNumber(2)
  set reorg(Reorg v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasReorg() => $_has(1);
  @$pb.TagNumber(2)
  void clearReorg() => clearField(2);
  @$pb.TagNumber(2)
  Reorg ensureReorg() => $_ensure(1);
}

class BlockEpoch extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BlockEpoch', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'chainrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hash', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  BlockEpoch._() : super();
  factory BlockEpoch({
    $core.List<$core.int> hash,
    $core.int height,
  }) {
    final _result = create();
    if (hash != null) {
      _result.hash = hash;
    }
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory BlockEpoch.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BlockEpoch.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BlockEpoch clone() => BlockEpoch()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BlockEpoch copyWith(void Function(BlockEpoch) updates) => super.copyWith((message) => updates(message as BlockEpoch)) as BlockEpoch; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BlockEpoch create() => BlockEpoch._();
  BlockEpoch createEmptyInstance() => create();
  static $pb.PbList<BlockEpoch> createRepeated() => $pb.PbList<BlockEpoch>();
  @$core.pragma('dart2js:noInline')
  static BlockEpoch getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BlockEpoch>(create);
  static BlockEpoch _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get hash => $_getN(0);
  @$pb.TagNumber(1)
  set hash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get height => $_getIZ(1);
  @$pb.TagNumber(2)
  set height($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearHeight() => clearField(2);
}

