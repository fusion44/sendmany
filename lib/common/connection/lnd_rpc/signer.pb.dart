///
//  Generated code. Do not modify.
//  source: signer.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,annotate_overrides

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

class KeyLocator extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KeyLocator',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, 'keyFamily', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'keyIndex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  KeyLocator._() : super();
  factory KeyLocator() => create();
  factory KeyLocator.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KeyLocator.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  KeyLocator clone() => KeyLocator()..mergeFromMessage(this);
  KeyLocator copyWith(void Function(KeyLocator) updates) =>
      super.copyWith((message) => updates(message as KeyLocator));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyLocator create() => KeyLocator._();
  KeyLocator createEmptyInstance() => create();
  static $pb.PbList<KeyLocator> createRepeated() => $pb.PbList<KeyLocator>();
  static KeyLocator getDefault() => _defaultInstance ??= create()..freeze();
  static KeyLocator _defaultInstance;

  $core.int get keyFamily => $_get(0, 0);
  set keyFamily($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasKeyFamily() => $_has(0);
  void clearKeyFamily() => clearField(1);

  $core.int get keyIndex => $_get(1, 0);
  set keyIndex($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasKeyIndex() => $_has(1);
  void clearKeyIndex() => clearField(2);
}

class KeyDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KeyDescriptor',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'rawKeyBytes', $pb.PbFieldType.OY)
    ..a<KeyLocator>(2, 'keyLoc', $pb.PbFieldType.OM,
        defaultOrMaker: KeyLocator.getDefault, subBuilder: KeyLocator.create)
    ..hasRequiredFields = false;

  KeyDescriptor._() : super();
  factory KeyDescriptor() => create();
  factory KeyDescriptor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory KeyDescriptor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  KeyDescriptor clone() => KeyDescriptor()..mergeFromMessage(this);
  KeyDescriptor copyWith(void Function(KeyDescriptor) updates) =>
      super.copyWith((message) => updates(message as KeyDescriptor));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyDescriptor create() => KeyDescriptor._();
  KeyDescriptor createEmptyInstance() => create();
  static $pb.PbList<KeyDescriptor> createRepeated() =>
      $pb.PbList<KeyDescriptor>();
  static KeyDescriptor getDefault() => _defaultInstance ??= create()..freeze();
  static KeyDescriptor _defaultInstance;

  $core.List<$core.int> get rawKeyBytes => $_getN(0);
  set rawKeyBytes($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasRawKeyBytes() => $_has(0);
  void clearRawKeyBytes() => clearField(1);

  KeyLocator get keyLoc => $_getN(1);
  set keyLoc(KeyLocator v) {
    setField(2, v);
  }

  $core.bool hasKeyLoc() => $_has(1);
  void clearKeyLoc() => clearField(2);
}

class TxOut extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TxOut',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..aInt64(1, 'value')
    ..a<$core.List<$core.int>>(2, 'pkScript', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  TxOut._() : super();
  factory TxOut() => create();
  factory TxOut.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TxOut.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TxOut clone() => TxOut()..mergeFromMessage(this);
  TxOut copyWith(void Function(TxOut) updates) =>
      super.copyWith((message) => updates(message as TxOut));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TxOut create() => TxOut._();
  TxOut createEmptyInstance() => create();
  static $pb.PbList<TxOut> createRepeated() => $pb.PbList<TxOut>();
  static TxOut getDefault() => _defaultInstance ??= create()..freeze();
  static TxOut _defaultInstance;

  Int64 get value => $_getI64(0);
  set value(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasValue() => $_has(0);
  void clearValue() => clearField(1);

  $core.List<$core.int> get pkScript => $_getN(1);
  set pkScript($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasPkScript() => $_has(1);
  void clearPkScript() => clearField(2);
}

class SignDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignDescriptor',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..a<KeyDescriptor>(1, 'keyDesc', $pb.PbFieldType.OM,
        defaultOrMaker: KeyDescriptor.getDefault,
        subBuilder: KeyDescriptor.create)
    ..a<$core.List<$core.int>>(2, 'singleTweak', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'doubleTweak', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, 'witnessScript', $pb.PbFieldType.OY)
    ..a<TxOut>(5, 'output', $pb.PbFieldType.OM,
        defaultOrMaker: TxOut.getDefault, subBuilder: TxOut.create)
    ..a<$core.int>(7, 'sighash', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, 'inputIndex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  SignDescriptor._() : super();
  factory SignDescriptor() => create();
  factory SignDescriptor.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SignDescriptor.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SignDescriptor clone() => SignDescriptor()..mergeFromMessage(this);
  SignDescriptor copyWith(void Function(SignDescriptor) updates) =>
      super.copyWith((message) => updates(message as SignDescriptor));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignDescriptor create() => SignDescriptor._();
  SignDescriptor createEmptyInstance() => create();
  static $pb.PbList<SignDescriptor> createRepeated() =>
      $pb.PbList<SignDescriptor>();
  static SignDescriptor getDefault() => _defaultInstance ??= create()..freeze();
  static SignDescriptor _defaultInstance;

  KeyDescriptor get keyDesc => $_getN(0);
  set keyDesc(KeyDescriptor v) {
    setField(1, v);
  }

  $core.bool hasKeyDesc() => $_has(0);
  void clearKeyDesc() => clearField(1);

  $core.List<$core.int> get singleTweak => $_getN(1);
  set singleTweak($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasSingleTweak() => $_has(1);
  void clearSingleTweak() => clearField(2);

  $core.List<$core.int> get doubleTweak => $_getN(2);
  set doubleTweak($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  $core.bool hasDoubleTweak() => $_has(2);
  void clearDoubleTweak() => clearField(3);

  $core.List<$core.int> get witnessScript => $_getN(3);
  set witnessScript($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  $core.bool hasWitnessScript() => $_has(3);
  void clearWitnessScript() => clearField(4);

  TxOut get output => $_getN(4);
  set output(TxOut v) {
    setField(5, v);
  }

  $core.bool hasOutput() => $_has(4);
  void clearOutput() => clearField(5);

  $core.int get sighash => $_get(5, 0);
  set sighash($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  $core.bool hasSighash() => $_has(5);
  void clearSighash() => clearField(7);

  $core.int get inputIndex => $_get(6, 0);
  set inputIndex($core.int v) {
    $_setSignedInt32(6, v);
  }

  $core.bool hasInputIndex() => $_has(6);
  void clearInputIndex() => clearField(8);
}

class SignReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignReq',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'rawTxBytes', $pb.PbFieldType.OY)
    ..pc<SignDescriptor>(2, 'signDescs', $pb.PbFieldType.PM,
        subBuilder: SignDescriptor.create)
    ..hasRequiredFields = false;

  SignReq._() : super();
  factory SignReq() => create();
  factory SignReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SignReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SignReq clone() => SignReq()..mergeFromMessage(this);
  SignReq copyWith(void Function(SignReq) updates) =>
      super.copyWith((message) => updates(message as SignReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignReq create() => SignReq._();
  SignReq createEmptyInstance() => create();
  static $pb.PbList<SignReq> createRepeated() => $pb.PbList<SignReq>();
  static SignReq getDefault() => _defaultInstance ??= create()..freeze();
  static SignReq _defaultInstance;

  $core.List<$core.int> get rawTxBytes => $_getN(0);
  set rawTxBytes($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasRawTxBytes() => $_has(0);
  void clearRawTxBytes() => clearField(1);

  $core.List<SignDescriptor> get signDescs => $_getList(1);
}

class SignResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignResp',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, 'rawSigs', $pb.PbFieldType.PY)
    ..hasRequiredFields = false;

  SignResp._() : super();
  factory SignResp() => create();
  factory SignResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SignResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SignResp clone() => SignResp()..mergeFromMessage(this);
  SignResp copyWith(void Function(SignResp) updates) =>
      super.copyWith((message) => updates(message as SignResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignResp create() => SignResp._();
  SignResp createEmptyInstance() => create();
  static $pb.PbList<SignResp> createRepeated() => $pb.PbList<SignResp>();
  static SignResp getDefault() => _defaultInstance ??= create()..freeze();
  static SignResp _defaultInstance;

  $core.List<$core.List<$core.int>> get rawSigs => $_getList(0);
}

class InputScript extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InputScript',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..p<$core.List<$core.int>>(1, 'witness', $pb.PbFieldType.PY)
    ..a<$core.List<$core.int>>(2, 'sigScript', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  InputScript._() : super();
  factory InputScript() => create();
  factory InputScript.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InputScript.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  InputScript clone() => InputScript()..mergeFromMessage(this);
  InputScript copyWith(void Function(InputScript) updates) =>
      super.copyWith((message) => updates(message as InputScript));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InputScript create() => InputScript._();
  InputScript createEmptyInstance() => create();
  static $pb.PbList<InputScript> createRepeated() => $pb.PbList<InputScript>();
  static InputScript getDefault() => _defaultInstance ??= create()..freeze();
  static InputScript _defaultInstance;

  $core.List<$core.List<$core.int>> get witness => $_getList(0);

  $core.List<$core.int> get sigScript => $_getN(1);
  set sigScript($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasSigScript() => $_has(1);
  void clearSigScript() => clearField(2);
}

class InputScriptResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InputScriptResp',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..pc<InputScript>(1, 'inputScripts', $pb.PbFieldType.PM,
        subBuilder: InputScript.create)
    ..hasRequiredFields = false;

  InputScriptResp._() : super();
  factory InputScriptResp() => create();
  factory InputScriptResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InputScriptResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  InputScriptResp clone() => InputScriptResp()..mergeFromMessage(this);
  InputScriptResp copyWith(void Function(InputScriptResp) updates) =>
      super.copyWith((message) => updates(message as InputScriptResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InputScriptResp create() => InputScriptResp._();
  InputScriptResp createEmptyInstance() => create();
  static $pb.PbList<InputScriptResp> createRepeated() =>
      $pb.PbList<InputScriptResp>();
  static InputScriptResp getDefault() =>
      _defaultInstance ??= create()..freeze();
  static InputScriptResp _defaultInstance;

  $core.List<InputScript> get inputScripts => $_getList(0);
}

class SignMessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignMessageReq',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'msg', $pb.PbFieldType.OY)
    ..a<KeyLocator>(2, 'keyLoc', $pb.PbFieldType.OM,
        defaultOrMaker: KeyLocator.getDefault, subBuilder: KeyLocator.create)
    ..hasRequiredFields = false;

  SignMessageReq._() : super();
  factory SignMessageReq() => create();
  factory SignMessageReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SignMessageReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SignMessageReq clone() => SignMessageReq()..mergeFromMessage(this);
  SignMessageReq copyWith(void Function(SignMessageReq) updates) =>
      super.copyWith((message) => updates(message as SignMessageReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignMessageReq create() => SignMessageReq._();
  SignMessageReq createEmptyInstance() => create();
  static $pb.PbList<SignMessageReq> createRepeated() =>
      $pb.PbList<SignMessageReq>();
  static SignMessageReq getDefault() => _defaultInstance ??= create()..freeze();
  static SignMessageReq _defaultInstance;

  $core.List<$core.int> get msg => $_getN(0);
  set msg($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasMsg() => $_has(0);
  void clearMsg() => clearField(1);

  KeyLocator get keyLoc => $_getN(1);
  set keyLoc(KeyLocator v) {
    setField(2, v);
  }

  $core.bool hasKeyLoc() => $_has(1);
  void clearKeyLoc() => clearField(2);
}

class SignMessageResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignMessageResp',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'signature', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  SignMessageResp._() : super();
  factory SignMessageResp() => create();
  factory SignMessageResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SignMessageResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SignMessageResp clone() => SignMessageResp()..mergeFromMessage(this);
  SignMessageResp copyWith(void Function(SignMessageResp) updates) =>
      super.copyWith((message) => updates(message as SignMessageResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignMessageResp create() => SignMessageResp._();
  SignMessageResp createEmptyInstance() => create();
  static $pb.PbList<SignMessageResp> createRepeated() =>
      $pb.PbList<SignMessageResp>();
  static SignMessageResp getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SignMessageResp _defaultInstance;

  $core.List<$core.int> get signature => $_getN(0);
  set signature($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasSignature() => $_has(0);
  void clearSignature() => clearField(1);
}

class VerifyMessageReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerifyMessageReq',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'msg', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'signature', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'pubkey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  VerifyMessageReq._() : super();
  factory VerifyMessageReq() => create();
  factory VerifyMessageReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerifyMessageReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  VerifyMessageReq clone() => VerifyMessageReq()..mergeFromMessage(this);
  VerifyMessageReq copyWith(void Function(VerifyMessageReq) updates) =>
      super.copyWith((message) => updates(message as VerifyMessageReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyMessageReq create() => VerifyMessageReq._();
  VerifyMessageReq createEmptyInstance() => create();
  static $pb.PbList<VerifyMessageReq> createRepeated() =>
      $pb.PbList<VerifyMessageReq>();
  static VerifyMessageReq getDefault() =>
      _defaultInstance ??= create()..freeze();
  static VerifyMessageReq _defaultInstance;

  $core.List<$core.int> get msg => $_getN(0);
  set msg($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasMsg() => $_has(0);
  void clearMsg() => clearField(1);

  $core.List<$core.int> get signature => $_getN(1);
  set signature($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasSignature() => $_has(1);
  void clearSignature() => clearField(2);

  $core.List<$core.int> get pubkey => $_getN(2);
  set pubkey($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  $core.bool hasPubkey() => $_has(2);
  void clearPubkey() => clearField(3);
}

class VerifyMessageResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerifyMessageResp',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..aOB(1, 'valid')
    ..hasRequiredFields = false;

  VerifyMessageResp._() : super();
  factory VerifyMessageResp() => create();
  factory VerifyMessageResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerifyMessageResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  VerifyMessageResp clone() => VerifyMessageResp()..mergeFromMessage(this);
  VerifyMessageResp copyWith(void Function(VerifyMessageResp) updates) =>
      super.copyWith((message) => updates(message as VerifyMessageResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyMessageResp create() => VerifyMessageResp._();
  VerifyMessageResp createEmptyInstance() => create();
  static $pb.PbList<VerifyMessageResp> createRepeated() =>
      $pb.PbList<VerifyMessageResp>();
  static VerifyMessageResp getDefault() =>
      _defaultInstance ??= create()..freeze();
  static VerifyMessageResp _defaultInstance;

  $core.bool get valid => $_get(0, false);
  set valid($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasValid() => $_has(0);
  void clearValid() => clearField(1);
}

class SharedKeyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SharedKeyRequest',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'ephemeralPubkey', $pb.PbFieldType.OY)
    ..a<KeyLocator>(2, 'keyLoc', $pb.PbFieldType.OM,
        defaultOrMaker: KeyLocator.getDefault, subBuilder: KeyLocator.create)
    ..hasRequiredFields = false;

  SharedKeyRequest._() : super();
  factory SharedKeyRequest() => create();
  factory SharedKeyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SharedKeyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SharedKeyRequest clone() => SharedKeyRequest()..mergeFromMessage(this);
  SharedKeyRequest copyWith(void Function(SharedKeyRequest) updates) =>
      super.copyWith((message) => updates(message as SharedKeyRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SharedKeyRequest create() => SharedKeyRequest._();
  SharedKeyRequest createEmptyInstance() => create();
  static $pb.PbList<SharedKeyRequest> createRepeated() =>
      $pb.PbList<SharedKeyRequest>();
  static SharedKeyRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SharedKeyRequest _defaultInstance;

  $core.List<$core.int> get ephemeralPubkey => $_getN(0);
  set ephemeralPubkey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasEphemeralPubkey() => $_has(0);
  void clearEphemeralPubkey() => clearField(1);

  KeyLocator get keyLoc => $_getN(1);
  set keyLoc(KeyLocator v) {
    setField(2, v);
  }

  $core.bool hasKeyLoc() => $_has(1);
  void clearKeyLoc() => clearField(2);
}

class SharedKeyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SharedKeyResponse',
      package: const $pb.PackageName('signrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'sharedKey', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  SharedKeyResponse._() : super();
  factory SharedKeyResponse() => create();
  factory SharedKeyResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SharedKeyResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SharedKeyResponse clone() => SharedKeyResponse()..mergeFromMessage(this);
  SharedKeyResponse copyWith(void Function(SharedKeyResponse) updates) =>
      super.copyWith((message) => updates(message as SharedKeyResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SharedKeyResponse create() => SharedKeyResponse._();
  SharedKeyResponse createEmptyInstance() => create();
  static $pb.PbList<SharedKeyResponse> createRepeated() =>
      $pb.PbList<SharedKeyResponse>();
  static SharedKeyResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SharedKeyResponse _defaultInstance;

  $core.List<$core.int> get sharedKey => $_getN(0);
  set sharedKey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasSharedKey() => $_has(0);
  void clearSharedKey() => clearField(1);
}
