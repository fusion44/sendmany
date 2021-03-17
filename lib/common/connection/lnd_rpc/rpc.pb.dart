///
//  Generated code. Do not modify.
//  source: rpc.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart' as $fixnum;
import 'package:protobuf/protobuf.dart' as $pb;

import 'rpc.pbenum.dart';

export 'rpc.pbenum.dart';

class Utxo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Utxo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..e<AddressType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addressType', $pb.PbFieldType.OE, defaultOrMaker: AddressType.WITNESS_PUBKEY_HASH, valueOf: AddressType.valueOf, enumValues: AddressType.values)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountSat')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pkScript')
    ..aOM<OutPoint>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outpoint', subBuilder: OutPoint.create)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmations')
    ..hasRequiredFields = false
  ;

  Utxo._() : super();
  factory Utxo({
    AddressType addressType,
    $core.String address,
    $fixnum.Int64 amountSat,
    $core.String pkScript,
    OutPoint outpoint,
    $fixnum.Int64 confirmations,
  }) {
    final _result = create();
    if (addressType != null) {
      _result.addressType = addressType;
    }
    if (address != null) {
      _result.address = address;
    }
    if (amountSat != null) {
      _result.amountSat = amountSat;
    }
    if (pkScript != null) {
      _result.pkScript = pkScript;
    }
    if (outpoint != null) {
      _result.outpoint = outpoint;
    }
    if (confirmations != null) {
      _result.confirmations = confirmations;
    }
    return _result;
  }
  factory Utxo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Utxo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Utxo clone() => Utxo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Utxo copyWith(void Function(Utxo) updates) => super.copyWith((message) => updates(message as Utxo)) as Utxo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Utxo create() => Utxo._();
  Utxo createEmptyInstance() => create();
  static $pb.PbList<Utxo> createRepeated() => $pb.PbList<Utxo>();
  @$core.pragma('dart2js:noInline')
  static Utxo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Utxo>(create);
  static Utxo _defaultInstance;

  @$pb.TagNumber(1)
  AddressType get addressType => $_getN(0);
  @$pb.TagNumber(1)
  set addressType(AddressType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddressType() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddressType() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(2)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddress() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amountSat => $_getI64(2);
  @$pb.TagNumber(3)
  set amountSat($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmountSat() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmountSat() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get pkScript => $_getSZ(3);
  @$pb.TagNumber(4)
  set pkScript($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPkScript() => $_has(3);
  @$pb.TagNumber(4)
  void clearPkScript() => clearField(4);

  @$pb.TagNumber(5)
  OutPoint get outpoint => $_getN(4);
  @$pb.TagNumber(5)
  set outpoint(OutPoint v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasOutpoint() => $_has(4);
  @$pb.TagNumber(5)
  void clearOutpoint() => clearField(5);
  @$pb.TagNumber(5)
  OutPoint ensureOutpoint() => $_ensure(4);

  @$pb.TagNumber(6)
  $fixnum.Int64 get confirmations => $_getI64(5);
  @$pb.TagNumber(6)
  set confirmations($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasConfirmations() => $_has(5);
  @$pb.TagNumber(6)
  void clearConfirmations() => clearField(6);
}

class Transaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Transaction', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txHash')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numConfirmations', $pb.PbFieldType.O3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHash')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeight', $pb.PbFieldType.O3)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeStamp')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalFees')
    ..pPS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destAddresses')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rawTxHex')
    ..aOS(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..hasRequiredFields = false
  ;

  Transaction._() : super();
  factory Transaction({
    $core.String txHash,
    $fixnum.Int64 amount,
    $core.int numConfirmations,
    $core.String blockHash,
    $core.int blockHeight,
    $fixnum.Int64 timeStamp,
    $fixnum.Int64 totalFees,
    $core.Iterable<$core.String> destAddresses,
    $core.String rawTxHex,
    $core.String label,
  }) {
    final _result = create();
    if (txHash != null) {
      _result.txHash = txHash;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (numConfirmations != null) {
      _result.numConfirmations = numConfirmations;
    }
    if (blockHash != null) {
      _result.blockHash = blockHash;
    }
    if (blockHeight != null) {
      _result.blockHeight = blockHeight;
    }
    if (timeStamp != null) {
      _result.timeStamp = timeStamp;
    }
    if (totalFees != null) {
      _result.totalFees = totalFees;
    }
    if (destAddresses != null) {
      _result.destAddresses.addAll(destAddresses);
    }
    if (rawTxHex != null) {
      _result.rawTxHex = rawTxHex;
    }
    if (label != null) {
      _result.label = label;
    }
    return _result;
  }
  factory Transaction.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Transaction.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Transaction clone() => Transaction()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Transaction copyWith(void Function(Transaction) updates) => super.copyWith((message) => updates(message as Transaction)) as Transaction; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  Transaction createEmptyInstance() => create();
  static $pb.PbList<Transaction> createRepeated() => $pb.PbList<Transaction>();
  @$core.pragma('dart2js:noInline')
  static Transaction getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Transaction>(create);
  static Transaction _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set txHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxHash() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get numConfirmations => $_getIZ(2);
  @$pb.TagNumber(3)
  set numConfirmations($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumConfirmations() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumConfirmations() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get blockHash => $_getSZ(3);
  @$pb.TagNumber(4)
  set blockHash($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBlockHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearBlockHash() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get blockHeight => $_getIZ(4);
  @$pb.TagNumber(5)
  set blockHeight($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBlockHeight() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlockHeight() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get timeStamp => $_getI64(5);
  @$pb.TagNumber(6)
  set timeStamp($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimeStamp() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimeStamp() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get totalFees => $_getI64(6);
  @$pb.TagNumber(7)
  set totalFees($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasTotalFees() => $_has(6);
  @$pb.TagNumber(7)
  void clearTotalFees() => clearField(7);

  @$pb.TagNumber(8)
  $core.List<$core.String> get destAddresses => $_getList(7);

  @$pb.TagNumber(9)
  $core.String get rawTxHex => $_getSZ(8);
  @$pb.TagNumber(9)
  set rawTxHex($core.String v) { $_setString(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasRawTxHex() => $_has(8);
  @$pb.TagNumber(9)
  void clearRawTxHex() => clearField(9);

  @$pb.TagNumber(10)
  $core.String get label => $_getSZ(9);
  @$pb.TagNumber(10)
  set label($core.String v) { $_setString(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasLabel() => $_has(9);
  @$pb.TagNumber(10)
  void clearLabel() => clearField(10);
}

class GetTransactionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetTransactionsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startHeight', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endHeight', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  GetTransactionsRequest._() : super();
  factory GetTransactionsRequest({
    $core.int startHeight,
    $core.int endHeight,
  }) {
    final _result = create();
    if (startHeight != null) {
      _result.startHeight = startHeight;
    }
    if (endHeight != null) {
      _result.endHeight = endHeight;
    }
    return _result;
  }
  factory GetTransactionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetTransactionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetTransactionsRequest clone() => GetTransactionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetTransactionsRequest copyWith(void Function(GetTransactionsRequest) updates) => super.copyWith((message) => updates(message as GetTransactionsRequest)) as GetTransactionsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTransactionsRequest create() => GetTransactionsRequest._();
  GetTransactionsRequest createEmptyInstance() => create();
  static $pb.PbList<GetTransactionsRequest> createRepeated() => $pb.PbList<GetTransactionsRequest>();
  @$core.pragma('dart2js:noInline')
  static GetTransactionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetTransactionsRequest>(create);
  static GetTransactionsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get startHeight => $_getIZ(0);
  @$pb.TagNumber(1)
  set startHeight($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartHeight() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartHeight() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get endHeight => $_getIZ(1);
  @$pb.TagNumber(2)
  set endHeight($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndHeight() => clearField(2);
}

class TransactionDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TransactionDetails', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<Transaction>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'transactions', $pb.PbFieldType.PM, subBuilder: Transaction.create)
    ..hasRequiredFields = false
  ;

  TransactionDetails._() : super();
  factory TransactionDetails({
    $core.Iterable<Transaction> transactions,
  }) {
    final _result = create();
    if (transactions != null) {
      _result.transactions.addAll(transactions);
    }
    return _result;
  }
  factory TransactionDetails.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TransactionDetails.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TransactionDetails clone() => TransactionDetails()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TransactionDetails copyWith(void Function(TransactionDetails) updates) => super.copyWith((message) => updates(message as TransactionDetails)) as TransactionDetails; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionDetails create() => TransactionDetails._();
  TransactionDetails createEmptyInstance() => create();
  static $pb.PbList<TransactionDetails> createRepeated() => $pb.PbList<TransactionDetails>();
  @$core.pragma('dart2js:noInline')
  static TransactionDetails getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TransactionDetails>(create);
  static TransactionDetails _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Transaction> get transactions => $_getList(0);
}

enum FeeLimit_Limit {
  fixed, 
  percent, 
  fixedMsat, 
  notSet
}

class FeeLimit extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FeeLimit_Limit> _FeeLimit_LimitByTag = {
    1 : FeeLimit_Limit.fixed,
    2 : FeeLimit_Limit.percent,
    3 : FeeLimit_Limit.fixedMsat,
    0 : FeeLimit_Limit.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeeLimit', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fixed')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'percent')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fixedMsat')
    ..hasRequiredFields = false
  ;

  FeeLimit._() : super();
  factory FeeLimit({
    $fixnum.Int64 fixed,
    $fixnum.Int64 percent,
    $fixnum.Int64 fixedMsat,
  }) {
    final _result = create();
    if (fixed != null) {
      _result.fixed = fixed;
    }
    if (percent != null) {
      _result.percent = percent;
    }
    if (fixedMsat != null) {
      _result.fixedMsat = fixedMsat;
    }
    return _result;
  }
  factory FeeLimit.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeeLimit.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeeLimit clone() => FeeLimit()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeeLimit copyWith(void Function(FeeLimit) updates) => super.copyWith((message) => updates(message as FeeLimit)) as FeeLimit; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeeLimit create() => FeeLimit._();
  FeeLimit createEmptyInstance() => create();
  static $pb.PbList<FeeLimit> createRepeated() => $pb.PbList<FeeLimit>();
  @$core.pragma('dart2js:noInline')
  static FeeLimit getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeeLimit>(create);
  static FeeLimit _defaultInstance;

  FeeLimit_Limit whichLimit() => _FeeLimit_LimitByTag[$_whichOneof(0)];
  void clearLimit() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $fixnum.Int64 get fixed => $_getI64(0);
  @$pb.TagNumber(1)
  set fixed($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFixed() => $_has(0);
  @$pb.TagNumber(1)
  void clearFixed() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get percent => $_getI64(1);
  @$pb.TagNumber(2)
  set percent($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPercent() => $_has(1);
  @$pb.TagNumber(2)
  void clearPercent() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get fixedMsat => $_getI64(2);
  @$pb.TagNumber(3)
  set fixedMsat($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFixedMsat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFixedMsat() => clearField(3);
}

class SendRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dest', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destString')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amt')
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHash', $pb.PbFieldType.OY)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHashString')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentRequest')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finalCltvDelta', $pb.PbFieldType.O3)
    ..aOM<FeeLimit>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeLimit', subBuilder: FeeLimit.create)
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outgoingChanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cltvLimit', $pb.PbFieldType.OU3)
    ..m<$fixnum.Int64, $core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destCustomRecords', entryClassName: 'SendRequest.DestCustomRecordsEntry', keyFieldType: $pb.PbFieldType.OU6, valueFieldType: $pb.PbFieldType.OY, packageName: const $pb.PackageName('lnrpc'))
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtMsat')
    ..a<$core.List<$core.int>>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastHopPubkey', $pb.PbFieldType.OY)
    ..aOB(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'allowSelfPayment')
    ..pc<FeatureBit>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destFeatures', $pb.PbFieldType.PE, valueOf: FeatureBit.valueOf, enumValues: FeatureBit.values)
    ..hasRequiredFields = false
  ;

  SendRequest._() : super();
  factory SendRequest({
    $core.List<$core.int> dest,
  @$core.Deprecated('This field is deprecated.')
    $core.String destString,
    $fixnum.Int64 amt,
    $core.List<$core.int> paymentHash,
  @$core.Deprecated('This field is deprecated.')
    $core.String paymentHashString,
    $core.String paymentRequest,
    $core.int finalCltvDelta,
    FeeLimit feeLimit,
    $fixnum.Int64 outgoingChanId,
    $core.int cltvLimit,
    $core.Map<$fixnum.Int64, $core.List<$core.int>> destCustomRecords,
    $fixnum.Int64 amtMsat,
    $core.List<$core.int> lastHopPubkey,
    $core.bool allowSelfPayment,
    $core.Iterable<FeatureBit> destFeatures,
  }) {
    final _result = create();
    if (dest != null) {
      _result.dest = dest;
    }
    if (destString != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.destString = destString;
    }
    if (amt != null) {
      _result.amt = amt;
    }
    if (paymentHash != null) {
      _result.paymentHash = paymentHash;
    }
    if (paymentHashString != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.paymentHashString = paymentHashString;
    }
    if (paymentRequest != null) {
      _result.paymentRequest = paymentRequest;
    }
    if (finalCltvDelta != null) {
      _result.finalCltvDelta = finalCltvDelta;
    }
    if (feeLimit != null) {
      _result.feeLimit = feeLimit;
    }
    if (outgoingChanId != null) {
      _result.outgoingChanId = outgoingChanId;
    }
    if (cltvLimit != null) {
      _result.cltvLimit = cltvLimit;
    }
    if (destCustomRecords != null) {
      _result.destCustomRecords.addAll(destCustomRecords);
    }
    if (amtMsat != null) {
      _result.amtMsat = amtMsat;
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
    return _result;
  }
  factory SendRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendRequest clone() => SendRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendRequest copyWith(void Function(SendRequest) updates) => super.copyWith((message) => updates(message as SendRequest)) as SendRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendRequest create() => SendRequest._();
  SendRequest createEmptyInstance() => create();
  static $pb.PbList<SendRequest> createRepeated() => $pb.PbList<SendRequest>();
  @$core.pragma('dart2js:noInline')
  static SendRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendRequest>(create);
  static SendRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get dest => $_getN(0);
  @$pb.TagNumber(1)
  set dest($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDest() => $_has(0);
  @$pb.TagNumber(1)
  void clearDest() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.String get destString => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set destString($core.String v) { $_setString(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasDestString() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearDestString() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amt => $_getI64(2);
  @$pb.TagNumber(3)
  set amt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmt() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmt() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get paymentHash => $_getN(3);
  @$pb.TagNumber(4)
  set paymentHash($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaymentHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaymentHash() => clearField(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.String get paymentHashString => $_getSZ(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set paymentHashString($core.String v) { $_setString(4, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasPaymentHashString() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearPaymentHashString() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get paymentRequest => $_getSZ(5);
  @$pb.TagNumber(6)
  set paymentRequest($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPaymentRequest() => $_has(5);
  @$pb.TagNumber(6)
  void clearPaymentRequest() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get finalCltvDelta => $_getIZ(6);
  @$pb.TagNumber(7)
  set finalCltvDelta($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFinalCltvDelta() => $_has(6);
  @$pb.TagNumber(7)
  void clearFinalCltvDelta() => clearField(7);

  @$pb.TagNumber(8)
  FeeLimit get feeLimit => $_getN(7);
  @$pb.TagNumber(8)
  set feeLimit(FeeLimit v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasFeeLimit() => $_has(7);
  @$pb.TagNumber(8)
  void clearFeeLimit() => clearField(8);
  @$pb.TagNumber(8)
  FeeLimit ensureFeeLimit() => $_ensure(7);

  @$pb.TagNumber(9)
  $fixnum.Int64 get outgoingChanId => $_getI64(8);
  @$pb.TagNumber(9)
  set outgoingChanId($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasOutgoingChanId() => $_has(8);
  @$pb.TagNumber(9)
  void clearOutgoingChanId() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get cltvLimit => $_getIZ(9);
  @$pb.TagNumber(10)
  set cltvLimit($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasCltvLimit() => $_has(9);
  @$pb.TagNumber(10)
  void clearCltvLimit() => clearField(10);

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
  $core.List<$core.int> get lastHopPubkey => $_getN(12);
  @$pb.TagNumber(13)
  set lastHopPubkey($core.List<$core.int> v) { $_setBytes(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasLastHopPubkey() => $_has(12);
  @$pb.TagNumber(13)
  void clearLastHopPubkey() => clearField(13);

  @$pb.TagNumber(14)
  $core.bool get allowSelfPayment => $_getBF(13);
  @$pb.TagNumber(14)
  set allowSelfPayment($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasAllowSelfPayment() => $_has(13);
  @$pb.TagNumber(14)
  void clearAllowSelfPayment() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<FeatureBit> get destFeatures => $_getList(14);
}

class SendResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentError')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentPreimage', $pb.PbFieldType.OY)
    ..aOM<Route>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentRoute', subBuilder: Route.create)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SendResponse._() : super();
  factory SendResponse({
    $core.String paymentError,
    $core.List<$core.int> paymentPreimage,
    Route paymentRoute,
    $core.List<$core.int> paymentHash,
  }) {
    final _result = create();
    if (paymentError != null) {
      _result.paymentError = paymentError;
    }
    if (paymentPreimage != null) {
      _result.paymentPreimage = paymentPreimage;
    }
    if (paymentRoute != null) {
      _result.paymentRoute = paymentRoute;
    }
    if (paymentHash != null) {
      _result.paymentHash = paymentHash;
    }
    return _result;
  }
  factory SendResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendResponse clone() => SendResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendResponse copyWith(void Function(SendResponse) updates) => super.copyWith((message) => updates(message as SendResponse)) as SendResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendResponse create() => SendResponse._();
  SendResponse createEmptyInstance() => create();
  static $pb.PbList<SendResponse> createRepeated() => $pb.PbList<SendResponse>();
  @$core.pragma('dart2js:noInline')
  static SendResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendResponse>(create);
  static SendResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get paymentError => $_getSZ(0);
  @$pb.TagNumber(1)
  set paymentError($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPaymentError() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaymentError() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get paymentPreimage => $_getN(1);
  @$pb.TagNumber(2)
  set paymentPreimage($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaymentPreimage() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaymentPreimage() => clearField(2);

  @$pb.TagNumber(3)
  Route get paymentRoute => $_getN(2);
  @$pb.TagNumber(3)
  set paymentRoute(Route v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPaymentRoute() => $_has(2);
  @$pb.TagNumber(3)
  void clearPaymentRoute() => clearField(3);
  @$pb.TagNumber(3)
  Route ensurePaymentRoute() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get paymentHash => $_getN(3);
  @$pb.TagNumber(4)
  set paymentHash($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPaymentHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearPaymentHash() => clearField(4);
}

class SendToRouteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendToRouteRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHash', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHashString')
    ..aOM<Route>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'route', subBuilder: Route.create)
    ..hasRequiredFields = false
  ;

  SendToRouteRequest._() : super();
  factory SendToRouteRequest({
    $core.List<$core.int> paymentHash,
  @$core.Deprecated('This field is deprecated.')
    $core.String paymentHashString,
    Route route,
  }) {
    final _result = create();
    if (paymentHash != null) {
      _result.paymentHash = paymentHash;
    }
    if (paymentHashString != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.paymentHashString = paymentHashString;
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

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.String get paymentHashString => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set paymentHashString($core.String v) { $_setString(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasPaymentHashString() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearPaymentHashString() => clearField(2);

  @$pb.TagNumber(4)
  Route get route => $_getN(2);
  @$pb.TagNumber(4)
  set route(Route v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoute() => $_has(2);
  @$pb.TagNumber(4)
  void clearRoute() => clearField(4);
  @$pb.TagNumber(4)
  Route ensureRoute() => $_ensure(2);
}

class ChannelAcceptRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelAcceptRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodePubkey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chainHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingChanId', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fundingAmt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pushAmt', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dustLimit', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxValueInFlight', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelReserve', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minHtlc', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feePerKw', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'csvDelay', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxAcceptedHtlcs', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelFlags', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ChannelAcceptRequest._() : super();
  factory ChannelAcceptRequest({
    $core.List<$core.int> nodePubkey,
    $core.List<$core.int> chainHash,
    $core.List<$core.int> pendingChanId,
    $fixnum.Int64 fundingAmt,
    $fixnum.Int64 pushAmt,
    $fixnum.Int64 dustLimit,
    $fixnum.Int64 maxValueInFlight,
    $fixnum.Int64 channelReserve,
    $fixnum.Int64 minHtlc,
    $fixnum.Int64 feePerKw,
    $core.int csvDelay,
    $core.int maxAcceptedHtlcs,
    $core.int channelFlags,
  }) {
    final _result = create();
    if (nodePubkey != null) {
      _result.nodePubkey = nodePubkey;
    }
    if (chainHash != null) {
      _result.chainHash = chainHash;
    }
    if (pendingChanId != null) {
      _result.pendingChanId = pendingChanId;
    }
    if (fundingAmt != null) {
      _result.fundingAmt = fundingAmt;
    }
    if (pushAmt != null) {
      _result.pushAmt = pushAmt;
    }
    if (dustLimit != null) {
      _result.dustLimit = dustLimit;
    }
    if (maxValueInFlight != null) {
      _result.maxValueInFlight = maxValueInFlight;
    }
    if (channelReserve != null) {
      _result.channelReserve = channelReserve;
    }
    if (minHtlc != null) {
      _result.minHtlc = minHtlc;
    }
    if (feePerKw != null) {
      _result.feePerKw = feePerKw;
    }
    if (csvDelay != null) {
      _result.csvDelay = csvDelay;
    }
    if (maxAcceptedHtlcs != null) {
      _result.maxAcceptedHtlcs = maxAcceptedHtlcs;
    }
    if (channelFlags != null) {
      _result.channelFlags = channelFlags;
    }
    return _result;
  }
  factory ChannelAcceptRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelAcceptRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelAcceptRequest clone() => ChannelAcceptRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelAcceptRequest copyWith(void Function(ChannelAcceptRequest) updates) => super.copyWith((message) => updates(message as ChannelAcceptRequest)) as ChannelAcceptRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelAcceptRequest create() => ChannelAcceptRequest._();
  ChannelAcceptRequest createEmptyInstance() => create();
  static $pb.PbList<ChannelAcceptRequest> createRepeated() => $pb.PbList<ChannelAcceptRequest>();
  @$core.pragma('dart2js:noInline')
  static ChannelAcceptRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelAcceptRequest>(create);
  static ChannelAcceptRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get nodePubkey => $_getN(0);
  @$pb.TagNumber(1)
  set nodePubkey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodePubkey() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodePubkey() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get chainHash => $_getN(1);
  @$pb.TagNumber(2)
  set chainHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChainHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearChainHash() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get pendingChanId => $_getN(2);
  @$pb.TagNumber(3)
  set pendingChanId($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPendingChanId() => $_has(2);
  @$pb.TagNumber(3)
  void clearPendingChanId() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get fundingAmt => $_getI64(3);
  @$pb.TagNumber(4)
  set fundingAmt($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFundingAmt() => $_has(3);
  @$pb.TagNumber(4)
  void clearFundingAmt() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get pushAmt => $_getI64(4);
  @$pb.TagNumber(5)
  set pushAmt($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPushAmt() => $_has(4);
  @$pb.TagNumber(5)
  void clearPushAmt() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get dustLimit => $_getI64(5);
  @$pb.TagNumber(6)
  set dustLimit($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDustLimit() => $_has(5);
  @$pb.TagNumber(6)
  void clearDustLimit() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get maxValueInFlight => $_getI64(6);
  @$pb.TagNumber(7)
  set maxValueInFlight($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMaxValueInFlight() => $_has(6);
  @$pb.TagNumber(7)
  void clearMaxValueInFlight() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get channelReserve => $_getI64(7);
  @$pb.TagNumber(8)
  set channelReserve($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasChannelReserve() => $_has(7);
  @$pb.TagNumber(8)
  void clearChannelReserve() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get minHtlc => $_getI64(8);
  @$pb.TagNumber(9)
  set minHtlc($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMinHtlc() => $_has(8);
  @$pb.TagNumber(9)
  void clearMinHtlc() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get feePerKw => $_getI64(9);
  @$pb.TagNumber(10)
  set feePerKw($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFeePerKw() => $_has(9);
  @$pb.TagNumber(10)
  void clearFeePerKw() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get csvDelay => $_getIZ(10);
  @$pb.TagNumber(11)
  set csvDelay($core.int v) { $_setUnsignedInt32(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasCsvDelay() => $_has(10);
  @$pb.TagNumber(11)
  void clearCsvDelay() => clearField(11);

  @$pb.TagNumber(12)
  $core.int get maxAcceptedHtlcs => $_getIZ(11);
  @$pb.TagNumber(12)
  set maxAcceptedHtlcs($core.int v) { $_setUnsignedInt32(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasMaxAcceptedHtlcs() => $_has(11);
  @$pb.TagNumber(12)
  void clearMaxAcceptedHtlcs() => clearField(12);

  @$pb.TagNumber(13)
  $core.int get channelFlags => $_getIZ(12);
  @$pb.TagNumber(13)
  set channelFlags($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasChannelFlags() => $_has(12);
  @$pb.TagNumber(13)
  void clearChannelFlags() => clearField(13);
}

class ChannelAcceptResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelAcceptResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'accept')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingChanId', $pb.PbFieldType.OY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'upfrontShutdown')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'csvDelay', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reserveSat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inFlightMaxMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxHtlcCount', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minHtlcIn', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minAcceptDepth', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ChannelAcceptResponse._() : super();
  factory ChannelAcceptResponse({
    $core.bool accept,
    $core.List<$core.int> pendingChanId,
    $core.String error,
    $core.String upfrontShutdown,
    $core.int csvDelay,
    $fixnum.Int64 reserveSat,
    $fixnum.Int64 inFlightMaxMsat,
    $core.int maxHtlcCount,
    $fixnum.Int64 minHtlcIn,
    $core.int minAcceptDepth,
  }) {
    final _result = create();
    if (accept != null) {
      _result.accept = accept;
    }
    if (pendingChanId != null) {
      _result.pendingChanId = pendingChanId;
    }
    if (error != null) {
      _result.error = error;
    }
    if (upfrontShutdown != null) {
      _result.upfrontShutdown = upfrontShutdown;
    }
    if (csvDelay != null) {
      _result.csvDelay = csvDelay;
    }
    if (reserveSat != null) {
      _result.reserveSat = reserveSat;
    }
    if (inFlightMaxMsat != null) {
      _result.inFlightMaxMsat = inFlightMaxMsat;
    }
    if (maxHtlcCount != null) {
      _result.maxHtlcCount = maxHtlcCount;
    }
    if (minHtlcIn != null) {
      _result.minHtlcIn = minHtlcIn;
    }
    if (minAcceptDepth != null) {
      _result.minAcceptDepth = minAcceptDepth;
    }
    return _result;
  }
  factory ChannelAcceptResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelAcceptResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelAcceptResponse clone() => ChannelAcceptResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelAcceptResponse copyWith(void Function(ChannelAcceptResponse) updates) => super.copyWith((message) => updates(message as ChannelAcceptResponse)) as ChannelAcceptResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelAcceptResponse create() => ChannelAcceptResponse._();
  ChannelAcceptResponse createEmptyInstance() => create();
  static $pb.PbList<ChannelAcceptResponse> createRepeated() => $pb.PbList<ChannelAcceptResponse>();
  @$core.pragma('dart2js:noInline')
  static ChannelAcceptResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelAcceptResponse>(create);
  static ChannelAcceptResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get accept => $_getBF(0);
  @$pb.TagNumber(1)
  set accept($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAccept() => $_has(0);
  @$pb.TagNumber(1)
  void clearAccept() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get pendingChanId => $_getN(1);
  @$pb.TagNumber(2)
  set pendingChanId($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPendingChanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPendingChanId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get error => $_getSZ(2);
  @$pb.TagNumber(3)
  set error($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasError() => $_has(2);
  @$pb.TagNumber(3)
  void clearError() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get upfrontShutdown => $_getSZ(3);
  @$pb.TagNumber(4)
  set upfrontShutdown($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasUpfrontShutdown() => $_has(3);
  @$pb.TagNumber(4)
  void clearUpfrontShutdown() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get csvDelay => $_getIZ(4);
  @$pb.TagNumber(5)
  set csvDelay($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCsvDelay() => $_has(4);
  @$pb.TagNumber(5)
  void clearCsvDelay() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get reserveSat => $_getI64(5);
  @$pb.TagNumber(6)
  set reserveSat($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasReserveSat() => $_has(5);
  @$pb.TagNumber(6)
  void clearReserveSat() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get inFlightMaxMsat => $_getI64(6);
  @$pb.TagNumber(7)
  set inFlightMaxMsat($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasInFlightMaxMsat() => $_has(6);
  @$pb.TagNumber(7)
  void clearInFlightMaxMsat() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get maxHtlcCount => $_getIZ(7);
  @$pb.TagNumber(8)
  set maxHtlcCount($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMaxHtlcCount() => $_has(7);
  @$pb.TagNumber(8)
  void clearMaxHtlcCount() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get minHtlcIn => $_getI64(8);
  @$pb.TagNumber(9)
  set minHtlcIn($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMinHtlcIn() => $_has(8);
  @$pb.TagNumber(9)
  void clearMinHtlcIn() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get minAcceptDepth => $_getIZ(9);
  @$pb.TagNumber(10)
  set minAcceptDepth($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMinAcceptDepth() => $_has(9);
  @$pb.TagNumber(10)
  void clearMinAcceptDepth() => clearField(10);
}

enum ChannelPoint_FundingTxid {
  fundingTxidBytes, 
  fundingTxidStr, 
  notSet
}

class ChannelPoint extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ChannelPoint_FundingTxid> _ChannelPoint_FundingTxidByTag = {
    1 : ChannelPoint_FundingTxid.fundingTxidBytes,
    2 : ChannelPoint_FundingTxid.fundingTxidStr,
    0 : ChannelPoint_FundingTxid.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelPoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fundingTxidBytes', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fundingTxidStr')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputIndex', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ChannelPoint._() : super();
  factory ChannelPoint({
    $core.List<$core.int> fundingTxidBytes,
    $core.String fundingTxidStr,
    $core.int outputIndex,
  }) {
    final _result = create();
    if (fundingTxidBytes != null) {
      _result.fundingTxidBytes = fundingTxidBytes;
    }
    if (fundingTxidStr != null) {
      _result.fundingTxidStr = fundingTxidStr;
    }
    if (outputIndex != null) {
      _result.outputIndex = outputIndex;
    }
    return _result;
  }
  factory ChannelPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelPoint clone() => ChannelPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelPoint copyWith(void Function(ChannelPoint) updates) => super.copyWith((message) => updates(message as ChannelPoint)) as ChannelPoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelPoint create() => ChannelPoint._();
  ChannelPoint createEmptyInstance() => create();
  static $pb.PbList<ChannelPoint> createRepeated() => $pb.PbList<ChannelPoint>();
  @$core.pragma('dart2js:noInline')
  static ChannelPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelPoint>(create);
  static ChannelPoint _defaultInstance;

  ChannelPoint_FundingTxid whichFundingTxid() => _ChannelPoint_FundingTxidByTag[$_whichOneof(0)];
  void clearFundingTxid() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.List<$core.int> get fundingTxidBytes => $_getN(0);
  @$pb.TagNumber(1)
  set fundingTxidBytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFundingTxidBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearFundingTxidBytes() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get fundingTxidStr => $_getSZ(1);
  @$pb.TagNumber(2)
  set fundingTxidStr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFundingTxidStr() => $_has(1);
  @$pb.TagNumber(2)
  void clearFundingTxidStr() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get outputIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set outputIndex($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutputIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutputIndex() => clearField(3);
}

class OutPoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OutPoint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txidBytes', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txidStr')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputIndex', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  OutPoint._() : super();
  factory OutPoint({
    $core.List<$core.int> txidBytes,
    $core.String txidStr,
    $core.int outputIndex,
  }) {
    final _result = create();
    if (txidBytes != null) {
      _result.txidBytes = txidBytes;
    }
    if (txidStr != null) {
      _result.txidStr = txidStr;
    }
    if (outputIndex != null) {
      _result.outputIndex = outputIndex;
    }
    return _result;
  }
  factory OutPoint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OutPoint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OutPoint clone() => OutPoint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OutPoint copyWith(void Function(OutPoint) updates) => super.copyWith((message) => updates(message as OutPoint)) as OutPoint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OutPoint create() => OutPoint._();
  OutPoint createEmptyInstance() => create();
  static $pb.PbList<OutPoint> createRepeated() => $pb.PbList<OutPoint>();
  @$core.pragma('dart2js:noInline')
  static OutPoint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OutPoint>(create);
  static OutPoint _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get txidBytes => $_getN(0);
  @$pb.TagNumber(1)
  set txidBytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxidBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxidBytes() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get txidStr => $_getSZ(1);
  @$pb.TagNumber(2)
  set txidStr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTxidStr() => $_has(1);
  @$pb.TagNumber(2)
  void clearTxidStr() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get outputIndex => $_getIZ(2);
  @$pb.TagNumber(3)
  set outputIndex($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutputIndex() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutputIndex() => clearField(3);
}

class LightningAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LightningAddress', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubkey')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'host')
    ..hasRequiredFields = false
  ;

  LightningAddress._() : super();
  factory LightningAddress({
    $core.String pubkey,
    $core.String host,
  }) {
    final _result = create();
    if (pubkey != null) {
      _result.pubkey = pubkey;
    }
    if (host != null) {
      _result.host = host;
    }
    return _result;
  }
  factory LightningAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LightningAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LightningAddress clone() => LightningAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LightningAddress copyWith(void Function(LightningAddress) updates) => super.copyWith((message) => updates(message as LightningAddress)) as LightningAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LightningAddress create() => LightningAddress._();
  LightningAddress createEmptyInstance() => create();
  static $pb.PbList<LightningAddress> createRepeated() => $pb.PbList<LightningAddress>();
  @$core.pragma('dart2js:noInline')
  static LightningAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LightningAddress>(create);
  static LightningAddress _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubkey => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubkey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubkey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubkey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get host => $_getSZ(1);
  @$pb.TagNumber(2)
  set host($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHost() => $_has(1);
  @$pb.TagNumber(2)
  void clearHost() => clearField(2);
}

class EstimateFeeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EstimateFeeRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..m<$core.String, $fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AddrToAmount', protoName: 'AddrToAmount', entryClassName: 'EstimateFeeRequest.AddrToAmountEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('lnrpc'))
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetConf', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  EstimateFeeRequest._() : super();
  factory EstimateFeeRequest({
    $core.Map<$core.String, $fixnum.Int64> addrToAmount,
    $core.int targetConf,
  }) {
    final _result = create();
    if (addrToAmount != null) {
      _result.addrToAmount.addAll(addrToAmount);
    }
    if (targetConf != null) {
      _result.targetConf = targetConf;
    }
    return _result;
  }
  factory EstimateFeeRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EstimateFeeRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EstimateFeeRequest clone() => EstimateFeeRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EstimateFeeRequest copyWith(void Function(EstimateFeeRequest) updates) => super.copyWith((message) => updates(message as EstimateFeeRequest)) as EstimateFeeRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EstimateFeeRequest create() => EstimateFeeRequest._();
  EstimateFeeRequest createEmptyInstance() => create();
  static $pb.PbList<EstimateFeeRequest> createRepeated() => $pb.PbList<EstimateFeeRequest>();
  @$core.pragma('dart2js:noInline')
  static EstimateFeeRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EstimateFeeRequest>(create);
  static EstimateFeeRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $fixnum.Int64> get addrToAmount => $_getMap(0);

  @$pb.TagNumber(2)
  $core.int get targetConf => $_getIZ(1);
  @$pb.TagNumber(2)
  set targetConf($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTargetConf() => $_has(1);
  @$pb.TagNumber(2)
  void clearTargetConf() => clearField(2);
}

class EstimateFeeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EstimateFeeResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeSat')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feerateSatPerByte')
    ..hasRequiredFields = false
  ;

  EstimateFeeResponse._() : super();
  factory EstimateFeeResponse({
    $fixnum.Int64 feeSat,
    $fixnum.Int64 feerateSatPerByte,
  }) {
    final _result = create();
    if (feeSat != null) {
      _result.feeSat = feeSat;
    }
    if (feerateSatPerByte != null) {
      _result.feerateSatPerByte = feerateSatPerByte;
    }
    return _result;
  }
  factory EstimateFeeResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EstimateFeeResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EstimateFeeResponse clone() => EstimateFeeResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EstimateFeeResponse copyWith(void Function(EstimateFeeResponse) updates) => super.copyWith((message) => updates(message as EstimateFeeResponse)) as EstimateFeeResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EstimateFeeResponse create() => EstimateFeeResponse._();
  EstimateFeeResponse createEmptyInstance() => create();
  static $pb.PbList<EstimateFeeResponse> createRepeated() => $pb.PbList<EstimateFeeResponse>();
  @$core.pragma('dart2js:noInline')
  static EstimateFeeResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EstimateFeeResponse>(create);
  static EstimateFeeResponse _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get feeSat => $_getI64(0);
  @$pb.TagNumber(1)
  set feeSat($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFeeSat() => $_has(0);
  @$pb.TagNumber(1)
  void clearFeeSat() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get feerateSatPerByte => $_getI64(1);
  @$pb.TagNumber(2)
  set feerateSatPerByte($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFeerateSatPerByte() => $_has(1);
  @$pb.TagNumber(2)
  void clearFeerateSatPerByte() => clearField(2);
}

class SendManyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendManyRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..m<$core.String, $fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'AddrToAmount', protoName: 'AddrToAmount', entryClassName: 'SendManyRequest.AddrToAmountEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.O6, packageName: const $pb.PackageName('lnrpc'))
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetConf', $pb.PbFieldType.O3)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satPerByte')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minConfs', $pb.PbFieldType.O3)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spendUnconfirmed')
    ..hasRequiredFields = false
  ;

  SendManyRequest._() : super();
  factory SendManyRequest({
    $core.Map<$core.String, $fixnum.Int64> addrToAmount,
    $core.int targetConf,
    $fixnum.Int64 satPerByte,
    $core.String label,
    $core.int minConfs,
    $core.bool spendUnconfirmed,
  }) {
    final _result = create();
    if (addrToAmount != null) {
      _result.addrToAmount.addAll(addrToAmount);
    }
    if (targetConf != null) {
      _result.targetConf = targetConf;
    }
    if (satPerByte != null) {
      _result.satPerByte = satPerByte;
    }
    if (label != null) {
      _result.label = label;
    }
    if (minConfs != null) {
      _result.minConfs = minConfs;
    }
    if (spendUnconfirmed != null) {
      _result.spendUnconfirmed = spendUnconfirmed;
    }
    return _result;
  }
  factory SendManyRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendManyRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendManyRequest clone() => SendManyRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendManyRequest copyWith(void Function(SendManyRequest) updates) => super.copyWith((message) => updates(message as SendManyRequest)) as SendManyRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendManyRequest create() => SendManyRequest._();
  SendManyRequest createEmptyInstance() => create();
  static $pb.PbList<SendManyRequest> createRepeated() => $pb.PbList<SendManyRequest>();
  @$core.pragma('dart2js:noInline')
  static SendManyRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendManyRequest>(create);
  static SendManyRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, $fixnum.Int64> get addrToAmount => $_getMap(0);

  @$pb.TagNumber(3)
  $core.int get targetConf => $_getIZ(1);
  @$pb.TagNumber(3)
  set targetConf($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetConf() => $_has(1);
  @$pb.TagNumber(3)
  void clearTargetConf() => clearField(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get satPerByte => $_getI64(2);
  @$pb.TagNumber(5)
  set satPerByte($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasSatPerByte() => $_has(2);
  @$pb.TagNumber(5)
  void clearSatPerByte() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get label => $_getSZ(3);
  @$pb.TagNumber(6)
  set label($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasLabel() => $_has(3);
  @$pb.TagNumber(6)
  void clearLabel() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get minConfs => $_getIZ(4);
  @$pb.TagNumber(7)
  set minConfs($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(7)
  $core.bool hasMinConfs() => $_has(4);
  @$pb.TagNumber(7)
  void clearMinConfs() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get spendUnconfirmed => $_getBF(5);
  @$pb.TagNumber(8)
  set spendUnconfirmed($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(8)
  $core.bool hasSpendUnconfirmed() => $_has(5);
  @$pb.TagNumber(8)
  void clearSpendUnconfirmed() => clearField(8);
}

class SendManyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendManyResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txid')
    ..hasRequiredFields = false
  ;

  SendManyResponse._() : super();
  factory SendManyResponse({
    $core.String txid,
  }) {
    final _result = create();
    if (txid != null) {
      _result.txid = txid;
    }
    return _result;
  }
  factory SendManyResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendManyResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendManyResponse clone() => SendManyResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendManyResponse copyWith(void Function(SendManyResponse) updates) => super.copyWith((message) => updates(message as SendManyResponse)) as SendManyResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendManyResponse create() => SendManyResponse._();
  SendManyResponse createEmptyInstance() => create();
  static $pb.PbList<SendManyResponse> createRepeated() => $pb.PbList<SendManyResponse>();
  @$core.pragma('dart2js:noInline')
  static SendManyResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendManyResponse>(create);
  static SendManyResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txid => $_getSZ(0);
  @$pb.TagNumber(1)
  set txid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxid() => clearField(1);
}

class SendCoinsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendCoinsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addr')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetConf', $pb.PbFieldType.O3)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satPerByte')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sendAll')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'label')
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minConfs', $pb.PbFieldType.O3)
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spendUnconfirmed')
    ..hasRequiredFields = false
  ;

  SendCoinsRequest._() : super();
  factory SendCoinsRequest({
    $core.String addr,
    $fixnum.Int64 amount,
    $core.int targetConf,
    $fixnum.Int64 satPerByte,
    $core.bool sendAll,
    $core.String label,
    $core.int minConfs,
    $core.bool spendUnconfirmed,
  }) {
    final _result = create();
    if (addr != null) {
      _result.addr = addr;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (targetConf != null) {
      _result.targetConf = targetConf;
    }
    if (satPerByte != null) {
      _result.satPerByte = satPerByte;
    }
    if (sendAll != null) {
      _result.sendAll = sendAll;
    }
    if (label != null) {
      _result.label = label;
    }
    if (minConfs != null) {
      _result.minConfs = minConfs;
    }
    if (spendUnconfirmed != null) {
      _result.spendUnconfirmed = spendUnconfirmed;
    }
    return _result;
  }
  factory SendCoinsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendCoinsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendCoinsRequest clone() => SendCoinsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendCoinsRequest copyWith(void Function(SendCoinsRequest) updates) => super.copyWith((message) => updates(message as SendCoinsRequest)) as SendCoinsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendCoinsRequest create() => SendCoinsRequest._();
  SendCoinsRequest createEmptyInstance() => create();
  static $pb.PbList<SendCoinsRequest> createRepeated() => $pb.PbList<SendCoinsRequest>();
  @$core.pragma('dart2js:noInline')
  static SendCoinsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendCoinsRequest>(create);
  static SendCoinsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get addr => $_getSZ(0);
  @$pb.TagNumber(1)
  set addr($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddr() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get targetConf => $_getIZ(2);
  @$pb.TagNumber(3)
  set targetConf($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetConf() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetConf() => clearField(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get satPerByte => $_getI64(3);
  @$pb.TagNumber(5)
  set satPerByte($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasSatPerByte() => $_has(3);
  @$pb.TagNumber(5)
  void clearSatPerByte() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get sendAll => $_getBF(4);
  @$pb.TagNumber(6)
  set sendAll($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasSendAll() => $_has(4);
  @$pb.TagNumber(6)
  void clearSendAll() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get label => $_getSZ(5);
  @$pb.TagNumber(7)
  set label($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasLabel() => $_has(5);
  @$pb.TagNumber(7)
  void clearLabel() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get minConfs => $_getIZ(6);
  @$pb.TagNumber(8)
  set minConfs($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasMinConfs() => $_has(6);
  @$pb.TagNumber(8)
  void clearMinConfs() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get spendUnconfirmed => $_getBF(7);
  @$pb.TagNumber(9)
  set spendUnconfirmed($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasSpendUnconfirmed() => $_has(7);
  @$pb.TagNumber(9)
  void clearSpendUnconfirmed() => clearField(9);
}

class SendCoinsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SendCoinsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txid')
    ..hasRequiredFields = false
  ;

  SendCoinsResponse._() : super();
  factory SendCoinsResponse({
    $core.String txid,
  }) {
    final _result = create();
    if (txid != null) {
      _result.txid = txid;
    }
    return _result;
  }
  factory SendCoinsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SendCoinsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SendCoinsResponse clone() => SendCoinsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SendCoinsResponse copyWith(void Function(SendCoinsResponse) updates) => super.copyWith((message) => updates(message as SendCoinsResponse)) as SendCoinsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendCoinsResponse create() => SendCoinsResponse._();
  SendCoinsResponse createEmptyInstance() => create();
  static $pb.PbList<SendCoinsResponse> createRepeated() => $pb.PbList<SendCoinsResponse>();
  @$core.pragma('dart2js:noInline')
  static SendCoinsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SendCoinsResponse>(create);
  static SendCoinsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get txid => $_getSZ(0);
  @$pb.TagNumber(1)
  set txid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxid() => clearField(1);
}

class ListUnspentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListUnspentRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minConfs', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxConfs', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  ListUnspentRequest._() : super();
  factory ListUnspentRequest({
    $core.int minConfs,
    $core.int maxConfs,
  }) {
    final _result = create();
    if (minConfs != null) {
      _result.minConfs = minConfs;
    }
    if (maxConfs != null) {
      _result.maxConfs = maxConfs;
    }
    return _result;
  }
  factory ListUnspentRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListUnspentRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListUnspentRequest clone() => ListUnspentRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListUnspentRequest copyWith(void Function(ListUnspentRequest) updates) => super.copyWith((message) => updates(message as ListUnspentRequest)) as ListUnspentRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListUnspentRequest create() => ListUnspentRequest._();
  ListUnspentRequest createEmptyInstance() => create();
  static $pb.PbList<ListUnspentRequest> createRepeated() => $pb.PbList<ListUnspentRequest>();
  @$core.pragma('dart2js:noInline')
  static ListUnspentRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListUnspentRequest>(create);
  static ListUnspentRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get minConfs => $_getIZ(0);
  @$pb.TagNumber(1)
  set minConfs($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMinConfs() => $_has(0);
  @$pb.TagNumber(1)
  void clearMinConfs() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get maxConfs => $_getIZ(1);
  @$pb.TagNumber(2)
  set maxConfs($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMaxConfs() => $_has(1);
  @$pb.TagNumber(2)
  void clearMaxConfs() => clearField(2);
}

class ListUnspentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListUnspentResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<Utxo>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'utxos', $pb.PbFieldType.PM, subBuilder: Utxo.create)
    ..hasRequiredFields = false
  ;

  ListUnspentResponse._() : super();
  factory ListUnspentResponse({
    $core.Iterable<Utxo> utxos,
  }) {
    final _result = create();
    if (utxos != null) {
      _result.utxos.addAll(utxos);
    }
    return _result;
  }
  factory ListUnspentResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListUnspentResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListUnspentResponse clone() => ListUnspentResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListUnspentResponse copyWith(void Function(ListUnspentResponse) updates) => super.copyWith((message) => updates(message as ListUnspentResponse)) as ListUnspentResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListUnspentResponse create() => ListUnspentResponse._();
  ListUnspentResponse createEmptyInstance() => create();
  static $pb.PbList<ListUnspentResponse> createRepeated() => $pb.PbList<ListUnspentResponse>();
  @$core.pragma('dart2js:noInline')
  static ListUnspentResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListUnspentResponse>(create);
  static ListUnspentResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Utxo> get utxos => $_getList(0);
}

class NewAddressRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewAddressRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..e<AddressType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: AddressType.WITNESS_PUBKEY_HASH, valueOf: AddressType.valueOf, enumValues: AddressType.values)
    ..hasRequiredFields = false
  ;

  NewAddressRequest._() : super();
  factory NewAddressRequest({
    AddressType type,
  }) {
    final _result = create();
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory NewAddressRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewAddressRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewAddressRequest clone() => NewAddressRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewAddressRequest copyWith(void Function(NewAddressRequest) updates) => super.copyWith((message) => updates(message as NewAddressRequest)) as NewAddressRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewAddressRequest create() => NewAddressRequest._();
  NewAddressRequest createEmptyInstance() => create();
  static $pb.PbList<NewAddressRequest> createRepeated() => $pb.PbList<NewAddressRequest>();
  @$core.pragma('dart2js:noInline')
  static NewAddressRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewAddressRequest>(create);
  static NewAddressRequest _defaultInstance;

  @$pb.TagNumber(1)
  AddressType get type => $_getN(0);
  @$pb.TagNumber(1)
  set type(AddressType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasType() => $_has(0);
  @$pb.TagNumber(1)
  void clearType() => clearField(1);
}

class NewAddressResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NewAddressResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..hasRequiredFields = false
  ;

  NewAddressResponse._() : super();
  factory NewAddressResponse({
    $core.String address,
  }) {
    final _result = create();
    if (address != null) {
      _result.address = address;
    }
    return _result;
  }
  factory NewAddressResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NewAddressResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NewAddressResponse clone() => NewAddressResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NewAddressResponse copyWith(void Function(NewAddressResponse) updates) => super.copyWith((message) => updates(message as NewAddressResponse)) as NewAddressResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewAddressResponse create() => NewAddressResponse._();
  NewAddressResponse createEmptyInstance() => create();
  static $pb.PbList<NewAddressResponse> createRepeated() => $pb.PbList<NewAddressResponse>();
  @$core.pragma('dart2js:noInline')
  static NewAddressResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NewAddressResponse>(create);
  static NewAddressResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get address => $_getSZ(0);
  @$pb.TagNumber(1)
  set address($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddress() => clearField(1);
}

class SignMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignMessageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  SignMessageRequest._() : super();
  factory SignMessageRequest({
    $core.List<$core.int> msg,
  }) {
    final _result = create();
    if (msg != null) {
      _result.msg = msg;
    }
    return _result;
  }
  factory SignMessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignMessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignMessageRequest clone() => SignMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignMessageRequest copyWith(void Function(SignMessageRequest) updates) => super.copyWith((message) => updates(message as SignMessageRequest)) as SignMessageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignMessageRequest create() => SignMessageRequest._();
  SignMessageRequest createEmptyInstance() => create();
  static $pb.PbList<SignMessageRequest> createRepeated() => $pb.PbList<SignMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static SignMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignMessageRequest>(create);
  static SignMessageRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get msg => $_getN(0);
  @$pb.TagNumber(1)
  set msg($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => clearField(1);
}

class SignMessageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'SignMessageResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature')
    ..hasRequiredFields = false
  ;

  SignMessageResponse._() : super();
  factory SignMessageResponse({
    $core.String signature,
  }) {
    final _result = create();
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory SignMessageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory SignMessageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  SignMessageResponse clone() => SignMessageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  SignMessageResponse copyWith(void Function(SignMessageResponse) updates) => super.copyWith((message) => updates(message as SignMessageResponse)) as SignMessageResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignMessageResponse create() => SignMessageResponse._();
  SignMessageResponse createEmptyInstance() => create();
  static $pb.PbList<SignMessageResponse> createRepeated() => $pb.PbList<SignMessageResponse>();
  @$core.pragma('dart2js:noInline')
  static SignMessageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<SignMessageResponse>(create);
  static SignMessageResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get signature => $_getSZ(0);
  @$pb.TagNumber(1)
  set signature($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);
}

class VerifyMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyMessageRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msg', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature')
    ..hasRequiredFields = false
  ;

  VerifyMessageRequest._() : super();
  factory VerifyMessageRequest({
    $core.List<$core.int> msg,
    $core.String signature,
  }) {
    final _result = create();
    if (msg != null) {
      _result.msg = msg;
    }
    if (signature != null) {
      _result.signature = signature;
    }
    return _result;
  }
  factory VerifyMessageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyMessageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyMessageRequest clone() => VerifyMessageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyMessageRequest copyWith(void Function(VerifyMessageRequest) updates) => super.copyWith((message) => updates(message as VerifyMessageRequest)) as VerifyMessageRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyMessageRequest create() => VerifyMessageRequest._();
  VerifyMessageRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyMessageRequest> createRepeated() => $pb.PbList<VerifyMessageRequest>();
  @$core.pragma('dart2js:noInline')
  static VerifyMessageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyMessageRequest>(create);
  static VerifyMessageRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get msg => $_getN(0);
  @$pb.TagNumber(1)
  set msg($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMsg() => $_has(0);
  @$pb.TagNumber(1)
  void clearMsg() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get signature => $_getSZ(1);
  @$pb.TagNumber(2)
  set signature($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSignature() => $_has(1);
  @$pb.TagNumber(2)
  void clearSignature() => clearField(2);
}

class VerifyMessageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyMessageResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubkey')
    ..hasRequiredFields = false
  ;

  VerifyMessageResponse._() : super();
  factory VerifyMessageResponse({
    $core.bool valid,
    $core.String pubkey,
  }) {
    final _result = create();
    if (valid != null) {
      _result.valid = valid;
    }
    if (pubkey != null) {
      _result.pubkey = pubkey;
    }
    return _result;
  }
  factory VerifyMessageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyMessageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyMessageResponse clone() => VerifyMessageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyMessageResponse copyWith(void Function(VerifyMessageResponse) updates) => super.copyWith((message) => updates(message as VerifyMessageResponse)) as VerifyMessageResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyMessageResponse create() => VerifyMessageResponse._();
  VerifyMessageResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyMessageResponse> createRepeated() => $pb.PbList<VerifyMessageResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyMessageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyMessageResponse>(create);
  static VerifyMessageResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get valid => $_getBF(0);
  @$pb.TagNumber(1)
  set valid($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValid() => $_has(0);
  @$pb.TagNumber(1)
  void clearValid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pubkey => $_getSZ(1);
  @$pb.TagNumber(2)
  set pubkey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubkey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubkey() => clearField(2);
}

class ConnectPeerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectPeerRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOM<LightningAddress>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addr', subBuilder: LightningAddress.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'perm')
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeout', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ConnectPeerRequest._() : super();
  factory ConnectPeerRequest({
    LightningAddress addr,
    $core.bool perm,
    $fixnum.Int64 timeout,
  }) {
    final _result = create();
    if (addr != null) {
      _result.addr = addr;
    }
    if (perm != null) {
      _result.perm = perm;
    }
    if (timeout != null) {
      _result.timeout = timeout;
    }
    return _result;
  }
  factory ConnectPeerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectPeerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectPeerRequest clone() => ConnectPeerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectPeerRequest copyWith(void Function(ConnectPeerRequest) updates) => super.copyWith((message) => updates(message as ConnectPeerRequest)) as ConnectPeerRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectPeerRequest create() => ConnectPeerRequest._();
  ConnectPeerRequest createEmptyInstance() => create();
  static $pb.PbList<ConnectPeerRequest> createRepeated() => $pb.PbList<ConnectPeerRequest>();
  @$core.pragma('dart2js:noInline')
  static ConnectPeerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectPeerRequest>(create);
  static ConnectPeerRequest _defaultInstance;

  @$pb.TagNumber(1)
  LightningAddress get addr => $_getN(0);
  @$pb.TagNumber(1)
  set addr(LightningAddress v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddr() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddr() => clearField(1);
  @$pb.TagNumber(1)
  LightningAddress ensureAddr() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get perm => $_getBF(1);
  @$pb.TagNumber(2)
  set perm($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPerm() => $_has(1);
  @$pb.TagNumber(2)
  void clearPerm() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get timeout => $_getI64(2);
  @$pb.TagNumber(3)
  set timeout($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTimeout() => $_has(2);
  @$pb.TagNumber(3)
  void clearTimeout() => clearField(3);
}

class ConnectPeerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConnectPeerResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ConnectPeerResponse._() : super();
  factory ConnectPeerResponse() => create();
  factory ConnectPeerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConnectPeerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConnectPeerResponse clone() => ConnectPeerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConnectPeerResponse copyWith(void Function(ConnectPeerResponse) updates) => super.copyWith((message) => updates(message as ConnectPeerResponse)) as ConnectPeerResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectPeerResponse create() => ConnectPeerResponse._();
  ConnectPeerResponse createEmptyInstance() => create();
  static $pb.PbList<ConnectPeerResponse> createRepeated() => $pb.PbList<ConnectPeerResponse>();
  @$core.pragma('dart2js:noInline')
  static ConnectPeerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConnectPeerResponse>(create);
  static ConnectPeerResponse _defaultInstance;
}

class DisconnectPeerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DisconnectPeerRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubKey')
    ..hasRequiredFields = false
  ;

  DisconnectPeerRequest._() : super();
  factory DisconnectPeerRequest({
    $core.String pubKey,
  }) {
    final _result = create();
    if (pubKey != null) {
      _result.pubKey = pubKey;
    }
    return _result;
  }
  factory DisconnectPeerRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DisconnectPeerRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DisconnectPeerRequest clone() => DisconnectPeerRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DisconnectPeerRequest copyWith(void Function(DisconnectPeerRequest) updates) => super.copyWith((message) => updates(message as DisconnectPeerRequest)) as DisconnectPeerRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DisconnectPeerRequest create() => DisconnectPeerRequest._();
  DisconnectPeerRequest createEmptyInstance() => create();
  static $pb.PbList<DisconnectPeerRequest> createRepeated() => $pb.PbList<DisconnectPeerRequest>();
  @$core.pragma('dart2js:noInline')
  static DisconnectPeerRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DisconnectPeerRequest>(create);
  static DisconnectPeerRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKey() => clearField(1);
}

class DisconnectPeerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DisconnectPeerResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DisconnectPeerResponse._() : super();
  factory DisconnectPeerResponse() => create();
  factory DisconnectPeerResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DisconnectPeerResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DisconnectPeerResponse clone() => DisconnectPeerResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DisconnectPeerResponse copyWith(void Function(DisconnectPeerResponse) updates) => super.copyWith((message) => updates(message as DisconnectPeerResponse)) as DisconnectPeerResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DisconnectPeerResponse create() => DisconnectPeerResponse._();
  DisconnectPeerResponse createEmptyInstance() => create();
  static $pb.PbList<DisconnectPeerResponse> createRepeated() => $pb.PbList<DisconnectPeerResponse>();
  @$core.pragma('dart2js:noInline')
  static DisconnectPeerResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DisconnectPeerResponse>(create);
  static DisconnectPeerResponse _defaultInstance;
}

class HTLC extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HTLC', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incoming')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hashLock', $pb.PbFieldType.OY)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expirationHeight', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htlcIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forwardingChannel', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forwardingHtlcIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  HTLC._() : super();
  factory HTLC({
    $core.bool incoming,
    $fixnum.Int64 amount,
    $core.List<$core.int> hashLock,
    $core.int expirationHeight,
    $fixnum.Int64 htlcIndex,
    $fixnum.Int64 forwardingChannel,
    $fixnum.Int64 forwardingHtlcIndex,
  }) {
    final _result = create();
    if (incoming != null) {
      _result.incoming = incoming;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (hashLock != null) {
      _result.hashLock = hashLock;
    }
    if (expirationHeight != null) {
      _result.expirationHeight = expirationHeight;
    }
    if (htlcIndex != null) {
      _result.htlcIndex = htlcIndex;
    }
    if (forwardingChannel != null) {
      _result.forwardingChannel = forwardingChannel;
    }
    if (forwardingHtlcIndex != null) {
      _result.forwardingHtlcIndex = forwardingHtlcIndex;
    }
    return _result;
  }
  factory HTLC.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HTLC.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HTLC clone() => HTLC()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HTLC copyWith(void Function(HTLC) updates) => super.copyWith((message) => updates(message as HTLC)) as HTLC; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HTLC create() => HTLC._();
  HTLC createEmptyInstance() => create();
  static $pb.PbList<HTLC> createRepeated() => $pb.PbList<HTLC>();
  @$core.pragma('dart2js:noInline')
  static HTLC getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HTLC>(create);
  static HTLC _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get incoming => $_getBF(0);
  @$pb.TagNumber(1)
  set incoming($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncoming() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncoming() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get hashLock => $_getN(2);
  @$pb.TagNumber(3)
  set hashLock($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasHashLock() => $_has(2);
  @$pb.TagNumber(3)
  void clearHashLock() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get expirationHeight => $_getIZ(3);
  @$pb.TagNumber(4)
  set expirationHeight($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasExpirationHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearExpirationHeight() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get htlcIndex => $_getI64(4);
  @$pb.TagNumber(5)
  set htlcIndex($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasHtlcIndex() => $_has(4);
  @$pb.TagNumber(5)
  void clearHtlcIndex() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get forwardingChannel => $_getI64(5);
  @$pb.TagNumber(6)
  set forwardingChannel($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasForwardingChannel() => $_has(5);
  @$pb.TagNumber(6)
  void clearForwardingChannel() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get forwardingHtlcIndex => $_getI64(6);
  @$pb.TagNumber(7)
  set forwardingHtlcIndex($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasForwardingHtlcIndex() => $_has(6);
  @$pb.TagNumber(7)
  void clearForwardingHtlcIndex() => clearField(7);
}

class ChannelConstraints extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelConstraints', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'csvDelay', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanReserveSat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dustLimitSat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxPendingAmtMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minHtlcMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxAcceptedHtlcs', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ChannelConstraints._() : super();
  factory ChannelConstraints({
    $core.int csvDelay,
    $fixnum.Int64 chanReserveSat,
    $fixnum.Int64 dustLimitSat,
    $fixnum.Int64 maxPendingAmtMsat,
    $fixnum.Int64 minHtlcMsat,
    $core.int maxAcceptedHtlcs,
  }) {
    final _result = create();
    if (csvDelay != null) {
      _result.csvDelay = csvDelay;
    }
    if (chanReserveSat != null) {
      _result.chanReserveSat = chanReserveSat;
    }
    if (dustLimitSat != null) {
      _result.dustLimitSat = dustLimitSat;
    }
    if (maxPendingAmtMsat != null) {
      _result.maxPendingAmtMsat = maxPendingAmtMsat;
    }
    if (minHtlcMsat != null) {
      _result.minHtlcMsat = minHtlcMsat;
    }
    if (maxAcceptedHtlcs != null) {
      _result.maxAcceptedHtlcs = maxAcceptedHtlcs;
    }
    return _result;
  }
  factory ChannelConstraints.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelConstraints.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelConstraints clone() => ChannelConstraints()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelConstraints copyWith(void Function(ChannelConstraints) updates) => super.copyWith((message) => updates(message as ChannelConstraints)) as ChannelConstraints; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelConstraints create() => ChannelConstraints._();
  ChannelConstraints createEmptyInstance() => create();
  static $pb.PbList<ChannelConstraints> createRepeated() => $pb.PbList<ChannelConstraints>();
  @$core.pragma('dart2js:noInline')
  static ChannelConstraints getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelConstraints>(create);
  static ChannelConstraints _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get csvDelay => $_getIZ(0);
  @$pb.TagNumber(1)
  set csvDelay($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCsvDelay() => $_has(0);
  @$pb.TagNumber(1)
  void clearCsvDelay() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get chanReserveSat => $_getI64(1);
  @$pb.TagNumber(2)
  set chanReserveSat($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChanReserveSat() => $_has(1);
  @$pb.TagNumber(2)
  void clearChanReserveSat() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get dustLimitSat => $_getI64(2);
  @$pb.TagNumber(3)
  set dustLimitSat($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasDustLimitSat() => $_has(2);
  @$pb.TagNumber(3)
  void clearDustLimitSat() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get maxPendingAmtMsat => $_getI64(3);
  @$pb.TagNumber(4)
  set maxPendingAmtMsat($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaxPendingAmtMsat() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaxPendingAmtMsat() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get minHtlcMsat => $_getI64(4);
  @$pb.TagNumber(5)
  set minHtlcMsat($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasMinHtlcMsat() => $_has(4);
  @$pb.TagNumber(5)
  void clearMinHtlcMsat() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get maxAcceptedHtlcs => $_getIZ(5);
  @$pb.TagNumber(6)
  set maxAcceptedHtlcs($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaxAcceptedHtlcs() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxAcceptedHtlcs() => clearField(6);
}

class Channel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Channel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'active')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remotePubkey')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelPoint')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'capacity')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localBalance')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteBalance')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitFee')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitWeight')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feePerKw')
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unsettledBalance')
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSatoshisSent')
    ..aInt64(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalSatoshisReceived')
    ..a<$fixnum.Int64>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numUpdates', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<HTLC>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingHtlcs', $pb.PbFieldType.PM, subBuilder: HTLC.create)
    ..a<$core.int>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'csvDelay', $pb.PbFieldType.OU3)
    ..aOB(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'private')
    ..aOB(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initiator')
    ..aOS(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanStatusFlags')
    ..aInt64(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localChanReserveSat')
    ..aInt64(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteChanReserveSat')
    ..aOB(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'staticRemoteKey')
    ..aInt64(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lifetime')
    ..aInt64(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uptime')
    ..aOS(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeAddress')
    ..e<CommitmentType>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitmentType', $pb.PbFieldType.OE, defaultOrMaker: CommitmentType.LEGACY, valueOf: CommitmentType.valueOf, enumValues: CommitmentType.values)
    ..a<$fixnum.Int64>(27, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pushAmountSat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(28, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thawHeight', $pb.PbFieldType.OU3)
    ..aOM<ChannelConstraints>(29, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localConstraints', subBuilder: ChannelConstraints.create)
    ..aOM<ChannelConstraints>(30, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteConstraints', subBuilder: ChannelConstraints.create)
    ..hasRequiredFields = false
  ;

  Channel._() : super();
  factory Channel({
    $core.bool active,
    $core.String remotePubkey,
    $core.String channelPoint,
    $fixnum.Int64 chanId,
    $fixnum.Int64 capacity,
    $fixnum.Int64 localBalance,
    $fixnum.Int64 remoteBalance,
    $fixnum.Int64 commitFee,
    $fixnum.Int64 commitWeight,
    $fixnum.Int64 feePerKw,
    $fixnum.Int64 unsettledBalance,
    $fixnum.Int64 totalSatoshisSent,
    $fixnum.Int64 totalSatoshisReceived,
    $fixnum.Int64 numUpdates,
    $core.Iterable<HTLC> pendingHtlcs,
  @$core.Deprecated('This field is deprecated.')
    $core.int csvDelay,
    $core.bool private,
    $core.bool initiator,
    $core.String chanStatusFlags,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 localChanReserveSat,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 remoteChanReserveSat,
  @$core.Deprecated('This field is deprecated.')
    $core.bool staticRemoteKey,
    $fixnum.Int64 lifetime,
    $fixnum.Int64 uptime,
    $core.String closeAddress,
    CommitmentType commitmentType,
    $fixnum.Int64 pushAmountSat,
    $core.int thawHeight,
    ChannelConstraints localConstraints,
    ChannelConstraints remoteConstraints,
  }) {
    final _result = create();
    if (active != null) {
      _result.active = active;
    }
    if (remotePubkey != null) {
      _result.remotePubkey = remotePubkey;
    }
    if (channelPoint != null) {
      _result.channelPoint = channelPoint;
    }
    if (chanId != null) {
      _result.chanId = chanId;
    }
    if (capacity != null) {
      _result.capacity = capacity;
    }
    if (localBalance != null) {
      _result.localBalance = localBalance;
    }
    if (remoteBalance != null) {
      _result.remoteBalance = remoteBalance;
    }
    if (commitFee != null) {
      _result.commitFee = commitFee;
    }
    if (commitWeight != null) {
      _result.commitWeight = commitWeight;
    }
    if (feePerKw != null) {
      _result.feePerKw = feePerKw;
    }
    if (unsettledBalance != null) {
      _result.unsettledBalance = unsettledBalance;
    }
    if (totalSatoshisSent != null) {
      _result.totalSatoshisSent = totalSatoshisSent;
    }
    if (totalSatoshisReceived != null) {
      _result.totalSatoshisReceived = totalSatoshisReceived;
    }
    if (numUpdates != null) {
      _result.numUpdates = numUpdates;
    }
    if (pendingHtlcs != null) {
      _result.pendingHtlcs.addAll(pendingHtlcs);
    }
    if (csvDelay != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.csvDelay = csvDelay;
    }
    if (private != null) {
      _result.private = private;
    }
    if (initiator != null) {
      _result.initiator = initiator;
    }
    if (chanStatusFlags != null) {
      _result.chanStatusFlags = chanStatusFlags;
    }
    if (localChanReserveSat != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.localChanReserveSat = localChanReserveSat;
    }
    if (remoteChanReserveSat != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.remoteChanReserveSat = remoteChanReserveSat;
    }
    if (staticRemoteKey != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.staticRemoteKey = staticRemoteKey;
    }
    if (lifetime != null) {
      _result.lifetime = lifetime;
    }
    if (uptime != null) {
      _result.uptime = uptime;
    }
    if (closeAddress != null) {
      _result.closeAddress = closeAddress;
    }
    if (commitmentType != null) {
      _result.commitmentType = commitmentType;
    }
    if (pushAmountSat != null) {
      _result.pushAmountSat = pushAmountSat;
    }
    if (thawHeight != null) {
      _result.thawHeight = thawHeight;
    }
    if (localConstraints != null) {
      _result.localConstraints = localConstraints;
    }
    if (remoteConstraints != null) {
      _result.remoteConstraints = remoteConstraints;
    }
    return _result;
  }
  factory Channel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Channel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Channel clone() => Channel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Channel copyWith(void Function(Channel) updates) => super.copyWith((message) => updates(message as Channel)) as Channel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Channel create() => Channel._();
  Channel createEmptyInstance() => create();
  static $pb.PbList<Channel> createRepeated() => $pb.PbList<Channel>();
  @$core.pragma('dart2js:noInline')
  static Channel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Channel>(create);
  static Channel _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get active => $_getBF(0);
  @$pb.TagNumber(1)
  set active($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasActive() => $_has(0);
  @$pb.TagNumber(1)
  void clearActive() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get remotePubkey => $_getSZ(1);
  @$pb.TagNumber(2)
  set remotePubkey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemotePubkey() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemotePubkey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get channelPoint => $_getSZ(2);
  @$pb.TagNumber(3)
  set channelPoint($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannelPoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearChannelPoint() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get chanId => $_getI64(3);
  @$pb.TagNumber(4)
  set chanId($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasChanId() => $_has(3);
  @$pb.TagNumber(4)
  void clearChanId() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get capacity => $_getI64(4);
  @$pb.TagNumber(5)
  set capacity($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCapacity() => $_has(4);
  @$pb.TagNumber(5)
  void clearCapacity() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get localBalance => $_getI64(5);
  @$pb.TagNumber(6)
  set localBalance($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLocalBalance() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocalBalance() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get remoteBalance => $_getI64(6);
  @$pb.TagNumber(7)
  set remoteBalance($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRemoteBalance() => $_has(6);
  @$pb.TagNumber(7)
  void clearRemoteBalance() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get commitFee => $_getI64(7);
  @$pb.TagNumber(8)
  set commitFee($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasCommitFee() => $_has(7);
  @$pb.TagNumber(8)
  void clearCommitFee() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get commitWeight => $_getI64(8);
  @$pb.TagNumber(9)
  set commitWeight($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCommitWeight() => $_has(8);
  @$pb.TagNumber(9)
  void clearCommitWeight() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get feePerKw => $_getI64(9);
  @$pb.TagNumber(10)
  set feePerKw($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasFeePerKw() => $_has(9);
  @$pb.TagNumber(10)
  void clearFeePerKw() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get unsettledBalance => $_getI64(10);
  @$pb.TagNumber(11)
  set unsettledBalance($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasUnsettledBalance() => $_has(10);
  @$pb.TagNumber(11)
  void clearUnsettledBalance() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get totalSatoshisSent => $_getI64(11);
  @$pb.TagNumber(12)
  set totalSatoshisSent($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasTotalSatoshisSent() => $_has(11);
  @$pb.TagNumber(12)
  void clearTotalSatoshisSent() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get totalSatoshisReceived => $_getI64(12);
  @$pb.TagNumber(13)
  set totalSatoshisReceived($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(13)
  $core.bool hasTotalSatoshisReceived() => $_has(12);
  @$pb.TagNumber(13)
  void clearTotalSatoshisReceived() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get numUpdates => $_getI64(13);
  @$pb.TagNumber(14)
  set numUpdates($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(14)
  $core.bool hasNumUpdates() => $_has(13);
  @$pb.TagNumber(14)
  void clearNumUpdates() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<HTLC> get pendingHtlcs => $_getList(14);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(16)
  $core.int get csvDelay => $_getIZ(15);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(16)
  set csvDelay($core.int v) { $_setUnsignedInt32(15, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(16)
  $core.bool hasCsvDelay() => $_has(15);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(16)
  void clearCsvDelay() => clearField(16);

  @$pb.TagNumber(17)
  $core.bool get private => $_getBF(16);
  @$pb.TagNumber(17)
  set private($core.bool v) { $_setBool(16, v); }
  @$pb.TagNumber(17)
  $core.bool hasPrivate() => $_has(16);
  @$pb.TagNumber(17)
  void clearPrivate() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get initiator => $_getBF(17);
  @$pb.TagNumber(18)
  set initiator($core.bool v) { $_setBool(17, v); }
  @$pb.TagNumber(18)
  $core.bool hasInitiator() => $_has(17);
  @$pb.TagNumber(18)
  void clearInitiator() => clearField(18);

  @$pb.TagNumber(19)
  $core.String get chanStatusFlags => $_getSZ(18);
  @$pb.TagNumber(19)
  set chanStatusFlags($core.String v) { $_setString(18, v); }
  @$pb.TagNumber(19)
  $core.bool hasChanStatusFlags() => $_has(18);
  @$pb.TagNumber(19)
  void clearChanStatusFlags() => clearField(19);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(20)
  $fixnum.Int64 get localChanReserveSat => $_getI64(19);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(20)
  set localChanReserveSat($fixnum.Int64 v) { $_setInt64(19, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(20)
  $core.bool hasLocalChanReserveSat() => $_has(19);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(20)
  void clearLocalChanReserveSat() => clearField(20);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  $fixnum.Int64 get remoteChanReserveSat => $_getI64(20);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  set remoteChanReserveSat($fixnum.Int64 v) { $_setInt64(20, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  $core.bool hasRemoteChanReserveSat() => $_has(20);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(21)
  void clearRemoteChanReserveSat() => clearField(21);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(22)
  $core.bool get staticRemoteKey => $_getBF(21);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(22)
  set staticRemoteKey($core.bool v) { $_setBool(21, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(22)
  $core.bool hasStaticRemoteKey() => $_has(21);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(22)
  void clearStaticRemoteKey() => clearField(22);

  @$pb.TagNumber(23)
  $fixnum.Int64 get lifetime => $_getI64(22);
  @$pb.TagNumber(23)
  set lifetime($fixnum.Int64 v) { $_setInt64(22, v); }
  @$pb.TagNumber(23)
  $core.bool hasLifetime() => $_has(22);
  @$pb.TagNumber(23)
  void clearLifetime() => clearField(23);

  @$pb.TagNumber(24)
  $fixnum.Int64 get uptime => $_getI64(23);
  @$pb.TagNumber(24)
  set uptime($fixnum.Int64 v) { $_setInt64(23, v); }
  @$pb.TagNumber(24)
  $core.bool hasUptime() => $_has(23);
  @$pb.TagNumber(24)
  void clearUptime() => clearField(24);

  @$pb.TagNumber(25)
  $core.String get closeAddress => $_getSZ(24);
  @$pb.TagNumber(25)
  set closeAddress($core.String v) { $_setString(24, v); }
  @$pb.TagNumber(25)
  $core.bool hasCloseAddress() => $_has(24);
  @$pb.TagNumber(25)
  void clearCloseAddress() => clearField(25);

  @$pb.TagNumber(26)
  CommitmentType get commitmentType => $_getN(25);
  @$pb.TagNumber(26)
  set commitmentType(CommitmentType v) { setField(26, v); }
  @$pb.TagNumber(26)
  $core.bool hasCommitmentType() => $_has(25);
  @$pb.TagNumber(26)
  void clearCommitmentType() => clearField(26);

  @$pb.TagNumber(27)
  $fixnum.Int64 get pushAmountSat => $_getI64(26);
  @$pb.TagNumber(27)
  set pushAmountSat($fixnum.Int64 v) { $_setInt64(26, v); }
  @$pb.TagNumber(27)
  $core.bool hasPushAmountSat() => $_has(26);
  @$pb.TagNumber(27)
  void clearPushAmountSat() => clearField(27);

  @$pb.TagNumber(28)
  $core.int get thawHeight => $_getIZ(27);
  @$pb.TagNumber(28)
  set thawHeight($core.int v) { $_setUnsignedInt32(27, v); }
  @$pb.TagNumber(28)
  $core.bool hasThawHeight() => $_has(27);
  @$pb.TagNumber(28)
  void clearThawHeight() => clearField(28);

  @$pb.TagNumber(29)
  ChannelConstraints get localConstraints => $_getN(28);
  @$pb.TagNumber(29)
  set localConstraints(ChannelConstraints v) { setField(29, v); }
  @$pb.TagNumber(29)
  $core.bool hasLocalConstraints() => $_has(28);
  @$pb.TagNumber(29)
  void clearLocalConstraints() => clearField(29);
  @$pb.TagNumber(29)
  ChannelConstraints ensureLocalConstraints() => $_ensure(28);

  @$pb.TagNumber(30)
  ChannelConstraints get remoteConstraints => $_getN(29);
  @$pb.TagNumber(30)
  set remoteConstraints(ChannelConstraints v) { setField(30, v); }
  @$pb.TagNumber(30)
  $core.bool hasRemoteConstraints() => $_has(29);
  @$pb.TagNumber(30)
  void clearRemoteConstraints() => clearField(30);
  @$pb.TagNumber(30)
  ChannelConstraints ensureRemoteConstraints() => $_ensure(29);
}

class ListChannelsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListChannelsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'activeOnly')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inactiveOnly')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'publicOnly')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'privateOnly')
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peer', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ListChannelsRequest._() : super();
  factory ListChannelsRequest({
    $core.bool activeOnly,
    $core.bool inactiveOnly,
    $core.bool publicOnly,
    $core.bool privateOnly,
    $core.List<$core.int> peer,
  }) {
    final _result = create();
    if (activeOnly != null) {
      _result.activeOnly = activeOnly;
    }
    if (inactiveOnly != null) {
      _result.inactiveOnly = inactiveOnly;
    }
    if (publicOnly != null) {
      _result.publicOnly = publicOnly;
    }
    if (privateOnly != null) {
      _result.privateOnly = privateOnly;
    }
    if (peer != null) {
      _result.peer = peer;
    }
    return _result;
  }
  factory ListChannelsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListChannelsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListChannelsRequest clone() => ListChannelsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListChannelsRequest copyWith(void Function(ListChannelsRequest) updates) => super.copyWith((message) => updates(message as ListChannelsRequest)) as ListChannelsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChannelsRequest create() => ListChannelsRequest._();
  ListChannelsRequest createEmptyInstance() => create();
  static $pb.PbList<ListChannelsRequest> createRepeated() => $pb.PbList<ListChannelsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListChannelsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListChannelsRequest>(create);
  static ListChannelsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get activeOnly => $_getBF(0);
  @$pb.TagNumber(1)
  set activeOnly($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasActiveOnly() => $_has(0);
  @$pb.TagNumber(1)
  void clearActiveOnly() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get inactiveOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set inactiveOnly($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasInactiveOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearInactiveOnly() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get publicOnly => $_getBF(2);
  @$pb.TagNumber(3)
  set publicOnly($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPublicOnly() => $_has(2);
  @$pb.TagNumber(3)
  void clearPublicOnly() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get privateOnly => $_getBF(3);
  @$pb.TagNumber(4)
  set privateOnly($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasPrivateOnly() => $_has(3);
  @$pb.TagNumber(4)
  void clearPrivateOnly() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get peer => $_getN(4);
  @$pb.TagNumber(5)
  set peer($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPeer() => $_has(4);
  @$pb.TagNumber(5)
  void clearPeer() => clearField(5);
}

class ListChannelsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListChannelsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<Channel>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: Channel.create)
    ..hasRequiredFields = false
  ;

  ListChannelsResponse._() : super();
  factory ListChannelsResponse({
    $core.Iterable<Channel> channels,
  }) {
    final _result = create();
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    return _result;
  }
  factory ListChannelsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListChannelsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListChannelsResponse clone() => ListChannelsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListChannelsResponse copyWith(void Function(ListChannelsResponse) updates) => super.copyWith((message) => updates(message as ListChannelsResponse)) as ListChannelsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChannelsResponse create() => ListChannelsResponse._();
  ListChannelsResponse createEmptyInstance() => create();
  static $pb.PbList<ListChannelsResponse> createRepeated() => $pb.PbList<ListChannelsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListChannelsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListChannelsResponse>(create);
  static ListChannelsResponse _defaultInstance;

  @$pb.TagNumber(11)
  $core.List<Channel> get channels => $_getList(0);
}

class ChannelCloseSummary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelCloseSummary', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelPoint')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chainHash')
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closingTxHash')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remotePubkey')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'capacity')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeHeight', $pb.PbFieldType.OU3)
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'settledBalance')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeLockedBalance')
    ..e<ChannelCloseSummary_ClosureType>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeType', $pb.PbFieldType.OE, defaultOrMaker: ChannelCloseSummary_ClosureType.COOPERATIVE_CLOSE, valueOf: ChannelCloseSummary_ClosureType.valueOf, enumValues: ChannelCloseSummary_ClosureType.values)
    ..e<Initiator>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openInitiator', $pb.PbFieldType.OE, defaultOrMaker: Initiator.INITIATOR_UNKNOWN, valueOf: Initiator.valueOf, enumValues: Initiator.values)
    ..e<Initiator>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeInitiator', $pb.PbFieldType.OE, defaultOrMaker: Initiator.INITIATOR_UNKNOWN, valueOf: Initiator.valueOf, enumValues: Initiator.values)
    ..pc<Resolution>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resolutions', $pb.PbFieldType.PM, subBuilder: Resolution.create)
    ..hasRequiredFields = false
  ;

  ChannelCloseSummary._() : super();
  factory ChannelCloseSummary({
    $core.String channelPoint,
    $fixnum.Int64 chanId,
    $core.String chainHash,
    $core.String closingTxHash,
    $core.String remotePubkey,
    $fixnum.Int64 capacity,
    $core.int closeHeight,
    $fixnum.Int64 settledBalance,
    $fixnum.Int64 timeLockedBalance,
    ChannelCloseSummary_ClosureType closeType,
    Initiator openInitiator,
    Initiator closeInitiator,
    $core.Iterable<Resolution> resolutions,
  }) {
    final _result = create();
    if (channelPoint != null) {
      _result.channelPoint = channelPoint;
    }
    if (chanId != null) {
      _result.chanId = chanId;
    }
    if (chainHash != null) {
      _result.chainHash = chainHash;
    }
    if (closingTxHash != null) {
      _result.closingTxHash = closingTxHash;
    }
    if (remotePubkey != null) {
      _result.remotePubkey = remotePubkey;
    }
    if (capacity != null) {
      _result.capacity = capacity;
    }
    if (closeHeight != null) {
      _result.closeHeight = closeHeight;
    }
    if (settledBalance != null) {
      _result.settledBalance = settledBalance;
    }
    if (timeLockedBalance != null) {
      _result.timeLockedBalance = timeLockedBalance;
    }
    if (closeType != null) {
      _result.closeType = closeType;
    }
    if (openInitiator != null) {
      _result.openInitiator = openInitiator;
    }
    if (closeInitiator != null) {
      _result.closeInitiator = closeInitiator;
    }
    if (resolutions != null) {
      _result.resolutions.addAll(resolutions);
    }
    return _result;
  }
  factory ChannelCloseSummary.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelCloseSummary.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelCloseSummary clone() => ChannelCloseSummary()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelCloseSummary copyWith(void Function(ChannelCloseSummary) updates) => super.copyWith((message) => updates(message as ChannelCloseSummary)) as ChannelCloseSummary; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelCloseSummary create() => ChannelCloseSummary._();
  ChannelCloseSummary createEmptyInstance() => create();
  static $pb.PbList<ChannelCloseSummary> createRepeated() => $pb.PbList<ChannelCloseSummary>();
  @$core.pragma('dart2js:noInline')
  static ChannelCloseSummary getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelCloseSummary>(create);
  static ChannelCloseSummary _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get channelPoint => $_getSZ(0);
  @$pb.TagNumber(1)
  set channelPoint($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelPoint() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get chanId => $_getI64(1);
  @$pb.TagNumber(2)
  set chanId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearChanId() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get chainHash => $_getSZ(2);
  @$pb.TagNumber(3)
  set chainHash($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChainHash() => $_has(2);
  @$pb.TagNumber(3)
  void clearChainHash() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get closingTxHash => $_getSZ(3);
  @$pb.TagNumber(4)
  set closingTxHash($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasClosingTxHash() => $_has(3);
  @$pb.TagNumber(4)
  void clearClosingTxHash() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get remotePubkey => $_getSZ(4);
  @$pb.TagNumber(5)
  set remotePubkey($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRemotePubkey() => $_has(4);
  @$pb.TagNumber(5)
  void clearRemotePubkey() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get capacity => $_getI64(5);
  @$pb.TagNumber(6)
  set capacity($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCapacity() => $_has(5);
  @$pb.TagNumber(6)
  void clearCapacity() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get closeHeight => $_getIZ(6);
  @$pb.TagNumber(7)
  set closeHeight($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasCloseHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearCloseHeight() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get settledBalance => $_getI64(7);
  @$pb.TagNumber(8)
  set settledBalance($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasSettledBalance() => $_has(7);
  @$pb.TagNumber(8)
  void clearSettledBalance() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get timeLockedBalance => $_getI64(8);
  @$pb.TagNumber(9)
  set timeLockedBalance($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTimeLockedBalance() => $_has(8);
  @$pb.TagNumber(9)
  void clearTimeLockedBalance() => clearField(9);

  @$pb.TagNumber(10)
  ChannelCloseSummary_ClosureType get closeType => $_getN(9);
  @$pb.TagNumber(10)
  set closeType(ChannelCloseSummary_ClosureType v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasCloseType() => $_has(9);
  @$pb.TagNumber(10)
  void clearCloseType() => clearField(10);

  @$pb.TagNumber(11)
  Initiator get openInitiator => $_getN(10);
  @$pb.TagNumber(11)
  set openInitiator(Initiator v) { setField(11, v); }
  @$pb.TagNumber(11)
  $core.bool hasOpenInitiator() => $_has(10);
  @$pb.TagNumber(11)
  void clearOpenInitiator() => clearField(11);

  @$pb.TagNumber(12)
  Initiator get closeInitiator => $_getN(11);
  @$pb.TagNumber(12)
  set closeInitiator(Initiator v) { setField(12, v); }
  @$pb.TagNumber(12)
  $core.bool hasCloseInitiator() => $_has(11);
  @$pb.TagNumber(12)
  void clearCloseInitiator() => clearField(12);

  @$pb.TagNumber(13)
  $core.List<Resolution> get resolutions => $_getList(12);
}

class Resolution extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Resolution', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..e<ResolutionType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resolutionType', $pb.PbFieldType.OE, defaultOrMaker: ResolutionType.TYPE_UNKNOWN, valueOf: ResolutionType.valueOf, enumValues: ResolutionType.values)
    ..e<ResolutionOutcome>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outcome', $pb.PbFieldType.OE, defaultOrMaker: ResolutionOutcome.OUTCOME_UNKNOWN, valueOf: ResolutionOutcome.valueOf, enumValues: ResolutionOutcome.values)
    ..aOM<OutPoint>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outpoint', subBuilder: OutPoint.create)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amountSat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sweepTxid')
    ..hasRequiredFields = false
  ;

  Resolution._() : super();
  factory Resolution({
    ResolutionType resolutionType,
    ResolutionOutcome outcome,
    OutPoint outpoint,
    $fixnum.Int64 amountSat,
    $core.String sweepTxid,
  }) {
    final _result = create();
    if (resolutionType != null) {
      _result.resolutionType = resolutionType;
    }
    if (outcome != null) {
      _result.outcome = outcome;
    }
    if (outpoint != null) {
      _result.outpoint = outpoint;
    }
    if (amountSat != null) {
      _result.amountSat = amountSat;
    }
    if (sweepTxid != null) {
      _result.sweepTxid = sweepTxid;
    }
    return _result;
  }
  factory Resolution.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Resolution.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Resolution clone() => Resolution()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Resolution copyWith(void Function(Resolution) updates) => super.copyWith((message) => updates(message as Resolution)) as Resolution; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Resolution create() => Resolution._();
  Resolution createEmptyInstance() => create();
  static $pb.PbList<Resolution> createRepeated() => $pb.PbList<Resolution>();
  @$core.pragma('dart2js:noInline')
  static Resolution getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Resolution>(create);
  static Resolution _defaultInstance;

  @$pb.TagNumber(1)
  ResolutionType get resolutionType => $_getN(0);
  @$pb.TagNumber(1)
  set resolutionType(ResolutionType v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasResolutionType() => $_has(0);
  @$pb.TagNumber(1)
  void clearResolutionType() => clearField(1);

  @$pb.TagNumber(2)
  ResolutionOutcome get outcome => $_getN(1);
  @$pb.TagNumber(2)
  set outcome(ResolutionOutcome v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasOutcome() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutcome() => clearField(2);

  @$pb.TagNumber(3)
  OutPoint get outpoint => $_getN(2);
  @$pb.TagNumber(3)
  set outpoint(OutPoint v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutpoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutpoint() => clearField(3);
  @$pb.TagNumber(3)
  OutPoint ensureOutpoint() => $_ensure(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get amountSat => $_getI64(3);
  @$pb.TagNumber(4)
  set amountSat($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAmountSat() => $_has(3);
  @$pb.TagNumber(4)
  void clearAmountSat() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get sweepTxid => $_getSZ(4);
  @$pb.TagNumber(5)
  set sweepTxid($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasSweepTxid() => $_has(4);
  @$pb.TagNumber(5)
  void clearSweepTxid() => clearField(5);
}

class ClosedChannelsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClosedChannelsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cooperative')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localForce')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteForce')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'breach')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fundingCanceled')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'abandoned')
    ..hasRequiredFields = false
  ;

  ClosedChannelsRequest._() : super();
  factory ClosedChannelsRequest({
    $core.bool cooperative,
    $core.bool localForce,
    $core.bool remoteForce,
    $core.bool breach,
    $core.bool fundingCanceled,
    $core.bool abandoned,
  }) {
    final _result = create();
    if (cooperative != null) {
      _result.cooperative = cooperative;
    }
    if (localForce != null) {
      _result.localForce = localForce;
    }
    if (remoteForce != null) {
      _result.remoteForce = remoteForce;
    }
    if (breach != null) {
      _result.breach = breach;
    }
    if (fundingCanceled != null) {
      _result.fundingCanceled = fundingCanceled;
    }
    if (abandoned != null) {
      _result.abandoned = abandoned;
    }
    return _result;
  }
  factory ClosedChannelsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClosedChannelsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClosedChannelsRequest clone() => ClosedChannelsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClosedChannelsRequest copyWith(void Function(ClosedChannelsRequest) updates) => super.copyWith((message) => updates(message as ClosedChannelsRequest)) as ClosedChannelsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClosedChannelsRequest create() => ClosedChannelsRequest._();
  ClosedChannelsRequest createEmptyInstance() => create();
  static $pb.PbList<ClosedChannelsRequest> createRepeated() => $pb.PbList<ClosedChannelsRequest>();
  @$core.pragma('dart2js:noInline')
  static ClosedChannelsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClosedChannelsRequest>(create);
  static ClosedChannelsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get cooperative => $_getBF(0);
  @$pb.TagNumber(1)
  set cooperative($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasCooperative() => $_has(0);
  @$pb.TagNumber(1)
  void clearCooperative() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get localForce => $_getBF(1);
  @$pb.TagNumber(2)
  set localForce($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLocalForce() => $_has(1);
  @$pb.TagNumber(2)
  void clearLocalForce() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get remoteForce => $_getBF(2);
  @$pb.TagNumber(3)
  set remoteForce($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRemoteForce() => $_has(2);
  @$pb.TagNumber(3)
  void clearRemoteForce() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get breach => $_getBF(3);
  @$pb.TagNumber(4)
  set breach($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasBreach() => $_has(3);
  @$pb.TagNumber(4)
  void clearBreach() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get fundingCanceled => $_getBF(4);
  @$pb.TagNumber(5)
  set fundingCanceled($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasFundingCanceled() => $_has(4);
  @$pb.TagNumber(5)
  void clearFundingCanceled() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get abandoned => $_getBF(5);
  @$pb.TagNumber(6)
  set abandoned($core.bool v) { $_setBool(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAbandoned() => $_has(5);
  @$pb.TagNumber(6)
  void clearAbandoned() => clearField(6);
}

class ClosedChannelsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClosedChannelsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<ChannelCloseSummary>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: ChannelCloseSummary.create)
    ..hasRequiredFields = false
  ;

  ClosedChannelsResponse._() : super();
  factory ClosedChannelsResponse({
    $core.Iterable<ChannelCloseSummary> channels,
  }) {
    final _result = create();
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    return _result;
  }
  factory ClosedChannelsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClosedChannelsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClosedChannelsResponse clone() => ClosedChannelsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClosedChannelsResponse copyWith(void Function(ClosedChannelsResponse) updates) => super.copyWith((message) => updates(message as ClosedChannelsResponse)) as ClosedChannelsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClosedChannelsResponse create() => ClosedChannelsResponse._();
  ClosedChannelsResponse createEmptyInstance() => create();
  static $pb.PbList<ClosedChannelsResponse> createRepeated() => $pb.PbList<ClosedChannelsResponse>();
  @$core.pragma('dart2js:noInline')
  static ClosedChannelsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClosedChannelsResponse>(create);
  static ClosedChannelsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChannelCloseSummary> get channels => $_getList(0);
}

class Peer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Peer', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubKey')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'address')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytesSent', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bytesRecv', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satSent')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satRecv')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inbound')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pingTime')
    ..e<Peer_SyncType>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syncType', $pb.PbFieldType.OE, defaultOrMaker: Peer_SyncType.UNKNOWN_SYNC, valueOf: Peer_SyncType.valueOf, enumValues: Peer_SyncType.values)
    ..m<$core.int, Feature>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'features', entryClassName: 'Peer.FeaturesEntry', keyFieldType: $pb.PbFieldType.OU3, valueFieldType: $pb.PbFieldType.OM, valueCreator: Feature.create, packageName: const $pb.PackageName('lnrpc'))
    ..pc<TimestampedError>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'errors', $pb.PbFieldType.PM, subBuilder: TimestampedError.create)
    ..a<$core.int>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flapCount', $pb.PbFieldType.O3)
    ..aInt64(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastFlapNs')
    ..hasRequiredFields = false
  ;

  Peer._() : super();
  factory Peer({
    $core.String pubKey,
    $core.String address,
    $fixnum.Int64 bytesSent,
    $fixnum.Int64 bytesRecv,
    $fixnum.Int64 satSent,
    $fixnum.Int64 satRecv,
    $core.bool inbound,
    $fixnum.Int64 pingTime,
    Peer_SyncType syncType,
    $core.Map<$core.int, Feature> features,
    $core.Iterable<TimestampedError> errors,
    $core.int flapCount,
    $fixnum.Int64 lastFlapNs,
  }) {
    final _result = create();
    if (pubKey != null) {
      _result.pubKey = pubKey;
    }
    if (address != null) {
      _result.address = address;
    }
    if (bytesSent != null) {
      _result.bytesSent = bytesSent;
    }
    if (bytesRecv != null) {
      _result.bytesRecv = bytesRecv;
    }
    if (satSent != null) {
      _result.satSent = satSent;
    }
    if (satRecv != null) {
      _result.satRecv = satRecv;
    }
    if (inbound != null) {
      _result.inbound = inbound;
    }
    if (pingTime != null) {
      _result.pingTime = pingTime;
    }
    if (syncType != null) {
      _result.syncType = syncType;
    }
    if (features != null) {
      _result.features.addAll(features);
    }
    if (errors != null) {
      _result.errors.addAll(errors);
    }
    if (flapCount != null) {
      _result.flapCount = flapCount;
    }
    if (lastFlapNs != null) {
      _result.lastFlapNs = lastFlapNs;
    }
    return _result;
  }
  factory Peer.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Peer.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Peer clone() => Peer()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Peer copyWith(void Function(Peer) updates) => super.copyWith((message) => updates(message as Peer)) as Peer; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Peer create() => Peer._();
  Peer createEmptyInstance() => create();
  static $pb.PbList<Peer> createRepeated() => $pb.PbList<Peer>();
  @$core.pragma('dart2js:noInline')
  static Peer getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Peer>(create);
  static Peer _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKey() => clearField(1);

  @$pb.TagNumber(3)
  $core.String get address => $_getSZ(1);
  @$pb.TagNumber(3)
  set address($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasAddress() => $_has(1);
  @$pb.TagNumber(3)
  void clearAddress() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get bytesSent => $_getI64(2);
  @$pb.TagNumber(4)
  set bytesSent($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasBytesSent() => $_has(2);
  @$pb.TagNumber(4)
  void clearBytesSent() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get bytesRecv => $_getI64(3);
  @$pb.TagNumber(5)
  set bytesRecv($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasBytesRecv() => $_has(3);
  @$pb.TagNumber(5)
  void clearBytesRecv() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get satSent => $_getI64(4);
  @$pb.TagNumber(6)
  set satSent($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasSatSent() => $_has(4);
  @$pb.TagNumber(6)
  void clearSatSent() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get satRecv => $_getI64(5);
  @$pb.TagNumber(7)
  set satRecv($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasSatRecv() => $_has(5);
  @$pb.TagNumber(7)
  void clearSatRecv() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get inbound => $_getBF(6);
  @$pb.TagNumber(8)
  set inbound($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasInbound() => $_has(6);
  @$pb.TagNumber(8)
  void clearInbound() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get pingTime => $_getI64(7);
  @$pb.TagNumber(9)
  set pingTime($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasPingTime() => $_has(7);
  @$pb.TagNumber(9)
  void clearPingTime() => clearField(9);

  @$pb.TagNumber(10)
  Peer_SyncType get syncType => $_getN(8);
  @$pb.TagNumber(10)
  set syncType(Peer_SyncType v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasSyncType() => $_has(8);
  @$pb.TagNumber(10)
  void clearSyncType() => clearField(10);

  @$pb.TagNumber(11)
  $core.Map<$core.int, Feature> get features => $_getMap(9);

  @$pb.TagNumber(12)
  $core.List<TimestampedError> get errors => $_getList(10);

  @$pb.TagNumber(13)
  $core.int get flapCount => $_getIZ(11);
  @$pb.TagNumber(13)
  set flapCount($core.int v) { $_setSignedInt32(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasFlapCount() => $_has(11);
  @$pb.TagNumber(13)
  void clearFlapCount() => clearField(13);

  @$pb.TagNumber(14)
  $fixnum.Int64 get lastFlapNs => $_getI64(12);
  @$pb.TagNumber(14)
  set lastFlapNs($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasLastFlapNs() => $_has(12);
  @$pb.TagNumber(14)
  void clearLastFlapNs() => clearField(14);
}

class TimestampedError extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'TimestampedError', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'error')
    ..hasRequiredFields = false
  ;

  TimestampedError._() : super();
  factory TimestampedError({
    $fixnum.Int64 timestamp,
    $core.String error,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (error != null) {
      _result.error = error;
    }
    return _result;
  }
  factory TimestampedError.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory TimestampedError.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  TimestampedError clone() => TimestampedError()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  TimestampedError copyWith(void Function(TimestampedError) updates) => super.copyWith((message) => updates(message as TimestampedError)) as TimestampedError; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TimestampedError create() => TimestampedError._();
  TimestampedError createEmptyInstance() => create();
  static $pb.PbList<TimestampedError> createRepeated() => $pb.PbList<TimestampedError>();
  @$core.pragma('dart2js:noInline')
  static TimestampedError getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<TimestampedError>(create);
  static TimestampedError _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get error => $_getSZ(1);
  @$pb.TagNumber(2)
  set error($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasError() => $_has(1);
  @$pb.TagNumber(2)
  void clearError() => clearField(2);
}

class ListPeersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPeersRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'latestError')
    ..hasRequiredFields = false
  ;

  ListPeersRequest._() : super();
  factory ListPeersRequest({
    $core.bool latestError,
  }) {
    final _result = create();
    if (latestError != null) {
      _result.latestError = latestError;
    }
    return _result;
  }
  factory ListPeersRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPeersRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPeersRequest clone() => ListPeersRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPeersRequest copyWith(void Function(ListPeersRequest) updates) => super.copyWith((message) => updates(message as ListPeersRequest)) as ListPeersRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPeersRequest create() => ListPeersRequest._();
  ListPeersRequest createEmptyInstance() => create();
  static $pb.PbList<ListPeersRequest> createRepeated() => $pb.PbList<ListPeersRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPeersRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPeersRequest>(create);
  static ListPeersRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get latestError => $_getBF(0);
  @$pb.TagNumber(1)
  set latestError($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLatestError() => $_has(0);
  @$pb.TagNumber(1)
  void clearLatestError() => clearField(1);
}

class ListPeersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPeersResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<Peer>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'peers', $pb.PbFieldType.PM, subBuilder: Peer.create)
    ..hasRequiredFields = false
  ;

  ListPeersResponse._() : super();
  factory ListPeersResponse({
    $core.Iterable<Peer> peers,
  }) {
    final _result = create();
    if (peers != null) {
      _result.peers.addAll(peers);
    }
    return _result;
  }
  factory ListPeersResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPeersResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPeersResponse clone() => ListPeersResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPeersResponse copyWith(void Function(ListPeersResponse) updates) => super.copyWith((message) => updates(message as ListPeersResponse)) as ListPeersResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPeersResponse create() => ListPeersResponse._();
  ListPeersResponse createEmptyInstance() => create();
  static $pb.PbList<ListPeersResponse> createRepeated() => $pb.PbList<ListPeersResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPeersResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPeersResponse>(create);
  static ListPeersResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Peer> get peers => $_getList(0);
}

class PeerEventSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PeerEventSubscription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PeerEventSubscription._() : super();
  factory PeerEventSubscription() => create();
  factory PeerEventSubscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PeerEventSubscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PeerEventSubscription clone() => PeerEventSubscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PeerEventSubscription copyWith(void Function(PeerEventSubscription) updates) => super.copyWith((message) => updates(message as PeerEventSubscription)) as PeerEventSubscription; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PeerEventSubscription create() => PeerEventSubscription._();
  PeerEventSubscription createEmptyInstance() => create();
  static $pb.PbList<PeerEventSubscription> createRepeated() => $pb.PbList<PeerEventSubscription>();
  @$core.pragma('dart2js:noInline')
  static PeerEventSubscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PeerEventSubscription>(create);
  static PeerEventSubscription _defaultInstance;
}

class PeerEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PeerEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubKey')
    ..e<PeerEvent_EventType>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: PeerEvent_EventType.PEER_ONLINE, valueOf: PeerEvent_EventType.valueOf, enumValues: PeerEvent_EventType.values)
    ..hasRequiredFields = false
  ;

  PeerEvent._() : super();
  factory PeerEvent({
    $core.String pubKey,
    PeerEvent_EventType type,
  }) {
    final _result = create();
    if (pubKey != null) {
      _result.pubKey = pubKey;
    }
    if (type != null) {
      _result.type = type;
    }
    return _result;
  }
  factory PeerEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PeerEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PeerEvent clone() => PeerEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PeerEvent copyWith(void Function(PeerEvent) updates) => super.copyWith((message) => updates(message as PeerEvent)) as PeerEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PeerEvent create() => PeerEvent._();
  PeerEvent createEmptyInstance() => create();
  static $pb.PbList<PeerEvent> createRepeated() => $pb.PbList<PeerEvent>();
  @$core.pragma('dart2js:noInline')
  static PeerEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PeerEvent>(create);
  static PeerEvent _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKey() => clearField(1);

  @$pb.TagNumber(2)
  PeerEvent_EventType get type => $_getN(1);
  @$pb.TagNumber(2)
  set type(PeerEvent_EventType v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasType() => $_has(1);
  @$pb.TagNumber(2)
  void clearType() => clearField(2);
}

class GetInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetInfoRequest._() : super();
  factory GetInfoRequest() => create();
  factory GetInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInfoRequest clone() => GetInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInfoRequest copyWith(void Function(GetInfoRequest) updates) => super.copyWith((message) => updates(message as GetInfoRequest)) as GetInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInfoRequest create() => GetInfoRequest._();
  GetInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetInfoRequest> createRepeated() => $pb.PbList<GetInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInfoRequest>(create);
  static GetInfoRequest _defaultInstance;
}

class GetInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identityPubkey')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alias')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numPendingChannels', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numActiveChannels', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numPeers', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeight', $pb.PbFieldType.OU3)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHash')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syncedToChain')
    ..aOB(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'testnet')
    ..pPS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'uris')
    ..aInt64(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'bestHeaderTimestamp')
    ..aOS(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'version')
    ..a<$core.int>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numInactiveChannels', $pb.PbFieldType.OU3)
    ..pc<Chain>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chains', $pb.PbFieldType.PM, subBuilder: Chain.create)
    ..aOS(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color')
    ..aOB(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'syncedToGraph')
    ..m<$core.int, Feature>(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'features', entryClassName: 'GetInfoResponse.FeaturesEntry', keyFieldType: $pb.PbFieldType.OU3, valueFieldType: $pb.PbFieldType.OM, valueCreator: Feature.create, packageName: const $pb.PackageName('lnrpc'))
    ..aOS(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitHash')
    ..hasRequiredFields = false
  ;

  GetInfoResponse._() : super();
  factory GetInfoResponse({
    $core.String identityPubkey,
    $core.String alias,
    $core.int numPendingChannels,
    $core.int numActiveChannels,
    $core.int numPeers,
    $core.int blockHeight,
    $core.String blockHash,
    $core.bool syncedToChain,
  @$core.Deprecated('This field is deprecated.')
    $core.bool testnet,
    $core.Iterable<$core.String> uris,
    $fixnum.Int64 bestHeaderTimestamp,
    $core.String version,
    $core.int numInactiveChannels,
    $core.Iterable<Chain> chains,
    $core.String color,
    $core.bool syncedToGraph,
    $core.Map<$core.int, Feature> features,
    $core.String commitHash,
  }) {
    final _result = create();
    if (identityPubkey != null) {
      _result.identityPubkey = identityPubkey;
    }
    if (alias != null) {
      _result.alias = alias;
    }
    if (numPendingChannels != null) {
      _result.numPendingChannels = numPendingChannels;
    }
    if (numActiveChannels != null) {
      _result.numActiveChannels = numActiveChannels;
    }
    if (numPeers != null) {
      _result.numPeers = numPeers;
    }
    if (blockHeight != null) {
      _result.blockHeight = blockHeight;
    }
    if (blockHash != null) {
      _result.blockHash = blockHash;
    }
    if (syncedToChain != null) {
      _result.syncedToChain = syncedToChain;
    }
    if (testnet != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.testnet = testnet;
    }
    if (uris != null) {
      _result.uris.addAll(uris);
    }
    if (bestHeaderTimestamp != null) {
      _result.bestHeaderTimestamp = bestHeaderTimestamp;
    }
    if (version != null) {
      _result.version = version;
    }
    if (numInactiveChannels != null) {
      _result.numInactiveChannels = numInactiveChannels;
    }
    if (chains != null) {
      _result.chains.addAll(chains);
    }
    if (color != null) {
      _result.color = color;
    }
    if (syncedToGraph != null) {
      _result.syncedToGraph = syncedToGraph;
    }
    if (features != null) {
      _result.features.addAll(features);
    }
    if (commitHash != null) {
      _result.commitHash = commitHash;
    }
    return _result;
  }
  factory GetInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetInfoResponse clone() => GetInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetInfoResponse copyWith(void Function(GetInfoResponse) updates) => super.copyWith((message) => updates(message as GetInfoResponse)) as GetInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInfoResponse create() => GetInfoResponse._();
  GetInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetInfoResponse> createRepeated() => $pb.PbList<GetInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetInfoResponse>(create);
  static GetInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get identityPubkey => $_getSZ(0);
  @$pb.TagNumber(1)
  set identityPubkey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIdentityPubkey() => $_has(0);
  @$pb.TagNumber(1)
  void clearIdentityPubkey() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get alias => $_getSZ(1);
  @$pb.TagNumber(2)
  set alias($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAlias() => $_has(1);
  @$pb.TagNumber(2)
  void clearAlias() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get numPendingChannels => $_getIZ(2);
  @$pb.TagNumber(3)
  set numPendingChannels($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumPendingChannels() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumPendingChannels() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get numActiveChannels => $_getIZ(3);
  @$pb.TagNumber(4)
  set numActiveChannels($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumActiveChannels() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumActiveChannels() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get numPeers => $_getIZ(4);
  @$pb.TagNumber(5)
  set numPeers($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNumPeers() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumPeers() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get blockHeight => $_getIZ(5);
  @$pb.TagNumber(6)
  set blockHeight($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasBlockHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearBlockHeight() => clearField(6);

  @$pb.TagNumber(8)
  $core.String get blockHash => $_getSZ(6);
  @$pb.TagNumber(8)
  set blockHash($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasBlockHash() => $_has(6);
  @$pb.TagNumber(8)
  void clearBlockHash() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get syncedToChain => $_getBF(7);
  @$pb.TagNumber(9)
  set syncedToChain($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasSyncedToChain() => $_has(7);
  @$pb.TagNumber(9)
  void clearSyncedToChain() => clearField(9);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool get testnet => $_getBF(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  set testnet($core.bool v) { $_setBool(8, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  $core.bool hasTestnet() => $_has(8);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(10)
  void clearTestnet() => clearField(10);

  @$pb.TagNumber(12)
  $core.List<$core.String> get uris => $_getList(9);

  @$pb.TagNumber(13)
  $fixnum.Int64 get bestHeaderTimestamp => $_getI64(10);
  @$pb.TagNumber(13)
  set bestHeaderTimestamp($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(13)
  $core.bool hasBestHeaderTimestamp() => $_has(10);
  @$pb.TagNumber(13)
  void clearBestHeaderTimestamp() => clearField(13);

  @$pb.TagNumber(14)
  $core.String get version => $_getSZ(11);
  @$pb.TagNumber(14)
  set version($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(14)
  $core.bool hasVersion() => $_has(11);
  @$pb.TagNumber(14)
  void clearVersion() => clearField(14);

  @$pb.TagNumber(15)
  $core.int get numInactiveChannels => $_getIZ(12);
  @$pb.TagNumber(15)
  set numInactiveChannels($core.int v) { $_setUnsignedInt32(12, v); }
  @$pb.TagNumber(15)
  $core.bool hasNumInactiveChannels() => $_has(12);
  @$pb.TagNumber(15)
  void clearNumInactiveChannels() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<Chain> get chains => $_getList(13);

  @$pb.TagNumber(17)
  $core.String get color => $_getSZ(14);
  @$pb.TagNumber(17)
  set color($core.String v) { $_setString(14, v); }
  @$pb.TagNumber(17)
  $core.bool hasColor() => $_has(14);
  @$pb.TagNumber(17)
  void clearColor() => clearField(17);

  @$pb.TagNumber(18)
  $core.bool get syncedToGraph => $_getBF(15);
  @$pb.TagNumber(18)
  set syncedToGraph($core.bool v) { $_setBool(15, v); }
  @$pb.TagNumber(18)
  $core.bool hasSyncedToGraph() => $_has(15);
  @$pb.TagNumber(18)
  void clearSyncedToGraph() => clearField(18);

  @$pb.TagNumber(19)
  $core.Map<$core.int, Feature> get features => $_getMap(16);

  @$pb.TagNumber(20)
  $core.String get commitHash => $_getSZ(17);
  @$pb.TagNumber(20)
  set commitHash($core.String v) { $_setString(17, v); }
  @$pb.TagNumber(20)
  $core.bool hasCommitHash() => $_has(17);
  @$pb.TagNumber(20)
  void clearCommitHash() => clearField(20);
}

class GetRecoveryInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRecoveryInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GetRecoveryInfoRequest._() : super();
  factory GetRecoveryInfoRequest() => create();
  factory GetRecoveryInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecoveryInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecoveryInfoRequest clone() => GetRecoveryInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecoveryInfoRequest copyWith(void Function(GetRecoveryInfoRequest) updates) => super.copyWith((message) => updates(message as GetRecoveryInfoRequest)) as GetRecoveryInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRecoveryInfoRequest create() => GetRecoveryInfoRequest._();
  GetRecoveryInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetRecoveryInfoRequest> createRepeated() => $pb.PbList<GetRecoveryInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static GetRecoveryInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecoveryInfoRequest>(create);
  static GetRecoveryInfoRequest _defaultInstance;
}

class GetRecoveryInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GetRecoveryInfoResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recoveryMode')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recoveryFinished')
    ..a<$core.double>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'progress', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  GetRecoveryInfoResponse._() : super();
  factory GetRecoveryInfoResponse({
    $core.bool recoveryMode,
    $core.bool recoveryFinished,
    $core.double progress,
  }) {
    final _result = create();
    if (recoveryMode != null) {
      _result.recoveryMode = recoveryMode;
    }
    if (recoveryFinished != null) {
      _result.recoveryFinished = recoveryFinished;
    }
    if (progress != null) {
      _result.progress = progress;
    }
    return _result;
  }
  factory GetRecoveryInfoResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GetRecoveryInfoResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GetRecoveryInfoResponse clone() => GetRecoveryInfoResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GetRecoveryInfoResponse copyWith(void Function(GetRecoveryInfoResponse) updates) => super.copyWith((message) => updates(message as GetRecoveryInfoResponse)) as GetRecoveryInfoResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetRecoveryInfoResponse create() => GetRecoveryInfoResponse._();
  GetRecoveryInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetRecoveryInfoResponse> createRepeated() => $pb.PbList<GetRecoveryInfoResponse>();
  @$core.pragma('dart2js:noInline')
  static GetRecoveryInfoResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GetRecoveryInfoResponse>(create);
  static GetRecoveryInfoResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get recoveryMode => $_getBF(0);
  @$pb.TagNumber(1)
  set recoveryMode($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRecoveryMode() => $_has(0);
  @$pb.TagNumber(1)
  void clearRecoveryMode() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get recoveryFinished => $_getBF(1);
  @$pb.TagNumber(2)
  set recoveryFinished($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRecoveryFinished() => $_has(1);
  @$pb.TagNumber(2)
  void clearRecoveryFinished() => clearField(2);

  @$pb.TagNumber(3)
  $core.double get progress => $_getN(2);
  @$pb.TagNumber(3)
  set progress($core.double v) { $_setDouble(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasProgress() => $_has(2);
  @$pb.TagNumber(3)
  void clearProgress() => clearField(3);
}

class Chain extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Chain', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chain')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'network')
    ..hasRequiredFields = false
  ;

  Chain._() : super();
  factory Chain({
    $core.String chain,
    $core.String network,
  }) {
    final _result = create();
    if (chain != null) {
      _result.chain = chain;
    }
    if (network != null) {
      _result.network = network;
    }
    return _result;
  }
  factory Chain.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Chain.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Chain clone() => Chain()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Chain copyWith(void Function(Chain) updates) => super.copyWith((message) => updates(message as Chain)) as Chain; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Chain create() => Chain._();
  Chain createEmptyInstance() => create();
  static $pb.PbList<Chain> createRepeated() => $pb.PbList<Chain>();
  @$core.pragma('dart2js:noInline')
  static Chain getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Chain>(create);
  static Chain _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get chain => $_getSZ(0);
  @$pb.TagNumber(1)
  set chain($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChain() => $_has(0);
  @$pb.TagNumber(1)
  void clearChain() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get network => $_getSZ(1);
  @$pb.TagNumber(2)
  set network($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNetwork() => $_has(1);
  @$pb.TagNumber(2)
  void clearNetwork() => clearField(2);
}

class ConfirmationUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ConfirmationUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockSha', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blockHeight', $pb.PbFieldType.O3)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numConfsLeft', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ConfirmationUpdate._() : super();
  factory ConfirmationUpdate({
    $core.List<$core.int> blockSha,
    $core.int blockHeight,
    $core.int numConfsLeft,
  }) {
    final _result = create();
    if (blockSha != null) {
      _result.blockSha = blockSha;
    }
    if (blockHeight != null) {
      _result.blockHeight = blockHeight;
    }
    if (numConfsLeft != null) {
      _result.numConfsLeft = numConfsLeft;
    }
    return _result;
  }
  factory ConfirmationUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ConfirmationUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ConfirmationUpdate clone() => ConfirmationUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ConfirmationUpdate copyWith(void Function(ConfirmationUpdate) updates) => super.copyWith((message) => updates(message as ConfirmationUpdate)) as ConfirmationUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfirmationUpdate create() => ConfirmationUpdate._();
  ConfirmationUpdate createEmptyInstance() => create();
  static $pb.PbList<ConfirmationUpdate> createRepeated() => $pb.PbList<ConfirmationUpdate>();
  @$core.pragma('dart2js:noInline')
  static ConfirmationUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ConfirmationUpdate>(create);
  static ConfirmationUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get blockSha => $_getN(0);
  @$pb.TagNumber(1)
  set blockSha($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasBlockSha() => $_has(0);
  @$pb.TagNumber(1)
  void clearBlockSha() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get blockHeight => $_getIZ(1);
  @$pb.TagNumber(2)
  set blockHeight($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBlockHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearBlockHeight() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get numConfsLeft => $_getIZ(2);
  @$pb.TagNumber(3)
  set numConfsLeft($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumConfsLeft() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumConfsLeft() => clearField(3);
}

class ChannelOpenUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelOpenUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOM<ChannelPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelPoint', subBuilder: ChannelPoint.create)
    ..hasRequiredFields = false
  ;

  ChannelOpenUpdate._() : super();
  factory ChannelOpenUpdate({
    ChannelPoint channelPoint,
  }) {
    final _result = create();
    if (channelPoint != null) {
      _result.channelPoint = channelPoint;
    }
    return _result;
  }
  factory ChannelOpenUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelOpenUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelOpenUpdate clone() => ChannelOpenUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelOpenUpdate copyWith(void Function(ChannelOpenUpdate) updates) => super.copyWith((message) => updates(message as ChannelOpenUpdate)) as ChannelOpenUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelOpenUpdate create() => ChannelOpenUpdate._();
  ChannelOpenUpdate createEmptyInstance() => create();
  static $pb.PbList<ChannelOpenUpdate> createRepeated() => $pb.PbList<ChannelOpenUpdate>();
  @$core.pragma('dart2js:noInline')
  static ChannelOpenUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelOpenUpdate>(create);
  static ChannelOpenUpdate _defaultInstance;

  @$pb.TagNumber(1)
  ChannelPoint get channelPoint => $_getN(0);
  @$pb.TagNumber(1)
  set channelPoint(ChannelPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelPoint() => clearField(1);
  @$pb.TagNumber(1)
  ChannelPoint ensureChannelPoint() => $_ensure(0);
}

class ChannelCloseUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelCloseUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closingTxid', $pb.PbFieldType.OY)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'success')
    ..hasRequiredFields = false
  ;

  ChannelCloseUpdate._() : super();
  factory ChannelCloseUpdate({
    $core.List<$core.int> closingTxid,
    $core.bool success,
  }) {
    final _result = create();
    if (closingTxid != null) {
      _result.closingTxid = closingTxid;
    }
    if (success != null) {
      _result.success = success;
    }
    return _result;
  }
  factory ChannelCloseUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelCloseUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelCloseUpdate clone() => ChannelCloseUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelCloseUpdate copyWith(void Function(ChannelCloseUpdate) updates) => super.copyWith((message) => updates(message as ChannelCloseUpdate)) as ChannelCloseUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelCloseUpdate create() => ChannelCloseUpdate._();
  ChannelCloseUpdate createEmptyInstance() => create();
  static $pb.PbList<ChannelCloseUpdate> createRepeated() => $pb.PbList<ChannelCloseUpdate>();
  @$core.pragma('dart2js:noInline')
  static ChannelCloseUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelCloseUpdate>(create);
  static ChannelCloseUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get closingTxid => $_getN(0);
  @$pb.TagNumber(1)
  set closingTxid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasClosingTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearClosingTxid() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get success => $_getBF(1);
  @$pb.TagNumber(2)
  set success($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuccess() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccess() => clearField(2);
}

class CloseChannelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CloseChannelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOM<ChannelPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelPoint', subBuilder: ChannelPoint.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'force')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetConf', $pb.PbFieldType.O3)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satPerByte')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deliveryAddress')
    ..hasRequiredFields = false
  ;

  CloseChannelRequest._() : super();
  factory CloseChannelRequest({
    ChannelPoint channelPoint,
    $core.bool force,
    $core.int targetConf,
    $fixnum.Int64 satPerByte,
    $core.String deliveryAddress,
  }) {
    final _result = create();
    if (channelPoint != null) {
      _result.channelPoint = channelPoint;
    }
    if (force != null) {
      _result.force = force;
    }
    if (targetConf != null) {
      _result.targetConf = targetConf;
    }
    if (satPerByte != null) {
      _result.satPerByte = satPerByte;
    }
    if (deliveryAddress != null) {
      _result.deliveryAddress = deliveryAddress;
    }
    return _result;
  }
  factory CloseChannelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CloseChannelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CloseChannelRequest clone() => CloseChannelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CloseChannelRequest copyWith(void Function(CloseChannelRequest) updates) => super.copyWith((message) => updates(message as CloseChannelRequest)) as CloseChannelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CloseChannelRequest create() => CloseChannelRequest._();
  CloseChannelRequest createEmptyInstance() => create();
  static $pb.PbList<CloseChannelRequest> createRepeated() => $pb.PbList<CloseChannelRequest>();
  @$core.pragma('dart2js:noInline')
  static CloseChannelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CloseChannelRequest>(create);
  static CloseChannelRequest _defaultInstance;

  @$pb.TagNumber(1)
  ChannelPoint get channelPoint => $_getN(0);
  @$pb.TagNumber(1)
  set channelPoint(ChannelPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelPoint() => clearField(1);
  @$pb.TagNumber(1)
  ChannelPoint ensureChannelPoint() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get force => $_getBF(1);
  @$pb.TagNumber(2)
  set force($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasForce() => $_has(1);
  @$pb.TagNumber(2)
  void clearForce() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get targetConf => $_getIZ(2);
  @$pb.TagNumber(3)
  set targetConf($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTargetConf() => $_has(2);
  @$pb.TagNumber(3)
  void clearTargetConf() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get satPerByte => $_getI64(3);
  @$pb.TagNumber(4)
  set satPerByte($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasSatPerByte() => $_has(3);
  @$pb.TagNumber(4)
  void clearSatPerByte() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get deliveryAddress => $_getSZ(4);
  @$pb.TagNumber(5)
  set deliveryAddress($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDeliveryAddress() => $_has(4);
  @$pb.TagNumber(5)
  void clearDeliveryAddress() => clearField(5);
}

enum CloseStatusUpdate_Update {
  closePending, 
  chanClose, 
  notSet
}

class CloseStatusUpdate extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CloseStatusUpdate_Update> _CloseStatusUpdate_UpdateByTag = {
    1 : CloseStatusUpdate_Update.closePending,
    3 : CloseStatusUpdate_Update.chanClose,
    0 : CloseStatusUpdate_Update.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'CloseStatusUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..aOM<PendingUpdate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closePending', subBuilder: PendingUpdate.create)
    ..aOM<ChannelCloseUpdate>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanClose', subBuilder: ChannelCloseUpdate.create)
    ..hasRequiredFields = false
  ;

  CloseStatusUpdate._() : super();
  factory CloseStatusUpdate({
    PendingUpdate closePending,
    ChannelCloseUpdate chanClose,
  }) {
    final _result = create();
    if (closePending != null) {
      _result.closePending = closePending;
    }
    if (chanClose != null) {
      _result.chanClose = chanClose;
    }
    return _result;
  }
  factory CloseStatusUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory CloseStatusUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  CloseStatusUpdate clone() => CloseStatusUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  CloseStatusUpdate copyWith(void Function(CloseStatusUpdate) updates) => super.copyWith((message) => updates(message as CloseStatusUpdate)) as CloseStatusUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CloseStatusUpdate create() => CloseStatusUpdate._();
  CloseStatusUpdate createEmptyInstance() => create();
  static $pb.PbList<CloseStatusUpdate> createRepeated() => $pb.PbList<CloseStatusUpdate>();
  @$core.pragma('dart2js:noInline')
  static CloseStatusUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<CloseStatusUpdate>(create);
  static CloseStatusUpdate _defaultInstance;

  CloseStatusUpdate_Update whichUpdate() => _CloseStatusUpdate_UpdateByTag[$_whichOneof(0)];
  void clearUpdate() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PendingUpdate get closePending => $_getN(0);
  @$pb.TagNumber(1)
  set closePending(PendingUpdate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasClosePending() => $_has(0);
  @$pb.TagNumber(1)
  void clearClosePending() => clearField(1);
  @$pb.TagNumber(1)
  PendingUpdate ensureClosePending() => $_ensure(0);

  @$pb.TagNumber(3)
  ChannelCloseUpdate get chanClose => $_getN(1);
  @$pb.TagNumber(3)
  set chanClose(ChannelCloseUpdate v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChanClose() => $_has(1);
  @$pb.TagNumber(3)
  void clearChanClose() => clearField(3);
  @$pb.TagNumber(3)
  ChannelCloseUpdate ensureChanClose() => $_ensure(1);
}

class PendingUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'txid', $pb.PbFieldType.OY)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outputIndex', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  PendingUpdate._() : super();
  factory PendingUpdate({
    $core.List<$core.int> txid,
    $core.int outputIndex,
  }) {
    final _result = create();
    if (txid != null) {
      _result.txid = txid;
    }
    if (outputIndex != null) {
      _result.outputIndex = outputIndex;
    }
    return _result;
  }
  factory PendingUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingUpdate clone() => PendingUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingUpdate copyWith(void Function(PendingUpdate) updates) => super.copyWith((message) => updates(message as PendingUpdate)) as PendingUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingUpdate create() => PendingUpdate._();
  PendingUpdate createEmptyInstance() => create();
  static $pb.PbList<PendingUpdate> createRepeated() => $pb.PbList<PendingUpdate>();
  @$core.pragma('dart2js:noInline')
  static PendingUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingUpdate>(create);
  static PendingUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get txid => $_getN(0);
  @$pb.TagNumber(1)
  set txid($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearTxid() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get outputIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set outputIndex($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasOutputIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearOutputIndex() => clearField(2);
}

class ReadyForPsbtFunding extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ReadyForPsbtFunding', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fundingAddress')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fundingAmount')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'psbt', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ReadyForPsbtFunding._() : super();
  factory ReadyForPsbtFunding({
    $core.String fundingAddress,
    $fixnum.Int64 fundingAmount,
    $core.List<$core.int> psbt,
  }) {
    final _result = create();
    if (fundingAddress != null) {
      _result.fundingAddress = fundingAddress;
    }
    if (fundingAmount != null) {
      _result.fundingAmount = fundingAmount;
    }
    if (psbt != null) {
      _result.psbt = psbt;
    }
    return _result;
  }
  factory ReadyForPsbtFunding.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ReadyForPsbtFunding.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ReadyForPsbtFunding clone() => ReadyForPsbtFunding()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ReadyForPsbtFunding copyWith(void Function(ReadyForPsbtFunding) updates) => super.copyWith((message) => updates(message as ReadyForPsbtFunding)) as ReadyForPsbtFunding; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ReadyForPsbtFunding create() => ReadyForPsbtFunding._();
  ReadyForPsbtFunding createEmptyInstance() => create();
  static $pb.PbList<ReadyForPsbtFunding> createRepeated() => $pb.PbList<ReadyForPsbtFunding>();
  @$core.pragma('dart2js:noInline')
  static ReadyForPsbtFunding getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ReadyForPsbtFunding>(create);
  static ReadyForPsbtFunding _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get fundingAddress => $_getSZ(0);
  @$pb.TagNumber(1)
  set fundingAddress($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFundingAddress() => $_has(0);
  @$pb.TagNumber(1)
  void clearFundingAddress() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get fundingAmount => $_getI64(1);
  @$pb.TagNumber(2)
  set fundingAmount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFundingAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearFundingAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get psbt => $_getN(2);
  @$pb.TagNumber(3)
  set psbt($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasPsbt() => $_has(2);
  @$pb.TagNumber(3)
  void clearPsbt() => clearField(3);
}

class OpenChannelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenChannelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodePubkey', $pb.PbFieldType.OY)
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodePubkeyString')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localFundingAmount')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pushSat')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'targetConf', $pb.PbFieldType.O3)
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'satPerByte')
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'private')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minHtlcMsat')
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteCsvDelay', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minConfs', $pb.PbFieldType.O3)
    ..aOB(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'spendUnconfirmed')
    ..aOS(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closeAddress')
    ..aOM<FundingShim>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fundingShim', subBuilder: FundingShim.create)
    ..a<$fixnum.Int64>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteMaxValueInFlightMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteMaxHtlcs', $pb.PbFieldType.OU3)
    ..a<$core.int>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxLocalCsv', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  OpenChannelRequest._() : super();
  factory OpenChannelRequest({
    $core.List<$core.int> nodePubkey,
  @$core.Deprecated('This field is deprecated.')
    $core.String nodePubkeyString,
    $fixnum.Int64 localFundingAmount,
    $fixnum.Int64 pushSat,
    $core.int targetConf,
    $fixnum.Int64 satPerByte,
    $core.bool private,
    $fixnum.Int64 minHtlcMsat,
    $core.int remoteCsvDelay,
    $core.int minConfs,
    $core.bool spendUnconfirmed,
    $core.String closeAddress,
    FundingShim fundingShim,
    $fixnum.Int64 remoteMaxValueInFlightMsat,
    $core.int remoteMaxHtlcs,
    $core.int maxLocalCsv,
  }) {
    final _result = create();
    if (nodePubkey != null) {
      _result.nodePubkey = nodePubkey;
    }
    if (nodePubkeyString != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.nodePubkeyString = nodePubkeyString;
    }
    if (localFundingAmount != null) {
      _result.localFundingAmount = localFundingAmount;
    }
    if (pushSat != null) {
      _result.pushSat = pushSat;
    }
    if (targetConf != null) {
      _result.targetConf = targetConf;
    }
    if (satPerByte != null) {
      _result.satPerByte = satPerByte;
    }
    if (private != null) {
      _result.private = private;
    }
    if (minHtlcMsat != null) {
      _result.minHtlcMsat = minHtlcMsat;
    }
    if (remoteCsvDelay != null) {
      _result.remoteCsvDelay = remoteCsvDelay;
    }
    if (minConfs != null) {
      _result.minConfs = minConfs;
    }
    if (spendUnconfirmed != null) {
      _result.spendUnconfirmed = spendUnconfirmed;
    }
    if (closeAddress != null) {
      _result.closeAddress = closeAddress;
    }
    if (fundingShim != null) {
      _result.fundingShim = fundingShim;
    }
    if (remoteMaxValueInFlightMsat != null) {
      _result.remoteMaxValueInFlightMsat = remoteMaxValueInFlightMsat;
    }
    if (remoteMaxHtlcs != null) {
      _result.remoteMaxHtlcs = remoteMaxHtlcs;
    }
    if (maxLocalCsv != null) {
      _result.maxLocalCsv = maxLocalCsv;
    }
    return _result;
  }
  factory OpenChannelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenChannelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenChannelRequest clone() => OpenChannelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenChannelRequest copyWith(void Function(OpenChannelRequest) updates) => super.copyWith((message) => updates(message as OpenChannelRequest)) as OpenChannelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenChannelRequest create() => OpenChannelRequest._();
  OpenChannelRequest createEmptyInstance() => create();
  static $pb.PbList<OpenChannelRequest> createRepeated() => $pb.PbList<OpenChannelRequest>();
  @$core.pragma('dart2js:noInline')
  static OpenChannelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenChannelRequest>(create);
  static OpenChannelRequest _defaultInstance;

  @$pb.TagNumber(2)
  $core.List<$core.int> get nodePubkey => $_getN(0);
  @$pb.TagNumber(2)
  set nodePubkey($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasNodePubkey() => $_has(0);
  @$pb.TagNumber(2)
  void clearNodePubkey() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.String get nodePubkeyString => $_getSZ(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set nodePubkeyString($core.String v) { $_setString(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasNodePubkeyString() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearNodePubkeyString() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get localFundingAmount => $_getI64(2);
  @$pb.TagNumber(4)
  set localFundingAmount($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocalFundingAmount() => $_has(2);
  @$pb.TagNumber(4)
  void clearLocalFundingAmount() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get pushSat => $_getI64(3);
  @$pb.TagNumber(5)
  set pushSat($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasPushSat() => $_has(3);
  @$pb.TagNumber(5)
  void clearPushSat() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get targetConf => $_getIZ(4);
  @$pb.TagNumber(6)
  set targetConf($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasTargetConf() => $_has(4);
  @$pb.TagNumber(6)
  void clearTargetConf() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get satPerByte => $_getI64(5);
  @$pb.TagNumber(7)
  set satPerByte($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasSatPerByte() => $_has(5);
  @$pb.TagNumber(7)
  void clearSatPerByte() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get private => $_getBF(6);
  @$pb.TagNumber(8)
  set private($core.bool v) { $_setBool(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasPrivate() => $_has(6);
  @$pb.TagNumber(8)
  void clearPrivate() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get minHtlcMsat => $_getI64(7);
  @$pb.TagNumber(9)
  set minHtlcMsat($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasMinHtlcMsat() => $_has(7);
  @$pb.TagNumber(9)
  void clearMinHtlcMsat() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get remoteCsvDelay => $_getIZ(8);
  @$pb.TagNumber(10)
  set remoteCsvDelay($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasRemoteCsvDelay() => $_has(8);
  @$pb.TagNumber(10)
  void clearRemoteCsvDelay() => clearField(10);

  @$pb.TagNumber(11)
  $core.int get minConfs => $_getIZ(9);
  @$pb.TagNumber(11)
  set minConfs($core.int v) { $_setSignedInt32(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasMinConfs() => $_has(9);
  @$pb.TagNumber(11)
  void clearMinConfs() => clearField(11);

  @$pb.TagNumber(12)
  $core.bool get spendUnconfirmed => $_getBF(10);
  @$pb.TagNumber(12)
  set spendUnconfirmed($core.bool v) { $_setBool(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasSpendUnconfirmed() => $_has(10);
  @$pb.TagNumber(12)
  void clearSpendUnconfirmed() => clearField(12);

  @$pb.TagNumber(13)
  $core.String get closeAddress => $_getSZ(11);
  @$pb.TagNumber(13)
  set closeAddress($core.String v) { $_setString(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasCloseAddress() => $_has(11);
  @$pb.TagNumber(13)
  void clearCloseAddress() => clearField(13);

  @$pb.TagNumber(14)
  FundingShim get fundingShim => $_getN(12);
  @$pb.TagNumber(14)
  set fundingShim(FundingShim v) { setField(14, v); }
  @$pb.TagNumber(14)
  $core.bool hasFundingShim() => $_has(12);
  @$pb.TagNumber(14)
  void clearFundingShim() => clearField(14);
  @$pb.TagNumber(14)
  FundingShim ensureFundingShim() => $_ensure(12);

  @$pb.TagNumber(15)
  $fixnum.Int64 get remoteMaxValueInFlightMsat => $_getI64(13);
  @$pb.TagNumber(15)
  set remoteMaxValueInFlightMsat($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasRemoteMaxValueInFlightMsat() => $_has(13);
  @$pb.TagNumber(15)
  void clearRemoteMaxValueInFlightMsat() => clearField(15);

  @$pb.TagNumber(16)
  $core.int get remoteMaxHtlcs => $_getIZ(14);
  @$pb.TagNumber(16)
  set remoteMaxHtlcs($core.int v) { $_setUnsignedInt32(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasRemoteMaxHtlcs() => $_has(14);
  @$pb.TagNumber(16)
  void clearRemoteMaxHtlcs() => clearField(16);

  @$pb.TagNumber(17)
  $core.int get maxLocalCsv => $_getIZ(15);
  @$pb.TagNumber(17)
  set maxLocalCsv($core.int v) { $_setUnsignedInt32(15, v); }
  @$pb.TagNumber(17)
  $core.bool hasMaxLocalCsv() => $_has(15);
  @$pb.TagNumber(17)
  void clearMaxLocalCsv() => clearField(17);
}

enum OpenStatusUpdate_Update {
  chanPending, 
  chanOpen, 
  psbtFund, 
  notSet
}

class OpenStatusUpdate extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, OpenStatusUpdate_Update> _OpenStatusUpdate_UpdateByTag = {
    1 : OpenStatusUpdate_Update.chanPending,
    3 : OpenStatusUpdate_Update.chanOpen,
    5 : OpenStatusUpdate_Update.psbtFund,
    0 : OpenStatusUpdate_Update.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'OpenStatusUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 3, 5])
    ..aOM<PendingUpdate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanPending', subBuilder: PendingUpdate.create)
    ..aOM<ChannelOpenUpdate>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanOpen', subBuilder: ChannelOpenUpdate.create)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingChanId', $pb.PbFieldType.OY)
    ..aOM<ReadyForPsbtFunding>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'psbtFund', subBuilder: ReadyForPsbtFunding.create)
    ..hasRequiredFields = false
  ;

  OpenStatusUpdate._() : super();
  factory OpenStatusUpdate({
    PendingUpdate chanPending,
    ChannelOpenUpdate chanOpen,
    $core.List<$core.int> pendingChanId,
    ReadyForPsbtFunding psbtFund,
  }) {
    final _result = create();
    if (chanPending != null) {
      _result.chanPending = chanPending;
    }
    if (chanOpen != null) {
      _result.chanOpen = chanOpen;
    }
    if (pendingChanId != null) {
      _result.pendingChanId = pendingChanId;
    }
    if (psbtFund != null) {
      _result.psbtFund = psbtFund;
    }
    return _result;
  }
  factory OpenStatusUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory OpenStatusUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  OpenStatusUpdate clone() => OpenStatusUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  OpenStatusUpdate copyWith(void Function(OpenStatusUpdate) updates) => super.copyWith((message) => updates(message as OpenStatusUpdate)) as OpenStatusUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenStatusUpdate create() => OpenStatusUpdate._();
  OpenStatusUpdate createEmptyInstance() => create();
  static $pb.PbList<OpenStatusUpdate> createRepeated() => $pb.PbList<OpenStatusUpdate>();
  @$core.pragma('dart2js:noInline')
  static OpenStatusUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<OpenStatusUpdate>(create);
  static OpenStatusUpdate _defaultInstance;

  OpenStatusUpdate_Update whichUpdate() => _OpenStatusUpdate_UpdateByTag[$_whichOneof(0)];
  void clearUpdate() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  PendingUpdate get chanPending => $_getN(0);
  @$pb.TagNumber(1)
  set chanPending(PendingUpdate v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChanPending() => $_has(0);
  @$pb.TagNumber(1)
  void clearChanPending() => clearField(1);
  @$pb.TagNumber(1)
  PendingUpdate ensureChanPending() => $_ensure(0);

  @$pb.TagNumber(3)
  ChannelOpenUpdate get chanOpen => $_getN(1);
  @$pb.TagNumber(3)
  set chanOpen(ChannelOpenUpdate v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChanOpen() => $_has(1);
  @$pb.TagNumber(3)
  void clearChanOpen() => clearField(3);
  @$pb.TagNumber(3)
  ChannelOpenUpdate ensureChanOpen() => $_ensure(1);

  @$pb.TagNumber(4)
  $core.List<$core.int> get pendingChanId => $_getN(2);
  @$pb.TagNumber(4)
  set pendingChanId($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasPendingChanId() => $_has(2);
  @$pb.TagNumber(4)
  void clearPendingChanId() => clearField(4);

  @$pb.TagNumber(5)
  ReadyForPsbtFunding get psbtFund => $_getN(3);
  @$pb.TagNumber(5)
  set psbtFund(ReadyForPsbtFunding v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasPsbtFund() => $_has(3);
  @$pb.TagNumber(5)
  void clearPsbtFund() => clearField(5);
  @$pb.TagNumber(5)
  ReadyForPsbtFunding ensurePsbtFund() => $_ensure(3);
}

class KeyLocator extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyLocator', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyFamily', $pb.PbFieldType.O3)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyIndex', $pb.PbFieldType.O3)
    ..hasRequiredFields = false
  ;

  KeyLocator._() : super();
  factory KeyLocator({
    $core.int keyFamily,
    $core.int keyIndex,
  }) {
    final _result = create();
    if (keyFamily != null) {
      _result.keyFamily = keyFamily;
    }
    if (keyIndex != null) {
      _result.keyIndex = keyIndex;
    }
    return _result;
  }
  factory KeyLocator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyLocator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyLocator clone() => KeyLocator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyLocator copyWith(void Function(KeyLocator) updates) => super.copyWith((message) => updates(message as KeyLocator)) as KeyLocator; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyLocator create() => KeyLocator._();
  KeyLocator createEmptyInstance() => create();
  static $pb.PbList<KeyLocator> createRepeated() => $pb.PbList<KeyLocator>();
  @$core.pragma('dart2js:noInline')
  static KeyLocator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyLocator>(create);
  static KeyLocator _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get keyFamily => $_getIZ(0);
  @$pb.TagNumber(1)
  set keyFamily($core.int v) { $_setSignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasKeyFamily() => $_has(0);
  @$pb.TagNumber(1)
  void clearKeyFamily() => clearField(1);

  @$pb.TagNumber(2)
  $core.int get keyIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set keyIndex($core.int v) { $_setSignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeyIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyIndex() => clearField(2);
}

class KeyDescriptor extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'KeyDescriptor', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rawKeyBytes', $pb.PbFieldType.OY)
    ..aOM<KeyLocator>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'keyLoc', subBuilder: KeyLocator.create)
    ..hasRequiredFields = false
  ;

  KeyDescriptor._() : super();
  factory KeyDescriptor({
    $core.List<$core.int> rawKeyBytes,
    KeyLocator keyLoc,
  }) {
    final _result = create();
    if (rawKeyBytes != null) {
      _result.rawKeyBytes = rawKeyBytes;
    }
    if (keyLoc != null) {
      _result.keyLoc = keyLoc;
    }
    return _result;
  }
  factory KeyDescriptor.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory KeyDescriptor.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  KeyDescriptor clone() => KeyDescriptor()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  KeyDescriptor copyWith(void Function(KeyDescriptor) updates) => super.copyWith((message) => updates(message as KeyDescriptor)) as KeyDescriptor; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static KeyDescriptor create() => KeyDescriptor._();
  KeyDescriptor createEmptyInstance() => create();
  static $pb.PbList<KeyDescriptor> createRepeated() => $pb.PbList<KeyDescriptor>();
  @$core.pragma('dart2js:noInline')
  static KeyDescriptor getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<KeyDescriptor>(create);
  static KeyDescriptor _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get rawKeyBytes => $_getN(0);
  @$pb.TagNumber(1)
  set rawKeyBytes($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRawKeyBytes() => $_has(0);
  @$pb.TagNumber(1)
  void clearRawKeyBytes() => clearField(1);

  @$pb.TagNumber(2)
  KeyLocator get keyLoc => $_getN(1);
  @$pb.TagNumber(2)
  set keyLoc(KeyLocator v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasKeyLoc() => $_has(1);
  @$pb.TagNumber(2)
  void clearKeyLoc() => clearField(2);
  @$pb.TagNumber(2)
  KeyLocator ensureKeyLoc() => $_ensure(1);
}

class ChanPointShim extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChanPointShim', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amt')
    ..aOM<ChannelPoint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanPoint', subBuilder: ChannelPoint.create)
    ..aOM<KeyDescriptor>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localKey', subBuilder: KeyDescriptor.create)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingChanId', $pb.PbFieldType.OY)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'thawHeight', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ChanPointShim._() : super();
  factory ChanPointShim({
    $fixnum.Int64 amt,
    ChannelPoint chanPoint,
    KeyDescriptor localKey,
    $core.List<$core.int> remoteKey,
    $core.List<$core.int> pendingChanId,
    $core.int thawHeight,
  }) {
    final _result = create();
    if (amt != null) {
      _result.amt = amt;
    }
    if (chanPoint != null) {
      _result.chanPoint = chanPoint;
    }
    if (localKey != null) {
      _result.localKey = localKey;
    }
    if (remoteKey != null) {
      _result.remoteKey = remoteKey;
    }
    if (pendingChanId != null) {
      _result.pendingChanId = pendingChanId;
    }
    if (thawHeight != null) {
      _result.thawHeight = thawHeight;
    }
    return _result;
  }
  factory ChanPointShim.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChanPointShim.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChanPointShim clone() => ChanPointShim()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChanPointShim copyWith(void Function(ChanPointShim) updates) => super.copyWith((message) => updates(message as ChanPointShim)) as ChanPointShim; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChanPointShim create() => ChanPointShim._();
  ChanPointShim createEmptyInstance() => create();
  static $pb.PbList<ChanPointShim> createRepeated() => $pb.PbList<ChanPointShim>();
  @$core.pragma('dart2js:noInline')
  static ChanPointShim getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChanPointShim>(create);
  static ChanPointShim _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get amt => $_getI64(0);
  @$pb.TagNumber(1)
  set amt($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAmt() => $_has(0);
  @$pb.TagNumber(1)
  void clearAmt() => clearField(1);

  @$pb.TagNumber(2)
  ChannelPoint get chanPoint => $_getN(1);
  @$pb.TagNumber(2)
  set chanPoint(ChannelPoint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasChanPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearChanPoint() => clearField(2);
  @$pb.TagNumber(2)
  ChannelPoint ensureChanPoint() => $_ensure(1);

  @$pb.TagNumber(3)
  KeyDescriptor get localKey => $_getN(2);
  @$pb.TagNumber(3)
  set localKey(KeyDescriptor v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocalKey() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocalKey() => clearField(3);
  @$pb.TagNumber(3)
  KeyDescriptor ensureLocalKey() => $_ensure(2);

  @$pb.TagNumber(4)
  $core.List<$core.int> get remoteKey => $_getN(3);
  @$pb.TagNumber(4)
  set remoteKey($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasRemoteKey() => $_has(3);
  @$pb.TagNumber(4)
  void clearRemoteKey() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get pendingChanId => $_getN(4);
  @$pb.TagNumber(5)
  set pendingChanId($core.List<$core.int> v) { $_setBytes(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasPendingChanId() => $_has(4);
  @$pb.TagNumber(5)
  void clearPendingChanId() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get thawHeight => $_getIZ(5);
  @$pb.TagNumber(6)
  set thawHeight($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasThawHeight() => $_has(5);
  @$pb.TagNumber(6)
  void clearThawHeight() => clearField(6);
}

class PsbtShim extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PsbtShim', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingChanId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'basePsbt', $pb.PbFieldType.OY)
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'noPublish')
    ..hasRequiredFields = false
  ;

  PsbtShim._() : super();
  factory PsbtShim({
    $core.List<$core.int> pendingChanId,
    $core.List<$core.int> basePsbt,
    $core.bool noPublish,
  }) {
    final _result = create();
    if (pendingChanId != null) {
      _result.pendingChanId = pendingChanId;
    }
    if (basePsbt != null) {
      _result.basePsbt = basePsbt;
    }
    if (noPublish != null) {
      _result.noPublish = noPublish;
    }
    return _result;
  }
  factory PsbtShim.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PsbtShim.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PsbtShim clone() => PsbtShim()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PsbtShim copyWith(void Function(PsbtShim) updates) => super.copyWith((message) => updates(message as PsbtShim)) as PsbtShim; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PsbtShim create() => PsbtShim._();
  PsbtShim createEmptyInstance() => create();
  static $pb.PbList<PsbtShim> createRepeated() => $pb.PbList<PsbtShim>();
  @$core.pragma('dart2js:noInline')
  static PsbtShim getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PsbtShim>(create);
  static PsbtShim _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get pendingChanId => $_getN(0);
  @$pb.TagNumber(1)
  set pendingChanId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPendingChanId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPendingChanId() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get basePsbt => $_getN(1);
  @$pb.TagNumber(2)
  set basePsbt($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBasePsbt() => $_has(1);
  @$pb.TagNumber(2)
  void clearBasePsbt() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get noPublish => $_getBF(2);
  @$pb.TagNumber(3)
  set noPublish($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNoPublish() => $_has(2);
  @$pb.TagNumber(3)
  void clearNoPublish() => clearField(3);
}

enum FundingShim_Shim {
  chanPointShim, 
  psbtShim, 
  notSet
}

class FundingShim extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FundingShim_Shim> _FundingShim_ShimByTag = {
    1 : FundingShim_Shim.chanPointShim,
    2 : FundingShim_Shim.psbtShim,
    0 : FundingShim_Shim.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundingShim', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ChanPointShim>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanPointShim', subBuilder: ChanPointShim.create)
    ..aOM<PsbtShim>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'psbtShim', subBuilder: PsbtShim.create)
    ..hasRequiredFields = false
  ;

  FundingShim._() : super();
  factory FundingShim({
    ChanPointShim chanPointShim,
    PsbtShim psbtShim,
  }) {
    final _result = create();
    if (chanPointShim != null) {
      _result.chanPointShim = chanPointShim;
    }
    if (psbtShim != null) {
      _result.psbtShim = psbtShim;
    }
    return _result;
  }
  factory FundingShim.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundingShim.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundingShim clone() => FundingShim()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundingShim copyWith(void Function(FundingShim) updates) => super.copyWith((message) => updates(message as FundingShim)) as FundingShim; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundingShim create() => FundingShim._();
  FundingShim createEmptyInstance() => create();
  static $pb.PbList<FundingShim> createRepeated() => $pb.PbList<FundingShim>();
  @$core.pragma('dart2js:noInline')
  static FundingShim getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundingShim>(create);
  static FundingShim _defaultInstance;

  FundingShim_Shim whichShim() => _FundingShim_ShimByTag[$_whichOneof(0)];
  void clearShim() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ChanPointShim get chanPointShim => $_getN(0);
  @$pb.TagNumber(1)
  set chanPointShim(ChanPointShim v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChanPointShim() => $_has(0);
  @$pb.TagNumber(1)
  void clearChanPointShim() => clearField(1);
  @$pb.TagNumber(1)
  ChanPointShim ensureChanPointShim() => $_ensure(0);

  @$pb.TagNumber(2)
  PsbtShim get psbtShim => $_getN(1);
  @$pb.TagNumber(2)
  set psbtShim(PsbtShim v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasPsbtShim() => $_has(1);
  @$pb.TagNumber(2)
  void clearPsbtShim() => clearField(2);
  @$pb.TagNumber(2)
  PsbtShim ensurePsbtShim() => $_ensure(1);
}

class FundingShimCancel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundingShimCancel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingChanId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  FundingShimCancel._() : super();
  factory FundingShimCancel({
    $core.List<$core.int> pendingChanId,
  }) {
    final _result = create();
    if (pendingChanId != null) {
      _result.pendingChanId = pendingChanId;
    }
    return _result;
  }
  factory FundingShimCancel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundingShimCancel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundingShimCancel clone() => FundingShimCancel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundingShimCancel copyWith(void Function(FundingShimCancel) updates) => super.copyWith((message) => updates(message as FundingShimCancel)) as FundingShimCancel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundingShimCancel create() => FundingShimCancel._();
  FundingShimCancel createEmptyInstance() => create();
  static $pb.PbList<FundingShimCancel> createRepeated() => $pb.PbList<FundingShimCancel>();
  @$core.pragma('dart2js:noInline')
  static FundingShimCancel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundingShimCancel>(create);
  static FundingShimCancel _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get pendingChanId => $_getN(0);
  @$pb.TagNumber(1)
  set pendingChanId($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPendingChanId() => $_has(0);
  @$pb.TagNumber(1)
  void clearPendingChanId() => clearField(1);
}

class FundingPsbtVerify extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundingPsbtVerify', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fundedPsbt', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingChanId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  FundingPsbtVerify._() : super();
  factory FundingPsbtVerify({
    $core.List<$core.int> fundedPsbt,
    $core.List<$core.int> pendingChanId,
  }) {
    final _result = create();
    if (fundedPsbt != null) {
      _result.fundedPsbt = fundedPsbt;
    }
    if (pendingChanId != null) {
      _result.pendingChanId = pendingChanId;
    }
    return _result;
  }
  factory FundingPsbtVerify.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundingPsbtVerify.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundingPsbtVerify clone() => FundingPsbtVerify()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundingPsbtVerify copyWith(void Function(FundingPsbtVerify) updates) => super.copyWith((message) => updates(message as FundingPsbtVerify)) as FundingPsbtVerify; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundingPsbtVerify create() => FundingPsbtVerify._();
  FundingPsbtVerify createEmptyInstance() => create();
  static $pb.PbList<FundingPsbtVerify> createRepeated() => $pb.PbList<FundingPsbtVerify>();
  @$core.pragma('dart2js:noInline')
  static FundingPsbtVerify getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundingPsbtVerify>(create);
  static FundingPsbtVerify _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get fundedPsbt => $_getN(0);
  @$pb.TagNumber(1)
  set fundedPsbt($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFundedPsbt() => $_has(0);
  @$pb.TagNumber(1)
  void clearFundedPsbt() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get pendingChanId => $_getN(1);
  @$pb.TagNumber(2)
  set pendingChanId($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPendingChanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPendingChanId() => clearField(2);
}

class FundingPsbtFinalize extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundingPsbtFinalize', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signedPsbt', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingChanId', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finalRawTx', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  FundingPsbtFinalize._() : super();
  factory FundingPsbtFinalize({
    $core.List<$core.int> signedPsbt,
    $core.List<$core.int> pendingChanId,
    $core.List<$core.int> finalRawTx,
  }) {
    final _result = create();
    if (signedPsbt != null) {
      _result.signedPsbt = signedPsbt;
    }
    if (pendingChanId != null) {
      _result.pendingChanId = pendingChanId;
    }
    if (finalRawTx != null) {
      _result.finalRawTx = finalRawTx;
    }
    return _result;
  }
  factory FundingPsbtFinalize.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundingPsbtFinalize.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundingPsbtFinalize clone() => FundingPsbtFinalize()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundingPsbtFinalize copyWith(void Function(FundingPsbtFinalize) updates) => super.copyWith((message) => updates(message as FundingPsbtFinalize)) as FundingPsbtFinalize; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundingPsbtFinalize create() => FundingPsbtFinalize._();
  FundingPsbtFinalize createEmptyInstance() => create();
  static $pb.PbList<FundingPsbtFinalize> createRepeated() => $pb.PbList<FundingPsbtFinalize>();
  @$core.pragma('dart2js:noInline')
  static FundingPsbtFinalize getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundingPsbtFinalize>(create);
  static FundingPsbtFinalize _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get signedPsbt => $_getN(0);
  @$pb.TagNumber(1)
  set signedPsbt($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignedPsbt() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignedPsbt() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get pendingChanId => $_getN(1);
  @$pb.TagNumber(2)
  set pendingChanId($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPendingChanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearPendingChanId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<$core.int> get finalRawTx => $_getN(2);
  @$pb.TagNumber(3)
  set finalRawTx($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFinalRawTx() => $_has(2);
  @$pb.TagNumber(3)
  void clearFinalRawTx() => clearField(3);
}

enum FundingTransitionMsg_Trigger {
  shimRegister, 
  shimCancel, 
  psbtVerify, 
  psbtFinalize, 
  notSet
}

class FundingTransitionMsg extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FundingTransitionMsg_Trigger> _FundingTransitionMsg_TriggerByTag = {
    1 : FundingTransitionMsg_Trigger.shimRegister,
    2 : FundingTransitionMsg_Trigger.shimCancel,
    3 : FundingTransitionMsg_Trigger.psbtVerify,
    4 : FundingTransitionMsg_Trigger.psbtFinalize,
    0 : FundingTransitionMsg_Trigger.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundingTransitionMsg', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..aOM<FundingShim>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shimRegister', subBuilder: FundingShim.create)
    ..aOM<FundingShimCancel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'shimCancel', subBuilder: FundingShimCancel.create)
    ..aOM<FundingPsbtVerify>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'psbtVerify', subBuilder: FundingPsbtVerify.create)
    ..aOM<FundingPsbtFinalize>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'psbtFinalize', subBuilder: FundingPsbtFinalize.create)
    ..hasRequiredFields = false
  ;

  FundingTransitionMsg._() : super();
  factory FundingTransitionMsg({
    FundingShim shimRegister,
    FundingShimCancel shimCancel,
    FundingPsbtVerify psbtVerify,
    FundingPsbtFinalize psbtFinalize,
  }) {
    final _result = create();
    if (shimRegister != null) {
      _result.shimRegister = shimRegister;
    }
    if (shimCancel != null) {
      _result.shimCancel = shimCancel;
    }
    if (psbtVerify != null) {
      _result.psbtVerify = psbtVerify;
    }
    if (psbtFinalize != null) {
      _result.psbtFinalize = psbtFinalize;
    }
    return _result;
  }
  factory FundingTransitionMsg.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundingTransitionMsg.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundingTransitionMsg clone() => FundingTransitionMsg()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundingTransitionMsg copyWith(void Function(FundingTransitionMsg) updates) => super.copyWith((message) => updates(message as FundingTransitionMsg)) as FundingTransitionMsg; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundingTransitionMsg create() => FundingTransitionMsg._();
  FundingTransitionMsg createEmptyInstance() => create();
  static $pb.PbList<FundingTransitionMsg> createRepeated() => $pb.PbList<FundingTransitionMsg>();
  @$core.pragma('dart2js:noInline')
  static FundingTransitionMsg getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundingTransitionMsg>(create);
  static FundingTransitionMsg _defaultInstance;

  FundingTransitionMsg_Trigger whichTrigger() => _FundingTransitionMsg_TriggerByTag[$_whichOneof(0)];
  void clearTrigger() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  FundingShim get shimRegister => $_getN(0);
  @$pb.TagNumber(1)
  set shimRegister(FundingShim v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasShimRegister() => $_has(0);
  @$pb.TagNumber(1)
  void clearShimRegister() => clearField(1);
  @$pb.TagNumber(1)
  FundingShim ensureShimRegister() => $_ensure(0);

  @$pb.TagNumber(2)
  FundingShimCancel get shimCancel => $_getN(1);
  @$pb.TagNumber(2)
  set shimCancel(FundingShimCancel v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasShimCancel() => $_has(1);
  @$pb.TagNumber(2)
  void clearShimCancel() => clearField(2);
  @$pb.TagNumber(2)
  FundingShimCancel ensureShimCancel() => $_ensure(1);

  @$pb.TagNumber(3)
  FundingPsbtVerify get psbtVerify => $_getN(2);
  @$pb.TagNumber(3)
  set psbtVerify(FundingPsbtVerify v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasPsbtVerify() => $_has(2);
  @$pb.TagNumber(3)
  void clearPsbtVerify() => clearField(3);
  @$pb.TagNumber(3)
  FundingPsbtVerify ensurePsbtVerify() => $_ensure(2);

  @$pb.TagNumber(4)
  FundingPsbtFinalize get psbtFinalize => $_getN(3);
  @$pb.TagNumber(4)
  set psbtFinalize(FundingPsbtFinalize v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasPsbtFinalize() => $_has(3);
  @$pb.TagNumber(4)
  void clearPsbtFinalize() => clearField(4);
  @$pb.TagNumber(4)
  FundingPsbtFinalize ensurePsbtFinalize() => $_ensure(3);
}

class FundingStateStepResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FundingStateStepResp', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  FundingStateStepResp._() : super();
  factory FundingStateStepResp() => create();
  factory FundingStateStepResp.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FundingStateStepResp.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FundingStateStepResp clone() => FundingStateStepResp()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FundingStateStepResp copyWith(void Function(FundingStateStepResp) updates) => super.copyWith((message) => updates(message as FundingStateStepResp)) as FundingStateStepResp; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundingStateStepResp create() => FundingStateStepResp._();
  FundingStateStepResp createEmptyInstance() => create();
  static $pb.PbList<FundingStateStepResp> createRepeated() => $pb.PbList<FundingStateStepResp>();
  @$core.pragma('dart2js:noInline')
  static FundingStateStepResp getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FundingStateStepResp>(create);
  static FundingStateStepResp _defaultInstance;
}

class PendingHTLC extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingHTLC', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'incoming')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amount')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outpoint')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maturityHeight', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blocksTilMaturity', $pb.PbFieldType.O3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'stage', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  PendingHTLC._() : super();
  factory PendingHTLC({
    $core.bool incoming,
    $fixnum.Int64 amount,
    $core.String outpoint,
    $core.int maturityHeight,
    $core.int blocksTilMaturity,
    $core.int stage,
  }) {
    final _result = create();
    if (incoming != null) {
      _result.incoming = incoming;
    }
    if (amount != null) {
      _result.amount = amount;
    }
    if (outpoint != null) {
      _result.outpoint = outpoint;
    }
    if (maturityHeight != null) {
      _result.maturityHeight = maturityHeight;
    }
    if (blocksTilMaturity != null) {
      _result.blocksTilMaturity = blocksTilMaturity;
    }
    if (stage != null) {
      _result.stage = stage;
    }
    return _result;
  }
  factory PendingHTLC.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingHTLC.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingHTLC clone() => PendingHTLC()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingHTLC copyWith(void Function(PendingHTLC) updates) => super.copyWith((message) => updates(message as PendingHTLC)) as PendingHTLC; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingHTLC create() => PendingHTLC._();
  PendingHTLC createEmptyInstance() => create();
  static $pb.PbList<PendingHTLC> createRepeated() => $pb.PbList<PendingHTLC>();
  @$core.pragma('dart2js:noInline')
  static PendingHTLC getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingHTLC>(create);
  static PendingHTLC _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get incoming => $_getBF(0);
  @$pb.TagNumber(1)
  set incoming($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncoming() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncoming() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amount => $_getI64(1);
  @$pb.TagNumber(2)
  set amount($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmount() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmount() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get outpoint => $_getSZ(2);
  @$pb.TagNumber(3)
  set outpoint($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasOutpoint() => $_has(2);
  @$pb.TagNumber(3)
  void clearOutpoint() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get maturityHeight => $_getIZ(3);
  @$pb.TagNumber(4)
  set maturityHeight($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaturityHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaturityHeight() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get blocksTilMaturity => $_getIZ(4);
  @$pb.TagNumber(5)
  set blocksTilMaturity($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBlocksTilMaturity() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlocksTilMaturity() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get stage => $_getIZ(5);
  @$pb.TagNumber(6)
  set stage($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasStage() => $_has(5);
  @$pb.TagNumber(6)
  void clearStage() => clearField(6);
}

class PendingChannelsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingChannelsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PendingChannelsRequest._() : super();
  factory PendingChannelsRequest() => create();
  factory PendingChannelsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingChannelsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingChannelsRequest clone() => PendingChannelsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingChannelsRequest copyWith(void Function(PendingChannelsRequest) updates) => super.copyWith((message) => updates(message as PendingChannelsRequest)) as PendingChannelsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsRequest create() => PendingChannelsRequest._();
  PendingChannelsRequest createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsRequest> createRepeated() => $pb.PbList<PendingChannelsRequest>();
  @$core.pragma('dart2js:noInline')
  static PendingChannelsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingChannelsRequest>(create);
  static PendingChannelsRequest _defaultInstance;
}

class PendingChannelsResponse_PendingChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingChannelsResponse.PendingChannel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteNodePub')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelPoint')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'capacity')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localBalance')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteBalance')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localChanReserveSat')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteChanReserveSat')
    ..e<Initiator>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'initiator', $pb.PbFieldType.OE, defaultOrMaker: Initiator.INITIATOR_UNKNOWN, valueOf: Initiator.valueOf, enumValues: Initiator.values)
    ..e<CommitmentType>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitmentType', $pb.PbFieldType.OE, defaultOrMaker: CommitmentType.LEGACY, valueOf: CommitmentType.valueOf, enumValues: CommitmentType.values)
    ..hasRequiredFields = false
  ;

  PendingChannelsResponse_PendingChannel._() : super();
  factory PendingChannelsResponse_PendingChannel({
    $core.String remoteNodePub,
    $core.String channelPoint,
    $fixnum.Int64 capacity,
    $fixnum.Int64 localBalance,
    $fixnum.Int64 remoteBalance,
    $fixnum.Int64 localChanReserveSat,
    $fixnum.Int64 remoteChanReserveSat,
    Initiator initiator,
    CommitmentType commitmentType,
  }) {
    final _result = create();
    if (remoteNodePub != null) {
      _result.remoteNodePub = remoteNodePub;
    }
    if (channelPoint != null) {
      _result.channelPoint = channelPoint;
    }
    if (capacity != null) {
      _result.capacity = capacity;
    }
    if (localBalance != null) {
      _result.localBalance = localBalance;
    }
    if (remoteBalance != null) {
      _result.remoteBalance = remoteBalance;
    }
    if (localChanReserveSat != null) {
      _result.localChanReserveSat = localChanReserveSat;
    }
    if (remoteChanReserveSat != null) {
      _result.remoteChanReserveSat = remoteChanReserveSat;
    }
    if (initiator != null) {
      _result.initiator = initiator;
    }
    if (commitmentType != null) {
      _result.commitmentType = commitmentType;
    }
    return _result;
  }
  factory PendingChannelsResponse_PendingChannel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse_PendingChannel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse_PendingChannel clone() => PendingChannelsResponse_PendingChannel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse_PendingChannel copyWith(void Function(PendingChannelsResponse_PendingChannel) updates) => super.copyWith((message) => updates(message as PendingChannelsResponse_PendingChannel)) as PendingChannelsResponse_PendingChannel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_PendingChannel create() => PendingChannelsResponse_PendingChannel._();
  PendingChannelsResponse_PendingChannel createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse_PendingChannel> createRepeated() => $pb.PbList<PendingChannelsResponse_PendingChannel>();
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_PendingChannel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingChannelsResponse_PendingChannel>(create);
  static PendingChannelsResponse_PendingChannel _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get remoteNodePub => $_getSZ(0);
  @$pb.TagNumber(1)
  set remoteNodePub($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRemoteNodePub() => $_has(0);
  @$pb.TagNumber(1)
  void clearRemoteNodePub() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get channelPoint => $_getSZ(1);
  @$pb.TagNumber(2)
  set channelPoint($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChannelPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearChannelPoint() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get capacity => $_getI64(2);
  @$pb.TagNumber(3)
  set capacity($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCapacity() => $_has(2);
  @$pb.TagNumber(3)
  void clearCapacity() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get localBalance => $_getI64(3);
  @$pb.TagNumber(4)
  set localBalance($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocalBalance() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocalBalance() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get remoteBalance => $_getI64(4);
  @$pb.TagNumber(5)
  set remoteBalance($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRemoteBalance() => $_has(4);
  @$pb.TagNumber(5)
  void clearRemoteBalance() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get localChanReserveSat => $_getI64(5);
  @$pb.TagNumber(6)
  set localChanReserveSat($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasLocalChanReserveSat() => $_has(5);
  @$pb.TagNumber(6)
  void clearLocalChanReserveSat() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get remoteChanReserveSat => $_getI64(6);
  @$pb.TagNumber(7)
  set remoteChanReserveSat($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasRemoteChanReserveSat() => $_has(6);
  @$pb.TagNumber(7)
  void clearRemoteChanReserveSat() => clearField(7);

  @$pb.TagNumber(8)
  Initiator get initiator => $_getN(7);
  @$pb.TagNumber(8)
  set initiator(Initiator v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasInitiator() => $_has(7);
  @$pb.TagNumber(8)
  void clearInitiator() => clearField(8);

  @$pb.TagNumber(9)
  CommitmentType get commitmentType => $_getN(8);
  @$pb.TagNumber(9)
  set commitmentType(CommitmentType v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasCommitmentType() => $_has(8);
  @$pb.TagNumber(9)
  void clearCommitmentType() => clearField(9);
}

class PendingChannelsResponse_PendingOpenChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingChannelsResponse.PendingOpenChannel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOM<PendingChannelsResponse_PendingChannel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', subBuilder: PendingChannelsResponse_PendingChannel.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmationHeight', $pb.PbFieldType.OU3)
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitFee')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitWeight')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feePerKw')
    ..hasRequiredFields = false
  ;

  PendingChannelsResponse_PendingOpenChannel._() : super();
  factory PendingChannelsResponse_PendingOpenChannel({
    PendingChannelsResponse_PendingChannel channel,
    $core.int confirmationHeight,
    $fixnum.Int64 commitFee,
    $fixnum.Int64 commitWeight,
    $fixnum.Int64 feePerKw,
  }) {
    final _result = create();
    if (channel != null) {
      _result.channel = channel;
    }
    if (confirmationHeight != null) {
      _result.confirmationHeight = confirmationHeight;
    }
    if (commitFee != null) {
      _result.commitFee = commitFee;
    }
    if (commitWeight != null) {
      _result.commitWeight = commitWeight;
    }
    if (feePerKw != null) {
      _result.feePerKw = feePerKw;
    }
    return _result;
  }
  factory PendingChannelsResponse_PendingOpenChannel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse_PendingOpenChannel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse_PendingOpenChannel clone() => PendingChannelsResponse_PendingOpenChannel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse_PendingOpenChannel copyWith(void Function(PendingChannelsResponse_PendingOpenChannel) updates) => super.copyWith((message) => updates(message as PendingChannelsResponse_PendingOpenChannel)) as PendingChannelsResponse_PendingOpenChannel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_PendingOpenChannel create() => PendingChannelsResponse_PendingOpenChannel._();
  PendingChannelsResponse_PendingOpenChannel createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse_PendingOpenChannel> createRepeated() => $pb.PbList<PendingChannelsResponse_PendingOpenChannel>();
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_PendingOpenChannel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingChannelsResponse_PendingOpenChannel>(create);
  static PendingChannelsResponse_PendingOpenChannel _defaultInstance;

  @$pb.TagNumber(1)
  PendingChannelsResponse_PendingChannel get channel => $_getN(0);
  @$pb.TagNumber(1)
  set channel(PendingChannelsResponse_PendingChannel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannel() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannel() => clearField(1);
  @$pb.TagNumber(1)
  PendingChannelsResponse_PendingChannel ensureChannel() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get confirmationHeight => $_getIZ(1);
  @$pb.TagNumber(2)
  set confirmationHeight($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfirmationHeight() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfirmationHeight() => clearField(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get commitFee => $_getI64(2);
  @$pb.TagNumber(4)
  set commitFee($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasCommitFee() => $_has(2);
  @$pb.TagNumber(4)
  void clearCommitFee() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get commitWeight => $_getI64(3);
  @$pb.TagNumber(5)
  set commitWeight($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasCommitWeight() => $_has(3);
  @$pb.TagNumber(5)
  void clearCommitWeight() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get feePerKw => $_getI64(4);
  @$pb.TagNumber(6)
  set feePerKw($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasFeePerKw() => $_has(4);
  @$pb.TagNumber(6)
  void clearFeePerKw() => clearField(6);
}

class PendingChannelsResponse_WaitingCloseChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingChannelsResponse.WaitingCloseChannel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOM<PendingChannelsResponse_PendingChannel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', subBuilder: PendingChannelsResponse_PendingChannel.create)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limboBalance')
    ..aOM<PendingChannelsResponse_Commitments>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'commitments', subBuilder: PendingChannelsResponse_Commitments.create)
    ..hasRequiredFields = false
  ;

  PendingChannelsResponse_WaitingCloseChannel._() : super();
  factory PendingChannelsResponse_WaitingCloseChannel({
    PendingChannelsResponse_PendingChannel channel,
    $fixnum.Int64 limboBalance,
    PendingChannelsResponse_Commitments commitments,
  }) {
    final _result = create();
    if (channel != null) {
      _result.channel = channel;
    }
    if (limboBalance != null) {
      _result.limboBalance = limboBalance;
    }
    if (commitments != null) {
      _result.commitments = commitments;
    }
    return _result;
  }
  factory PendingChannelsResponse_WaitingCloseChannel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse_WaitingCloseChannel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse_WaitingCloseChannel clone() => PendingChannelsResponse_WaitingCloseChannel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse_WaitingCloseChannel copyWith(void Function(PendingChannelsResponse_WaitingCloseChannel) updates) => super.copyWith((message) => updates(message as PendingChannelsResponse_WaitingCloseChannel)) as PendingChannelsResponse_WaitingCloseChannel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_WaitingCloseChannel create() => PendingChannelsResponse_WaitingCloseChannel._();
  PendingChannelsResponse_WaitingCloseChannel createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse_WaitingCloseChannel> createRepeated() => $pb.PbList<PendingChannelsResponse_WaitingCloseChannel>();
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_WaitingCloseChannel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingChannelsResponse_WaitingCloseChannel>(create);
  static PendingChannelsResponse_WaitingCloseChannel _defaultInstance;

  @$pb.TagNumber(1)
  PendingChannelsResponse_PendingChannel get channel => $_getN(0);
  @$pb.TagNumber(1)
  set channel(PendingChannelsResponse_PendingChannel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannel() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannel() => clearField(1);
  @$pb.TagNumber(1)
  PendingChannelsResponse_PendingChannel ensureChannel() => $_ensure(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get limboBalance => $_getI64(1);
  @$pb.TagNumber(2)
  set limboBalance($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLimboBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearLimboBalance() => clearField(2);

  @$pb.TagNumber(3)
  PendingChannelsResponse_Commitments get commitments => $_getN(2);
  @$pb.TagNumber(3)
  set commitments(PendingChannelsResponse_Commitments v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasCommitments() => $_has(2);
  @$pb.TagNumber(3)
  void clearCommitments() => clearField(3);
  @$pb.TagNumber(3)
  PendingChannelsResponse_Commitments ensureCommitments() => $_ensure(2);
}

class PendingChannelsResponse_Commitments extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingChannelsResponse.Commitments', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localTxid')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteTxid')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remotePendingTxid')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localCommitFeeSat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteCommitFeeSat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remotePendingCommitFeeSat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  PendingChannelsResponse_Commitments._() : super();
  factory PendingChannelsResponse_Commitments({
    $core.String localTxid,
    $core.String remoteTxid,
    $core.String remotePendingTxid,
    $fixnum.Int64 localCommitFeeSat,
    $fixnum.Int64 remoteCommitFeeSat,
    $fixnum.Int64 remotePendingCommitFeeSat,
  }) {
    final _result = create();
    if (localTxid != null) {
      _result.localTxid = localTxid;
    }
    if (remoteTxid != null) {
      _result.remoteTxid = remoteTxid;
    }
    if (remotePendingTxid != null) {
      _result.remotePendingTxid = remotePendingTxid;
    }
    if (localCommitFeeSat != null) {
      _result.localCommitFeeSat = localCommitFeeSat;
    }
    if (remoteCommitFeeSat != null) {
      _result.remoteCommitFeeSat = remoteCommitFeeSat;
    }
    if (remotePendingCommitFeeSat != null) {
      _result.remotePendingCommitFeeSat = remotePendingCommitFeeSat;
    }
    return _result;
  }
  factory PendingChannelsResponse_Commitments.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse_Commitments.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse_Commitments clone() => PendingChannelsResponse_Commitments()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse_Commitments copyWith(void Function(PendingChannelsResponse_Commitments) updates) => super.copyWith((message) => updates(message as PendingChannelsResponse_Commitments)) as PendingChannelsResponse_Commitments; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_Commitments create() => PendingChannelsResponse_Commitments._();
  PendingChannelsResponse_Commitments createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse_Commitments> createRepeated() => $pb.PbList<PendingChannelsResponse_Commitments>();
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_Commitments getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingChannelsResponse_Commitments>(create);
  static PendingChannelsResponse_Commitments _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get localTxid => $_getSZ(0);
  @$pb.TagNumber(1)
  set localTxid($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLocalTxid() => $_has(0);
  @$pb.TagNumber(1)
  void clearLocalTxid() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get remoteTxid => $_getSZ(1);
  @$pb.TagNumber(2)
  set remoteTxid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRemoteTxid() => $_has(1);
  @$pb.TagNumber(2)
  void clearRemoteTxid() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get remotePendingTxid => $_getSZ(2);
  @$pb.TagNumber(3)
  set remotePendingTxid($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasRemotePendingTxid() => $_has(2);
  @$pb.TagNumber(3)
  void clearRemotePendingTxid() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get localCommitFeeSat => $_getI64(3);
  @$pb.TagNumber(4)
  set localCommitFeeSat($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasLocalCommitFeeSat() => $_has(3);
  @$pb.TagNumber(4)
  void clearLocalCommitFeeSat() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get remoteCommitFeeSat => $_getI64(4);
  @$pb.TagNumber(5)
  set remoteCommitFeeSat($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasRemoteCommitFeeSat() => $_has(4);
  @$pb.TagNumber(5)
  void clearRemoteCommitFeeSat() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get remotePendingCommitFeeSat => $_getI64(5);
  @$pb.TagNumber(6)
  set remotePendingCommitFeeSat($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRemotePendingCommitFeeSat() => $_has(5);
  @$pb.TagNumber(6)
  void clearRemotePendingCommitFeeSat() => clearField(6);
}

class PendingChannelsResponse_ClosedChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingChannelsResponse.ClosedChannel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOM<PendingChannelsResponse_PendingChannel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', subBuilder: PendingChannelsResponse_PendingChannel.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closingTxid')
    ..hasRequiredFields = false
  ;

  PendingChannelsResponse_ClosedChannel._() : super();
  factory PendingChannelsResponse_ClosedChannel({
    PendingChannelsResponse_PendingChannel channel,
    $core.String closingTxid,
  }) {
    final _result = create();
    if (channel != null) {
      _result.channel = channel;
    }
    if (closingTxid != null) {
      _result.closingTxid = closingTxid;
    }
    return _result;
  }
  factory PendingChannelsResponse_ClosedChannel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse_ClosedChannel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse_ClosedChannel clone() => PendingChannelsResponse_ClosedChannel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse_ClosedChannel copyWith(void Function(PendingChannelsResponse_ClosedChannel) updates) => super.copyWith((message) => updates(message as PendingChannelsResponse_ClosedChannel)) as PendingChannelsResponse_ClosedChannel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_ClosedChannel create() => PendingChannelsResponse_ClosedChannel._();
  PendingChannelsResponse_ClosedChannel createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse_ClosedChannel> createRepeated() => $pb.PbList<PendingChannelsResponse_ClosedChannel>();
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_ClosedChannel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingChannelsResponse_ClosedChannel>(create);
  static PendingChannelsResponse_ClosedChannel _defaultInstance;

  @$pb.TagNumber(1)
  PendingChannelsResponse_PendingChannel get channel => $_getN(0);
  @$pb.TagNumber(1)
  set channel(PendingChannelsResponse_PendingChannel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannel() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannel() => clearField(1);
  @$pb.TagNumber(1)
  PendingChannelsResponse_PendingChannel ensureChannel() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get closingTxid => $_getSZ(1);
  @$pb.TagNumber(2)
  set closingTxid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClosingTxid() => $_has(1);
  @$pb.TagNumber(2)
  void clearClosingTxid() => clearField(2);
}

class PendingChannelsResponse_ForceClosedChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingChannelsResponse.ForceClosedChannel', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOM<PendingChannelsResponse_PendingChannel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channel', subBuilder: PendingChannelsResponse_PendingChannel.create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closingTxid')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'limboBalance')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maturityHeight', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'blocksTilMaturity', $pb.PbFieldType.O3)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'recoveredBalance')
    ..pc<PendingHTLC>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingHtlcs', $pb.PbFieldType.PM, subBuilder: PendingHTLC.create)
    ..e<PendingChannelsResponse_ForceClosedChannel_AnchorState>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'anchor', $pb.PbFieldType.OE, defaultOrMaker: PendingChannelsResponse_ForceClosedChannel_AnchorState.LIMBO, valueOf: PendingChannelsResponse_ForceClosedChannel_AnchorState.valueOf, enumValues: PendingChannelsResponse_ForceClosedChannel_AnchorState.values)
    ..hasRequiredFields = false
  ;

  PendingChannelsResponse_ForceClosedChannel._() : super();
  factory PendingChannelsResponse_ForceClosedChannel({
    PendingChannelsResponse_PendingChannel channel,
    $core.String closingTxid,
    $fixnum.Int64 limboBalance,
    $core.int maturityHeight,
    $core.int blocksTilMaturity,
    $fixnum.Int64 recoveredBalance,
    $core.Iterable<PendingHTLC> pendingHtlcs,
    PendingChannelsResponse_ForceClosedChannel_AnchorState anchor,
  }) {
    final _result = create();
    if (channel != null) {
      _result.channel = channel;
    }
    if (closingTxid != null) {
      _result.closingTxid = closingTxid;
    }
    if (limboBalance != null) {
      _result.limboBalance = limboBalance;
    }
    if (maturityHeight != null) {
      _result.maturityHeight = maturityHeight;
    }
    if (blocksTilMaturity != null) {
      _result.blocksTilMaturity = blocksTilMaturity;
    }
    if (recoveredBalance != null) {
      _result.recoveredBalance = recoveredBalance;
    }
    if (pendingHtlcs != null) {
      _result.pendingHtlcs.addAll(pendingHtlcs);
    }
    if (anchor != null) {
      _result.anchor = anchor;
    }
    return _result;
  }
  factory PendingChannelsResponse_ForceClosedChannel.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse_ForceClosedChannel.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse_ForceClosedChannel clone() => PendingChannelsResponse_ForceClosedChannel()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse_ForceClosedChannel copyWith(void Function(PendingChannelsResponse_ForceClosedChannel) updates) => super.copyWith((message) => updates(message as PendingChannelsResponse_ForceClosedChannel)) as PendingChannelsResponse_ForceClosedChannel; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_ForceClosedChannel create() => PendingChannelsResponse_ForceClosedChannel._();
  PendingChannelsResponse_ForceClosedChannel createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse_ForceClosedChannel> createRepeated() => $pb.PbList<PendingChannelsResponse_ForceClosedChannel>();
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_ForceClosedChannel getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingChannelsResponse_ForceClosedChannel>(create);
  static PendingChannelsResponse_ForceClosedChannel _defaultInstance;

  @$pb.TagNumber(1)
  PendingChannelsResponse_PendingChannel get channel => $_getN(0);
  @$pb.TagNumber(1)
  set channel(PendingChannelsResponse_PendingChannel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannel() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannel() => clearField(1);
  @$pb.TagNumber(1)
  PendingChannelsResponse_PendingChannel ensureChannel() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.String get closingTxid => $_getSZ(1);
  @$pb.TagNumber(2)
  set closingTxid($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasClosingTxid() => $_has(1);
  @$pb.TagNumber(2)
  void clearClosingTxid() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get limboBalance => $_getI64(2);
  @$pb.TagNumber(3)
  set limboBalance($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLimboBalance() => $_has(2);
  @$pb.TagNumber(3)
  void clearLimboBalance() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get maturityHeight => $_getIZ(3);
  @$pb.TagNumber(4)
  set maturityHeight($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMaturityHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearMaturityHeight() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get blocksTilMaturity => $_getIZ(4);
  @$pb.TagNumber(5)
  set blocksTilMaturity($core.int v) { $_setSignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasBlocksTilMaturity() => $_has(4);
  @$pb.TagNumber(5)
  void clearBlocksTilMaturity() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get recoveredBalance => $_getI64(5);
  @$pb.TagNumber(6)
  set recoveredBalance($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasRecoveredBalance() => $_has(5);
  @$pb.TagNumber(6)
  void clearRecoveredBalance() => clearField(6);

  @$pb.TagNumber(8)
  $core.List<PendingHTLC> get pendingHtlcs => $_getList(6);

  @$pb.TagNumber(9)
  PendingChannelsResponse_ForceClosedChannel_AnchorState get anchor => $_getN(7);
  @$pb.TagNumber(9)
  set anchor(PendingChannelsResponse_ForceClosedChannel_AnchorState v) { setField(9, v); }
  @$pb.TagNumber(9)
  $core.bool hasAnchor() => $_has(7);
  @$pb.TagNumber(9)
  void clearAnchor() => clearField(9);
}

class PendingChannelsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PendingChannelsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalLimboBalance')
    ..pc<PendingChannelsResponse_PendingOpenChannel>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingOpenChannels', $pb.PbFieldType.PM, subBuilder: PendingChannelsResponse_PendingOpenChannel.create)
    ..pc<PendingChannelsResponse_ClosedChannel>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingClosingChannels', $pb.PbFieldType.PM, subBuilder: PendingChannelsResponse_ClosedChannel.create)
    ..pc<PendingChannelsResponse_ForceClosedChannel>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingForceClosingChannels', $pb.PbFieldType.PM, subBuilder: PendingChannelsResponse_ForceClosedChannel.create)
    ..pc<PendingChannelsResponse_WaitingCloseChannel>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'waitingCloseChannels', $pb.PbFieldType.PM, subBuilder: PendingChannelsResponse_WaitingCloseChannel.create)
    ..hasRequiredFields = false
  ;

  PendingChannelsResponse._() : super();
  factory PendingChannelsResponse({
    $fixnum.Int64 totalLimboBalance,
    $core.Iterable<PendingChannelsResponse_PendingOpenChannel> pendingOpenChannels,
  @$core.Deprecated('This field is deprecated.')
    $core.Iterable<PendingChannelsResponse_ClosedChannel> pendingClosingChannels,
    $core.Iterable<PendingChannelsResponse_ForceClosedChannel> pendingForceClosingChannels,
    $core.Iterable<PendingChannelsResponse_WaitingCloseChannel> waitingCloseChannels,
  }) {
    final _result = create();
    if (totalLimboBalance != null) {
      _result.totalLimboBalance = totalLimboBalance;
    }
    if (pendingOpenChannels != null) {
      _result.pendingOpenChannels.addAll(pendingOpenChannels);
    }
    if (pendingClosingChannels != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.pendingClosingChannels.addAll(pendingClosingChannels);
    }
    if (pendingForceClosingChannels != null) {
      _result.pendingForceClosingChannels.addAll(pendingForceClosingChannels);
    }
    if (waitingCloseChannels != null) {
      _result.waitingCloseChannels.addAll(waitingCloseChannels);
    }
    return _result;
  }
  factory PendingChannelsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse clone() => PendingChannelsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PendingChannelsResponse copyWith(void Function(PendingChannelsResponse) updates) => super.copyWith((message) => updates(message as PendingChannelsResponse)) as PendingChannelsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse create() => PendingChannelsResponse._();
  PendingChannelsResponse createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse> createRepeated() => $pb.PbList<PendingChannelsResponse>();
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PendingChannelsResponse>(create);
  static PendingChannelsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get totalLimboBalance => $_getI64(0);
  @$pb.TagNumber(1)
  set totalLimboBalance($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalLimboBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalLimboBalance() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<PendingChannelsResponse_PendingOpenChannel> get pendingOpenChannels => $_getList(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.List<PendingChannelsResponse_ClosedChannel> get pendingClosingChannels => $_getList(2);

  @$pb.TagNumber(4)
  $core.List<PendingChannelsResponse_ForceClosedChannel> get pendingForceClosingChannels => $_getList(3);

  @$pb.TagNumber(5)
  $core.List<PendingChannelsResponse_WaitingCloseChannel> get waitingCloseChannels => $_getList(4);
}

class ChannelEventSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelEventSubscription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ChannelEventSubscription._() : super();
  factory ChannelEventSubscription() => create();
  factory ChannelEventSubscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelEventSubscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelEventSubscription clone() => ChannelEventSubscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelEventSubscription copyWith(void Function(ChannelEventSubscription) updates) => super.copyWith((message) => updates(message as ChannelEventSubscription)) as ChannelEventSubscription; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelEventSubscription create() => ChannelEventSubscription._();
  ChannelEventSubscription createEmptyInstance() => create();
  static $pb.PbList<ChannelEventSubscription> createRepeated() => $pb.PbList<ChannelEventSubscription>();
  @$core.pragma('dart2js:noInline')
  static ChannelEventSubscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelEventSubscription>(create);
  static ChannelEventSubscription _defaultInstance;
}

enum ChannelEventUpdate_Channel {
  openChannel, 
  closedChannel, 
  activeChannel, 
  inactiveChannel, 
  pendingOpenChannel, 
  notSet
}

class ChannelEventUpdate extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ChannelEventUpdate_Channel> _ChannelEventUpdate_ChannelByTag = {
    1 : ChannelEventUpdate_Channel.openChannel,
    2 : ChannelEventUpdate_Channel.closedChannel,
    3 : ChannelEventUpdate_Channel.activeChannel,
    4 : ChannelEventUpdate_Channel.inactiveChannel,
    6 : ChannelEventUpdate_Channel.pendingOpenChannel,
    0 : ChannelEventUpdate_Channel.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelEventUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4, 6])
    ..aOM<Channel>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'openChannel', subBuilder: Channel.create)
    ..aOM<ChannelCloseSummary>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closedChannel', subBuilder: ChannelCloseSummary.create)
    ..aOM<ChannelPoint>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'activeChannel', subBuilder: ChannelPoint.create)
    ..aOM<ChannelPoint>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'inactiveChannel', subBuilder: ChannelPoint.create)
    ..e<ChannelEventUpdate_UpdateType>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'type', $pb.PbFieldType.OE, defaultOrMaker: ChannelEventUpdate_UpdateType.OPEN_CHANNEL, valueOf: ChannelEventUpdate_UpdateType.valueOf, enumValues: ChannelEventUpdate_UpdateType.values)
    ..aOM<PendingUpdate>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingOpenChannel', subBuilder: PendingUpdate.create)
    ..hasRequiredFields = false
  ;

  ChannelEventUpdate._() : super();
  factory ChannelEventUpdate({
    Channel openChannel,
    ChannelCloseSummary closedChannel,
    ChannelPoint activeChannel,
    ChannelPoint inactiveChannel,
    ChannelEventUpdate_UpdateType type,
    PendingUpdate pendingOpenChannel,
  }) {
    final _result = create();
    if (openChannel != null) {
      _result.openChannel = openChannel;
    }
    if (closedChannel != null) {
      _result.closedChannel = closedChannel;
    }
    if (activeChannel != null) {
      _result.activeChannel = activeChannel;
    }
    if (inactiveChannel != null) {
      _result.inactiveChannel = inactiveChannel;
    }
    if (type != null) {
      _result.type = type;
    }
    if (pendingOpenChannel != null) {
      _result.pendingOpenChannel = pendingOpenChannel;
    }
    return _result;
  }
  factory ChannelEventUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelEventUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelEventUpdate clone() => ChannelEventUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelEventUpdate copyWith(void Function(ChannelEventUpdate) updates) => super.copyWith((message) => updates(message as ChannelEventUpdate)) as ChannelEventUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelEventUpdate create() => ChannelEventUpdate._();
  ChannelEventUpdate createEmptyInstance() => create();
  static $pb.PbList<ChannelEventUpdate> createRepeated() => $pb.PbList<ChannelEventUpdate>();
  @$core.pragma('dart2js:noInline')
  static ChannelEventUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelEventUpdate>(create);
  static ChannelEventUpdate _defaultInstance;

  ChannelEventUpdate_Channel whichChannel() => _ChannelEventUpdate_ChannelByTag[$_whichOneof(0)];
  void clearChannel() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  Channel get openChannel => $_getN(0);
  @$pb.TagNumber(1)
  set openChannel(Channel v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasOpenChannel() => $_has(0);
  @$pb.TagNumber(1)
  void clearOpenChannel() => clearField(1);
  @$pb.TagNumber(1)
  Channel ensureOpenChannel() => $_ensure(0);

  @$pb.TagNumber(2)
  ChannelCloseSummary get closedChannel => $_getN(1);
  @$pb.TagNumber(2)
  set closedChannel(ChannelCloseSummary v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasClosedChannel() => $_has(1);
  @$pb.TagNumber(2)
  void clearClosedChannel() => clearField(2);
  @$pb.TagNumber(2)
  ChannelCloseSummary ensureClosedChannel() => $_ensure(1);

  @$pb.TagNumber(3)
  ChannelPoint get activeChannel => $_getN(2);
  @$pb.TagNumber(3)
  set activeChannel(ChannelPoint v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasActiveChannel() => $_has(2);
  @$pb.TagNumber(3)
  void clearActiveChannel() => clearField(3);
  @$pb.TagNumber(3)
  ChannelPoint ensureActiveChannel() => $_ensure(2);

  @$pb.TagNumber(4)
  ChannelPoint get inactiveChannel => $_getN(3);
  @$pb.TagNumber(4)
  set inactiveChannel(ChannelPoint v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasInactiveChannel() => $_has(3);
  @$pb.TagNumber(4)
  void clearInactiveChannel() => clearField(4);
  @$pb.TagNumber(4)
  ChannelPoint ensureInactiveChannel() => $_ensure(3);

  @$pb.TagNumber(5)
  ChannelEventUpdate_UpdateType get type => $_getN(4);
  @$pb.TagNumber(5)
  set type(ChannelEventUpdate_UpdateType v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasType() => $_has(4);
  @$pb.TagNumber(5)
  void clearType() => clearField(5);

  @$pb.TagNumber(6)
  PendingUpdate get pendingOpenChannel => $_getN(5);
  @$pb.TagNumber(6)
  set pendingOpenChannel(PendingUpdate v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasPendingOpenChannel() => $_has(5);
  @$pb.TagNumber(6)
  void clearPendingOpenChannel() => clearField(6);
  @$pb.TagNumber(6)
  PendingUpdate ensurePendingOpenChannel() => $_ensure(5);
}

class WalletBalanceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WalletBalanceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  WalletBalanceRequest._() : super();
  factory WalletBalanceRequest() => create();
  factory WalletBalanceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletBalanceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletBalanceRequest clone() => WalletBalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletBalanceRequest copyWith(void Function(WalletBalanceRequest) updates) => super.copyWith((message) => updates(message as WalletBalanceRequest)) as WalletBalanceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletBalanceRequest create() => WalletBalanceRequest._();
  WalletBalanceRequest createEmptyInstance() => create();
  static $pb.PbList<WalletBalanceRequest> createRepeated() => $pb.PbList<WalletBalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static WalletBalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletBalanceRequest>(create);
  static WalletBalanceRequest _defaultInstance;
}

class WalletBalanceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'WalletBalanceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalBalance')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'confirmedBalance')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unconfirmedBalance')
    ..hasRequiredFields = false
  ;

  WalletBalanceResponse._() : super();
  factory WalletBalanceResponse({
    $fixnum.Int64 totalBalance,
    $fixnum.Int64 confirmedBalance,
    $fixnum.Int64 unconfirmedBalance,
  }) {
    final _result = create();
    if (totalBalance != null) {
      _result.totalBalance = totalBalance;
    }
    if (confirmedBalance != null) {
      _result.confirmedBalance = confirmedBalance;
    }
    if (unconfirmedBalance != null) {
      _result.unconfirmedBalance = unconfirmedBalance;
    }
    return _result;
  }
  factory WalletBalanceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory WalletBalanceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  WalletBalanceResponse clone() => WalletBalanceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  WalletBalanceResponse copyWith(void Function(WalletBalanceResponse) updates) => super.copyWith((message) => updates(message as WalletBalanceResponse)) as WalletBalanceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletBalanceResponse create() => WalletBalanceResponse._();
  WalletBalanceResponse createEmptyInstance() => create();
  static $pb.PbList<WalletBalanceResponse> createRepeated() => $pb.PbList<WalletBalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static WalletBalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<WalletBalanceResponse>(create);
  static WalletBalanceResponse _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get totalBalance => $_getI64(0);
  @$pb.TagNumber(1)
  set totalBalance($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalBalance() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalBalance() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get confirmedBalance => $_getI64(1);
  @$pb.TagNumber(2)
  set confirmedBalance($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasConfirmedBalance() => $_has(1);
  @$pb.TagNumber(2)
  void clearConfirmedBalance() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get unconfirmedBalance => $_getI64(2);
  @$pb.TagNumber(3)
  set unconfirmedBalance($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasUnconfirmedBalance() => $_has(2);
  @$pb.TagNumber(3)
  void clearUnconfirmedBalance() => clearField(3);
}

class Amount extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Amount', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'msat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  Amount._() : super();
  factory Amount({
    $fixnum.Int64 sat,
    $fixnum.Int64 msat,
  }) {
    final _result = create();
    if (sat != null) {
      _result.sat = sat;
    }
    if (msat != null) {
      _result.msat = msat;
    }
    return _result;
  }
  factory Amount.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Amount.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Amount clone() => Amount()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Amount copyWith(void Function(Amount) updates) => super.copyWith((message) => updates(message as Amount)) as Amount; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Amount create() => Amount._();
  Amount createEmptyInstance() => create();
  static $pb.PbList<Amount> createRepeated() => $pb.PbList<Amount>();
  @$core.pragma('dart2js:noInline')
  static Amount getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Amount>(create);
  static Amount _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get sat => $_getI64(0);
  @$pb.TagNumber(1)
  set sat($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSat() => $_has(0);
  @$pb.TagNumber(1)
  void clearSat() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get msat => $_getI64(1);
  @$pb.TagNumber(2)
  set msat($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMsat() => $_has(1);
  @$pb.TagNumber(2)
  void clearMsat() => clearField(2);
}

class ChannelBalanceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelBalanceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ChannelBalanceRequest._() : super();
  factory ChannelBalanceRequest() => create();
  factory ChannelBalanceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelBalanceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelBalanceRequest clone() => ChannelBalanceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelBalanceRequest copyWith(void Function(ChannelBalanceRequest) updates) => super.copyWith((message) => updates(message as ChannelBalanceRequest)) as ChannelBalanceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelBalanceRequest create() => ChannelBalanceRequest._();
  ChannelBalanceRequest createEmptyInstance() => create();
  static $pb.PbList<ChannelBalanceRequest> createRepeated() => $pb.PbList<ChannelBalanceRequest>();
  @$core.pragma('dart2js:noInline')
  static ChannelBalanceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelBalanceRequest>(create);
  static ChannelBalanceRequest _defaultInstance;
}

class ChannelBalanceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelBalanceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aInt64(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'balance')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingOpenBalance')
    ..aOM<Amount>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'localBalance', subBuilder: Amount.create)
    ..aOM<Amount>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'remoteBalance', subBuilder: Amount.create)
    ..aOM<Amount>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unsettledLocalBalance', subBuilder: Amount.create)
    ..aOM<Amount>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'unsettledRemoteBalance', subBuilder: Amount.create)
    ..aOM<Amount>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingOpenLocalBalance', subBuilder: Amount.create)
    ..aOM<Amount>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingOpenRemoteBalance', subBuilder: Amount.create)
    ..hasRequiredFields = false
  ;

  ChannelBalanceResponse._() : super();
  factory ChannelBalanceResponse({
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 balance,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 pendingOpenBalance,
    Amount localBalance,
    Amount remoteBalance,
    Amount unsettledLocalBalance,
    Amount unsettledRemoteBalance,
    Amount pendingOpenLocalBalance,
    Amount pendingOpenRemoteBalance,
  }) {
    final _result = create();
    if (balance != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.balance = balance;
    }
    if (pendingOpenBalance != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.pendingOpenBalance = pendingOpenBalance;
    }
    if (localBalance != null) {
      _result.localBalance = localBalance;
    }
    if (remoteBalance != null) {
      _result.remoteBalance = remoteBalance;
    }
    if (unsettledLocalBalance != null) {
      _result.unsettledLocalBalance = unsettledLocalBalance;
    }
    if (unsettledRemoteBalance != null) {
      _result.unsettledRemoteBalance = unsettledRemoteBalance;
    }
    if (pendingOpenLocalBalance != null) {
      _result.pendingOpenLocalBalance = pendingOpenLocalBalance;
    }
    if (pendingOpenRemoteBalance != null) {
      _result.pendingOpenRemoteBalance = pendingOpenRemoteBalance;
    }
    return _result;
  }
  factory ChannelBalanceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelBalanceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelBalanceResponse clone() => ChannelBalanceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelBalanceResponse copyWith(void Function(ChannelBalanceResponse) updates) => super.copyWith((message) => updates(message as ChannelBalanceResponse)) as ChannelBalanceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelBalanceResponse create() => ChannelBalanceResponse._();
  ChannelBalanceResponse createEmptyInstance() => create();
  static $pb.PbList<ChannelBalanceResponse> createRepeated() => $pb.PbList<ChannelBalanceResponse>();
  @$core.pragma('dart2js:noInline')
  static ChannelBalanceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelBalanceResponse>(create);
  static ChannelBalanceResponse _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $fixnum.Int64 get balance => $_getI64(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set balance($fixnum.Int64 v) { $_setInt64(0, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasBalance() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearBalance() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $fixnum.Int64 get pendingOpenBalance => $_getI64(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set pendingOpenBalance($fixnum.Int64 v) { $_setInt64(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasPendingOpenBalance() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearPendingOpenBalance() => clearField(2);

  @$pb.TagNumber(3)
  Amount get localBalance => $_getN(2);
  @$pb.TagNumber(3)
  set localBalance(Amount v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasLocalBalance() => $_has(2);
  @$pb.TagNumber(3)
  void clearLocalBalance() => clearField(3);
  @$pb.TagNumber(3)
  Amount ensureLocalBalance() => $_ensure(2);

  @$pb.TagNumber(4)
  Amount get remoteBalance => $_getN(3);
  @$pb.TagNumber(4)
  set remoteBalance(Amount v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRemoteBalance() => $_has(3);
  @$pb.TagNumber(4)
  void clearRemoteBalance() => clearField(4);
  @$pb.TagNumber(4)
  Amount ensureRemoteBalance() => $_ensure(3);

  @$pb.TagNumber(5)
  Amount get unsettledLocalBalance => $_getN(4);
  @$pb.TagNumber(5)
  set unsettledLocalBalance(Amount v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasUnsettledLocalBalance() => $_has(4);
  @$pb.TagNumber(5)
  void clearUnsettledLocalBalance() => clearField(5);
  @$pb.TagNumber(5)
  Amount ensureUnsettledLocalBalance() => $_ensure(4);

  @$pb.TagNumber(6)
  Amount get unsettledRemoteBalance => $_getN(5);
  @$pb.TagNumber(6)
  set unsettledRemoteBalance(Amount v) { setField(6, v); }
  @$pb.TagNumber(6)
  $core.bool hasUnsettledRemoteBalance() => $_has(5);
  @$pb.TagNumber(6)
  void clearUnsettledRemoteBalance() => clearField(6);
  @$pb.TagNumber(6)
  Amount ensureUnsettledRemoteBalance() => $_ensure(5);

  @$pb.TagNumber(7)
  Amount get pendingOpenLocalBalance => $_getN(6);
  @$pb.TagNumber(7)
  set pendingOpenLocalBalance(Amount v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasPendingOpenLocalBalance() => $_has(6);
  @$pb.TagNumber(7)
  void clearPendingOpenLocalBalance() => clearField(7);
  @$pb.TagNumber(7)
  Amount ensurePendingOpenLocalBalance() => $_ensure(6);

  @$pb.TagNumber(8)
  Amount get pendingOpenRemoteBalance => $_getN(7);
  @$pb.TagNumber(8)
  set pendingOpenRemoteBalance(Amount v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasPendingOpenRemoteBalance() => $_has(7);
  @$pb.TagNumber(8)
  void clearPendingOpenRemoteBalance() => clearField(8);
  @$pb.TagNumber(8)
  Amount ensurePendingOpenRemoteBalance() => $_ensure(7);
}

class QueryRoutesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryRoutesRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubKey')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amt')
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'finalCltvDelta', $pb.PbFieldType.O3)
    ..aOM<FeeLimit>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeLimit', subBuilder: FeeLimit.create)
    ..p<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoredNodes', $pb.PbFieldType.PY)
    ..pc<EdgeLocator>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoredEdges', $pb.PbFieldType.PM, subBuilder: EdgeLocator.create)
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'sourcePubKey')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'useMissionControl')
    ..pc<NodePair>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ignoredPairs', $pb.PbFieldType.PM, subBuilder: NodePair.create)
    ..a<$core.int>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cltvLimit', $pb.PbFieldType.OU3)
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtMsat')
    ..m<$fixnum.Int64, $core.List<$core.int>>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destCustomRecords', entryClassName: 'QueryRoutesRequest.DestCustomRecordsEntry', keyFieldType: $pb.PbFieldType.OU6, valueFieldType: $pb.PbFieldType.OY, packageName: const $pb.PackageName('lnrpc'))
    ..a<$fixnum.Int64>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'outgoingChanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastHopPubkey', $pb.PbFieldType.OY)
    ..pc<RouteHint>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routeHints', $pb.PbFieldType.PM, subBuilder: RouteHint.create)
    ..pc<FeatureBit>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destFeatures', $pb.PbFieldType.PE, valueOf: FeatureBit.valueOf, enumValues: FeatureBit.values)
    ..hasRequiredFields = false
  ;

  QueryRoutesRequest._() : super();
  factory QueryRoutesRequest({
    $core.String pubKey,
    $fixnum.Int64 amt,
    $core.int finalCltvDelta,
    FeeLimit feeLimit,
    $core.Iterable<$core.List<$core.int>> ignoredNodes,
  @$core.Deprecated('This field is deprecated.')
    $core.Iterable<EdgeLocator> ignoredEdges,
    $core.String sourcePubKey,
    $core.bool useMissionControl,
    $core.Iterable<NodePair> ignoredPairs,
    $core.int cltvLimit,
    $fixnum.Int64 amtMsat,
    $core.Map<$fixnum.Int64, $core.List<$core.int>> destCustomRecords,
    $fixnum.Int64 outgoingChanId,
    $core.List<$core.int> lastHopPubkey,
    $core.Iterable<RouteHint> routeHints,
    $core.Iterable<FeatureBit> destFeatures,
  }) {
    final _result = create();
    if (pubKey != null) {
      _result.pubKey = pubKey;
    }
    if (amt != null) {
      _result.amt = amt;
    }
    if (finalCltvDelta != null) {
      _result.finalCltvDelta = finalCltvDelta;
    }
    if (feeLimit != null) {
      _result.feeLimit = feeLimit;
    }
    if (ignoredNodes != null) {
      _result.ignoredNodes.addAll(ignoredNodes);
    }
    if (ignoredEdges != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.ignoredEdges.addAll(ignoredEdges);
    }
    if (sourcePubKey != null) {
      _result.sourcePubKey = sourcePubKey;
    }
    if (useMissionControl != null) {
      _result.useMissionControl = useMissionControl;
    }
    if (ignoredPairs != null) {
      _result.ignoredPairs.addAll(ignoredPairs);
    }
    if (cltvLimit != null) {
      _result.cltvLimit = cltvLimit;
    }
    if (amtMsat != null) {
      _result.amtMsat = amtMsat;
    }
    if (destCustomRecords != null) {
      _result.destCustomRecords.addAll(destCustomRecords);
    }
    if (outgoingChanId != null) {
      _result.outgoingChanId = outgoingChanId;
    }
    if (lastHopPubkey != null) {
      _result.lastHopPubkey = lastHopPubkey;
    }
    if (routeHints != null) {
      _result.routeHints.addAll(routeHints);
    }
    if (destFeatures != null) {
      _result.destFeatures.addAll(destFeatures);
    }
    return _result;
  }
  factory QueryRoutesRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryRoutesRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryRoutesRequest clone() => QueryRoutesRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryRoutesRequest copyWith(void Function(QueryRoutesRequest) updates) => super.copyWith((message) => updates(message as QueryRoutesRequest)) as QueryRoutesRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryRoutesRequest create() => QueryRoutesRequest._();
  QueryRoutesRequest createEmptyInstance() => create();
  static $pb.PbList<QueryRoutesRequest> createRepeated() => $pb.PbList<QueryRoutesRequest>();
  @$core.pragma('dart2js:noInline')
  static QueryRoutesRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryRoutesRequest>(create);
  static QueryRoutesRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKey() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get amt => $_getI64(1);
  @$pb.TagNumber(2)
  set amt($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAmt() => $_has(1);
  @$pb.TagNumber(2)
  void clearAmt() => clearField(2);

  @$pb.TagNumber(4)
  $core.int get finalCltvDelta => $_getIZ(2);
  @$pb.TagNumber(4)
  set finalCltvDelta($core.int v) { $_setSignedInt32(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasFinalCltvDelta() => $_has(2);
  @$pb.TagNumber(4)
  void clearFinalCltvDelta() => clearField(4);

  @$pb.TagNumber(5)
  FeeLimit get feeLimit => $_getN(3);
  @$pb.TagNumber(5)
  set feeLimit(FeeLimit v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFeeLimit() => $_has(3);
  @$pb.TagNumber(5)
  void clearFeeLimit() => clearField(5);
  @$pb.TagNumber(5)
  FeeLimit ensureFeeLimit() => $_ensure(3);

  @$pb.TagNumber(6)
  $core.List<$core.List<$core.int>> get ignoredNodes => $_getList(4);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(7)
  $core.List<EdgeLocator> get ignoredEdges => $_getList(5);

  @$pb.TagNumber(8)
  $core.String get sourcePubKey => $_getSZ(6);
  @$pb.TagNumber(8)
  set sourcePubKey($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasSourcePubKey() => $_has(6);
  @$pb.TagNumber(8)
  void clearSourcePubKey() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get useMissionControl => $_getBF(7);
  @$pb.TagNumber(9)
  set useMissionControl($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasUseMissionControl() => $_has(7);
  @$pb.TagNumber(9)
  void clearUseMissionControl() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<NodePair> get ignoredPairs => $_getList(8);

  @$pb.TagNumber(11)
  $core.int get cltvLimit => $_getIZ(9);
  @$pb.TagNumber(11)
  set cltvLimit($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasCltvLimit() => $_has(9);
  @$pb.TagNumber(11)
  void clearCltvLimit() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get amtMsat => $_getI64(10);
  @$pb.TagNumber(12)
  set amtMsat($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasAmtMsat() => $_has(10);
  @$pb.TagNumber(12)
  void clearAmtMsat() => clearField(12);

  @$pb.TagNumber(13)
  $core.Map<$fixnum.Int64, $core.List<$core.int>> get destCustomRecords => $_getMap(11);

  @$pb.TagNumber(14)
  $fixnum.Int64 get outgoingChanId => $_getI64(12);
  @$pb.TagNumber(14)
  set outgoingChanId($fixnum.Int64 v) { $_setInt64(12, v); }
  @$pb.TagNumber(14)
  $core.bool hasOutgoingChanId() => $_has(12);
  @$pb.TagNumber(14)
  void clearOutgoingChanId() => clearField(14);

  @$pb.TagNumber(15)
  $core.List<$core.int> get lastHopPubkey => $_getN(13);
  @$pb.TagNumber(15)
  set lastHopPubkey($core.List<$core.int> v) { $_setBytes(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasLastHopPubkey() => $_has(13);
  @$pb.TagNumber(15)
  void clearLastHopPubkey() => clearField(15);

  @$pb.TagNumber(16)
  $core.List<RouteHint> get routeHints => $_getList(14);

  @$pb.TagNumber(17)
  $core.List<FeatureBit> get destFeatures => $_getList(15);
}

class NodePair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NodePair', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'from', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'to', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  NodePair._() : super();
  factory NodePair({
    $core.List<$core.int> from,
    $core.List<$core.int> to,
  }) {
    final _result = create();
    if (from != null) {
      _result.from = from;
    }
    if (to != null) {
      _result.to = to;
    }
    return _result;
  }
  factory NodePair.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodePair.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodePair clone() => NodePair()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodePair copyWith(void Function(NodePair) updates) => super.copyWith((message) => updates(message as NodePair)) as NodePair; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodePair create() => NodePair._();
  NodePair createEmptyInstance() => create();
  static $pb.PbList<NodePair> createRepeated() => $pb.PbList<NodePair>();
  @$core.pragma('dart2js:noInline')
  static NodePair getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodePair>(create);
  static NodePair _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get from => $_getN(0);
  @$pb.TagNumber(1)
  set from($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasFrom() => $_has(0);
  @$pb.TagNumber(1)
  void clearFrom() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get to => $_getN(1);
  @$pb.TagNumber(2)
  set to($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasTo() => $_has(1);
  @$pb.TagNumber(2)
  void clearTo() => clearField(2);
}

class EdgeLocator extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'EdgeLocator', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'directionReverse')
    ..hasRequiredFields = false
  ;

  EdgeLocator._() : super();
  factory EdgeLocator({
    $fixnum.Int64 channelId,
    $core.bool directionReverse,
  }) {
    final _result = create();
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (directionReverse != null) {
      _result.directionReverse = directionReverse;
    }
    return _result;
  }
  factory EdgeLocator.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory EdgeLocator.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  EdgeLocator clone() => EdgeLocator()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  EdgeLocator copyWith(void Function(EdgeLocator) updates) => super.copyWith((message) => updates(message as EdgeLocator)) as EdgeLocator; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EdgeLocator create() => EdgeLocator._();
  EdgeLocator createEmptyInstance() => create();
  static $pb.PbList<EdgeLocator> createRepeated() => $pb.PbList<EdgeLocator>();
  @$core.pragma('dart2js:noInline')
  static EdgeLocator getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<EdgeLocator>(create);
  static EdgeLocator _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get channelId => $_getI64(0);
  @$pb.TagNumber(1)
  set channelId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelId() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get directionReverse => $_getBF(1);
  @$pb.TagNumber(2)
  set directionReverse($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDirectionReverse() => $_has(1);
  @$pb.TagNumber(2)
  void clearDirectionReverse() => clearField(2);
}

class QueryRoutesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'QueryRoutesResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<Route>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routes', $pb.PbFieldType.PM, subBuilder: Route.create)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'successProb', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  QueryRoutesResponse._() : super();
  factory QueryRoutesResponse({
    $core.Iterable<Route> routes,
    $core.double successProb,
  }) {
    final _result = create();
    if (routes != null) {
      _result.routes.addAll(routes);
    }
    if (successProb != null) {
      _result.successProb = successProb;
    }
    return _result;
  }
  factory QueryRoutesResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory QueryRoutesResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  QueryRoutesResponse clone() => QueryRoutesResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  QueryRoutesResponse copyWith(void Function(QueryRoutesResponse) updates) => super.copyWith((message) => updates(message as QueryRoutesResponse)) as QueryRoutesResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryRoutesResponse create() => QueryRoutesResponse._();
  QueryRoutesResponse createEmptyInstance() => create();
  static $pb.PbList<QueryRoutesResponse> createRepeated() => $pb.PbList<QueryRoutesResponse>();
  @$core.pragma('dart2js:noInline')
  static QueryRoutesResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<QueryRoutesResponse>(create);
  static QueryRoutesResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Route> get routes => $_getList(0);

  @$pb.TagNumber(2)
  $core.double get successProb => $_getN(1);
  @$pb.TagNumber(2)
  set successProb($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSuccessProb() => $_has(1);
  @$pb.TagNumber(2)
  void clearSuccessProb() => clearField(2);
}

class Hop extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Hop', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanCapacity')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtToForward')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee')
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiry', $pb.PbFieldType.OU3)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtToForwardMsat')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeMsat')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubKey')
    ..aOB(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'tlvPayload')
    ..aOM<MPPRecord>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mppRecord', subBuilder: MPPRecord.create)
    ..m<$fixnum.Int64, $core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customRecords', entryClassName: 'Hop.CustomRecordsEntry', keyFieldType: $pb.PbFieldType.OU6, valueFieldType: $pb.PbFieldType.OY, packageName: const $pb.PackageName('lnrpc'))
    ..hasRequiredFields = false
  ;

  Hop._() : super();
  factory Hop({
    $fixnum.Int64 chanId,
    $fixnum.Int64 chanCapacity,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 amtToForward,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 fee,
    $core.int expiry,
    $fixnum.Int64 amtToForwardMsat,
    $fixnum.Int64 feeMsat,
    $core.String pubKey,
    $core.bool tlvPayload,
    MPPRecord mppRecord,
    $core.Map<$fixnum.Int64, $core.List<$core.int>> customRecords,
  }) {
    final _result = create();
    if (chanId != null) {
      _result.chanId = chanId;
    }
    if (chanCapacity != null) {
      _result.chanCapacity = chanCapacity;
    }
    if (amtToForward != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.amtToForward = amtToForward;
    }
    if (fee != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.fee = fee;
    }
    if (expiry != null) {
      _result.expiry = expiry;
    }
    if (amtToForwardMsat != null) {
      _result.amtToForwardMsat = amtToForwardMsat;
    }
    if (feeMsat != null) {
      _result.feeMsat = feeMsat;
    }
    if (pubKey != null) {
      _result.pubKey = pubKey;
    }
    if (tlvPayload != null) {
      _result.tlvPayload = tlvPayload;
    }
    if (mppRecord != null) {
      _result.mppRecord = mppRecord;
    }
    if (customRecords != null) {
      _result.customRecords.addAll(customRecords);
    }
    return _result;
  }
  factory Hop.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Hop.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Hop clone() => Hop()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Hop copyWith(void Function(Hop) updates) => super.copyWith((message) => updates(message as Hop)) as Hop; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Hop create() => Hop._();
  Hop createEmptyInstance() => create();
  static $pb.PbList<Hop> createRepeated() => $pb.PbList<Hop>();
  @$core.pragma('dart2js:noInline')
  static Hop getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Hop>(create);
  static Hop _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chanId => $_getI64(0);
  @$pb.TagNumber(1)
  set chanId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChanId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChanId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get chanCapacity => $_getI64(1);
  @$pb.TagNumber(2)
  set chanCapacity($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChanCapacity() => $_has(1);
  @$pb.TagNumber(2)
  void clearChanCapacity() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $fixnum.Int64 get amtToForward => $_getI64(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set amtToForward($fixnum.Int64 v) { $_setInt64(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasAmtToForward() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearAmtToForward() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $fixnum.Int64 get fee => $_getI64(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  set fee($fixnum.Int64 v) { $_setInt64(3, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  $core.bool hasFee() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(4)
  void clearFee() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get expiry => $_getIZ(4);
  @$pb.TagNumber(5)
  set expiry($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExpiry() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpiry() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get amtToForwardMsat => $_getI64(5);
  @$pb.TagNumber(6)
  set amtToForwardMsat($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasAmtToForwardMsat() => $_has(5);
  @$pb.TagNumber(6)
  void clearAmtToForwardMsat() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get feeMsat => $_getI64(6);
  @$pb.TagNumber(7)
  set feeMsat($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasFeeMsat() => $_has(6);
  @$pb.TagNumber(7)
  void clearFeeMsat() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get pubKey => $_getSZ(7);
  @$pb.TagNumber(8)
  set pubKey($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasPubKey() => $_has(7);
  @$pb.TagNumber(8)
  void clearPubKey() => clearField(8);

  @$pb.TagNumber(9)
  $core.bool get tlvPayload => $_getBF(8);
  @$pb.TagNumber(9)
  set tlvPayload($core.bool v) { $_setBool(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasTlvPayload() => $_has(8);
  @$pb.TagNumber(9)
  void clearTlvPayload() => clearField(9);

  @$pb.TagNumber(10)
  MPPRecord get mppRecord => $_getN(9);
  @$pb.TagNumber(10)
  set mppRecord(MPPRecord v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasMppRecord() => $_has(9);
  @$pb.TagNumber(10)
  void clearMppRecord() => clearField(10);
  @$pb.TagNumber(10)
  MPPRecord ensureMppRecord() => $_ensure(9);

  @$pb.TagNumber(11)
  $core.Map<$fixnum.Int64, $core.List<$core.int>> get customRecords => $_getMap(10);
}

class MPPRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MPPRecord', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalAmtMsat')
    ..a<$core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentAddr', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MPPRecord._() : super();
  factory MPPRecord({
    $fixnum.Int64 totalAmtMsat,
    $core.List<$core.int> paymentAddr,
  }) {
    final _result = create();
    if (totalAmtMsat != null) {
      _result.totalAmtMsat = totalAmtMsat;
    }
    if (paymentAddr != null) {
      _result.paymentAddr = paymentAddr;
    }
    return _result;
  }
  factory MPPRecord.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MPPRecord.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MPPRecord clone() => MPPRecord()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MPPRecord copyWith(void Function(MPPRecord) updates) => super.copyWith((message) => updates(message as MPPRecord)) as MPPRecord; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MPPRecord create() => MPPRecord._();
  MPPRecord createEmptyInstance() => create();
  static $pb.PbList<MPPRecord> createRepeated() => $pb.PbList<MPPRecord>();
  @$core.pragma('dart2js:noInline')
  static MPPRecord getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MPPRecord>(create);
  static MPPRecord _defaultInstance;

  @$pb.TagNumber(10)
  $fixnum.Int64 get totalAmtMsat => $_getI64(0);
  @$pb.TagNumber(10)
  set totalAmtMsat($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(10)
  $core.bool hasTotalAmtMsat() => $_has(0);
  @$pb.TagNumber(10)
  void clearTotalAmtMsat() => clearField(10);

  @$pb.TagNumber(11)
  $core.List<$core.int> get paymentAddr => $_getN(1);
  @$pb.TagNumber(11)
  set paymentAddr($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(11)
  $core.bool hasPaymentAddr() => $_has(1);
  @$pb.TagNumber(11)
  void clearPaymentAddr() => clearField(11);
}

class Route extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Route', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalTimeLock', $pb.PbFieldType.OU3)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalFees')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalAmt')
    ..pc<Hop>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hops', $pb.PbFieldType.PM, subBuilder: Hop.create)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalFeesMsat')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalAmtMsat')
    ..hasRequiredFields = false
  ;

  Route._() : super();
  factory Route({
    $core.int totalTimeLock,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 totalFees,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 totalAmt,
    $core.Iterable<Hop> hops,
    $fixnum.Int64 totalFeesMsat,
    $fixnum.Int64 totalAmtMsat,
  }) {
    final _result = create();
    if (totalTimeLock != null) {
      _result.totalTimeLock = totalTimeLock;
    }
    if (totalFees != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.totalFees = totalFees;
    }
    if (totalAmt != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.totalAmt = totalAmt;
    }
    if (hops != null) {
      _result.hops.addAll(hops);
    }
    if (totalFeesMsat != null) {
      _result.totalFeesMsat = totalFeesMsat;
    }
    if (totalAmtMsat != null) {
      _result.totalAmtMsat = totalAmtMsat;
    }
    return _result;
  }
  factory Route.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Route.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Route clone() => Route()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Route copyWith(void Function(Route) updates) => super.copyWith((message) => updates(message as Route)) as Route; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Route create() => Route._();
  Route createEmptyInstance() => create();
  static $pb.PbList<Route> createRepeated() => $pb.PbList<Route>();
  @$core.pragma('dart2js:noInline')
  static Route getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Route>(create);
  static Route _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get totalTimeLock => $_getIZ(0);
  @$pb.TagNumber(1)
  set totalTimeLock($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTotalTimeLock() => $_has(0);
  @$pb.TagNumber(1)
  void clearTotalTimeLock() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $fixnum.Int64 get totalFees => $_getI64(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set totalFees($fixnum.Int64 v) { $_setInt64(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasTotalFees() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearTotalFees() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $fixnum.Int64 get totalAmt => $_getI64(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set totalAmt($fixnum.Int64 v) { $_setInt64(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasTotalAmt() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearTotalAmt() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<Hop> get hops => $_getList(3);

  @$pb.TagNumber(5)
  $fixnum.Int64 get totalFeesMsat => $_getI64(4);
  @$pb.TagNumber(5)
  set totalFeesMsat($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTotalFeesMsat() => $_has(4);
  @$pb.TagNumber(5)
  void clearTotalFeesMsat() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get totalAmtMsat => $_getI64(5);
  @$pb.TagNumber(6)
  set totalAmtMsat($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalAmtMsat() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalAmtMsat() => clearField(6);
}

class NodeInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NodeInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubKey')
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeChannels')
    ..hasRequiredFields = false
  ;

  NodeInfoRequest._() : super();
  factory NodeInfoRequest({
    $core.String pubKey,
    $core.bool includeChannels,
  }) {
    final _result = create();
    if (pubKey != null) {
      _result.pubKey = pubKey;
    }
    if (includeChannels != null) {
      _result.includeChannels = includeChannels;
    }
    return _result;
  }
  factory NodeInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeInfoRequest clone() => NodeInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeInfoRequest copyWith(void Function(NodeInfoRequest) updates) => super.copyWith((message) => updates(message as NodeInfoRequest)) as NodeInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeInfoRequest create() => NodeInfoRequest._();
  NodeInfoRequest createEmptyInstance() => create();
  static $pb.PbList<NodeInfoRequest> createRepeated() => $pb.PbList<NodeInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static NodeInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeInfoRequest>(create);
  static NodeInfoRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get pubKey => $_getSZ(0);
  @$pb.TagNumber(1)
  set pubKey($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPubKey() => $_has(0);
  @$pb.TagNumber(1)
  void clearPubKey() => clearField(1);

  @$pb.TagNumber(2)
  $core.bool get includeChannels => $_getBF(1);
  @$pb.TagNumber(2)
  set includeChannels($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIncludeChannels() => $_has(1);
  @$pb.TagNumber(2)
  void clearIncludeChannels() => clearField(2);
}

class NodeInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NodeInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOM<LightningNode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'node', subBuilder: LightningNode.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numChannels', $pb.PbFieldType.OU3)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalCapacity')
    ..pc<ChannelEdge>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channels', $pb.PbFieldType.PM, subBuilder: ChannelEdge.create)
    ..hasRequiredFields = false
  ;

  NodeInfo._() : super();
  factory NodeInfo({
    LightningNode node,
    $core.int numChannels,
    $fixnum.Int64 totalCapacity,
    $core.Iterable<ChannelEdge> channels,
  }) {
    final _result = create();
    if (node != null) {
      _result.node = node;
    }
    if (numChannels != null) {
      _result.numChannels = numChannels;
    }
    if (totalCapacity != null) {
      _result.totalCapacity = totalCapacity;
    }
    if (channels != null) {
      _result.channels.addAll(channels);
    }
    return _result;
  }
  factory NodeInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeInfo clone() => NodeInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeInfo copyWith(void Function(NodeInfo) updates) => super.copyWith((message) => updates(message as NodeInfo)) as NodeInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeInfo create() => NodeInfo._();
  NodeInfo createEmptyInstance() => create();
  static $pb.PbList<NodeInfo> createRepeated() => $pb.PbList<NodeInfo>();
  @$core.pragma('dart2js:noInline')
  static NodeInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeInfo>(create);
  static NodeInfo _defaultInstance;

  @$pb.TagNumber(1)
  LightningNode get node => $_getN(0);
  @$pb.TagNumber(1)
  set node(LightningNode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasNode() => $_has(0);
  @$pb.TagNumber(1)
  void clearNode() => clearField(1);
  @$pb.TagNumber(1)
  LightningNode ensureNode() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.int get numChannels => $_getIZ(1);
  @$pb.TagNumber(2)
  set numChannels($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNumChannels() => $_has(1);
  @$pb.TagNumber(2)
  void clearNumChannels() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get totalCapacity => $_getI64(2);
  @$pb.TagNumber(3)
  set totalCapacity($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasTotalCapacity() => $_has(2);
  @$pb.TagNumber(3)
  void clearTotalCapacity() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<ChannelEdge> get channels => $_getList(3);
}

class LightningNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'LightningNode', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastUpdate', $pb.PbFieldType.OU3)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pubKey')
    ..aOS(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alias')
    ..pc<NodeAddress>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addresses', $pb.PbFieldType.PM, subBuilder: NodeAddress.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color')
    ..m<$core.int, Feature>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'features', entryClassName: 'LightningNode.FeaturesEntry', keyFieldType: $pb.PbFieldType.OU3, valueFieldType: $pb.PbFieldType.OM, valueCreator: Feature.create, packageName: const $pb.PackageName('lnrpc'))
    ..hasRequiredFields = false
  ;

  LightningNode._() : super();
  factory LightningNode({
    $core.int lastUpdate,
    $core.String pubKey,
    $core.String alias,
    $core.Iterable<NodeAddress> addresses,
    $core.String color,
    $core.Map<$core.int, Feature> features,
  }) {
    final _result = create();
    if (lastUpdate != null) {
      _result.lastUpdate = lastUpdate;
    }
    if (pubKey != null) {
      _result.pubKey = pubKey;
    }
    if (alias != null) {
      _result.alias = alias;
    }
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    if (color != null) {
      _result.color = color;
    }
    if (features != null) {
      _result.features.addAll(features);
    }
    return _result;
  }
  factory LightningNode.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory LightningNode.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  LightningNode clone() => LightningNode()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  LightningNode copyWith(void Function(LightningNode) updates) => super.copyWith((message) => updates(message as LightningNode)) as LightningNode; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LightningNode create() => LightningNode._();
  LightningNode createEmptyInstance() => create();
  static $pb.PbList<LightningNode> createRepeated() => $pb.PbList<LightningNode>();
  @$core.pragma('dart2js:noInline')
  static LightningNode getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<LightningNode>(create);
  static LightningNode _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get lastUpdate => $_getIZ(0);
  @$pb.TagNumber(1)
  set lastUpdate($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasLastUpdate() => $_has(0);
  @$pb.TagNumber(1)
  void clearLastUpdate() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get pubKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set pubKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPubKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearPubKey() => clearField(2);

  @$pb.TagNumber(3)
  $core.String get alias => $_getSZ(2);
  @$pb.TagNumber(3)
  set alias($core.String v) { $_setString(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAlias() => $_has(2);
  @$pb.TagNumber(3)
  void clearAlias() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<NodeAddress> get addresses => $_getList(3);

  @$pb.TagNumber(5)
  $core.String get color => $_getSZ(4);
  @$pb.TagNumber(5)
  set color($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearColor() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.int, Feature> get features => $_getMap(5);
}

class NodeAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NodeAddress', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'network')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addr')
    ..hasRequiredFields = false
  ;

  NodeAddress._() : super();
  factory NodeAddress({
    $core.String network,
    $core.String addr,
  }) {
    final _result = create();
    if (network != null) {
      _result.network = network;
    }
    if (addr != null) {
      _result.addr = addr;
    }
    return _result;
  }
  factory NodeAddress.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeAddress.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeAddress clone() => NodeAddress()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeAddress copyWith(void Function(NodeAddress) updates) => super.copyWith((message) => updates(message as NodeAddress)) as NodeAddress; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeAddress create() => NodeAddress._();
  NodeAddress createEmptyInstance() => create();
  static $pb.PbList<NodeAddress> createRepeated() => $pb.PbList<NodeAddress>();
  @$core.pragma('dart2js:noInline')
  static NodeAddress getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeAddress>(create);
  static NodeAddress _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get network => $_getSZ(0);
  @$pb.TagNumber(1)
  set network($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNetwork() => $_has(0);
  @$pb.TagNumber(1)
  void clearNetwork() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get addr => $_getSZ(1);
  @$pb.TagNumber(2)
  set addr($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAddr() => $_has(1);
  @$pb.TagNumber(2)
  void clearAddr() => clearField(2);
}

class RoutingPolicy extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RoutingPolicy', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeLockDelta', $pb.PbFieldType.OU3)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minHtlc')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeBaseMsat')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeRateMilliMsat')
    ..aOB(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'disabled')
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxHtlcMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastUpdate', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  RoutingPolicy._() : super();
  factory RoutingPolicy({
    $core.int timeLockDelta,
    $fixnum.Int64 minHtlc,
    $fixnum.Int64 feeBaseMsat,
    $fixnum.Int64 feeRateMilliMsat,
    $core.bool disabled,
    $fixnum.Int64 maxHtlcMsat,
    $core.int lastUpdate,
  }) {
    final _result = create();
    if (timeLockDelta != null) {
      _result.timeLockDelta = timeLockDelta;
    }
    if (minHtlc != null) {
      _result.minHtlc = minHtlc;
    }
    if (feeBaseMsat != null) {
      _result.feeBaseMsat = feeBaseMsat;
    }
    if (feeRateMilliMsat != null) {
      _result.feeRateMilliMsat = feeRateMilliMsat;
    }
    if (disabled != null) {
      _result.disabled = disabled;
    }
    if (maxHtlcMsat != null) {
      _result.maxHtlcMsat = maxHtlcMsat;
    }
    if (lastUpdate != null) {
      _result.lastUpdate = lastUpdate;
    }
    return _result;
  }
  factory RoutingPolicy.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RoutingPolicy.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RoutingPolicy clone() => RoutingPolicy()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RoutingPolicy copyWith(void Function(RoutingPolicy) updates) => super.copyWith((message) => updates(message as RoutingPolicy)) as RoutingPolicy; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoutingPolicy create() => RoutingPolicy._();
  RoutingPolicy createEmptyInstance() => create();
  static $pb.PbList<RoutingPolicy> createRepeated() => $pb.PbList<RoutingPolicy>();
  @$core.pragma('dart2js:noInline')
  static RoutingPolicy getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RoutingPolicy>(create);
  static RoutingPolicy _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get timeLockDelta => $_getIZ(0);
  @$pb.TagNumber(1)
  set timeLockDelta($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimeLockDelta() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimeLockDelta() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get minHtlc => $_getI64(1);
  @$pb.TagNumber(2)
  set minHtlc($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMinHtlc() => $_has(1);
  @$pb.TagNumber(2)
  void clearMinHtlc() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get feeBaseMsat => $_getI64(2);
  @$pb.TagNumber(3)
  set feeBaseMsat($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFeeBaseMsat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeeBaseMsat() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get feeRateMilliMsat => $_getI64(3);
  @$pb.TagNumber(4)
  set feeRateMilliMsat($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFeeRateMilliMsat() => $_has(3);
  @$pb.TagNumber(4)
  void clearFeeRateMilliMsat() => clearField(4);

  @$pb.TagNumber(5)
  $core.bool get disabled => $_getBF(4);
  @$pb.TagNumber(5)
  set disabled($core.bool v) { $_setBool(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasDisabled() => $_has(4);
  @$pb.TagNumber(5)
  void clearDisabled() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get maxHtlcMsat => $_getI64(5);
  @$pb.TagNumber(6)
  set maxHtlcMsat($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaxHtlcMsat() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxHtlcMsat() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get lastUpdate => $_getIZ(6);
  @$pb.TagNumber(7)
  set lastUpdate($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasLastUpdate() => $_has(6);
  @$pb.TagNumber(7)
  void clearLastUpdate() => clearField(7);
}

class ChannelEdge extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelEdge', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanPoint')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastUpdate', $pb.PbFieldType.OU3)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'node1Pub')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'node2Pub')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'capacity')
    ..aOM<RoutingPolicy>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'node1Policy', subBuilder: RoutingPolicy.create)
    ..aOM<RoutingPolicy>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'node2Policy', subBuilder: RoutingPolicy.create)
    ..hasRequiredFields = false
  ;

  ChannelEdge._() : super();
  factory ChannelEdge({
    $fixnum.Int64 channelId,
    $core.String chanPoint,
  @$core.Deprecated('This field is deprecated.')
    $core.int lastUpdate,
    $core.String node1Pub,
    $core.String node2Pub,
    $fixnum.Int64 capacity,
    RoutingPolicy node1Policy,
    RoutingPolicy node2Policy,
  }) {
    final _result = create();
    if (channelId != null) {
      _result.channelId = channelId;
    }
    if (chanPoint != null) {
      _result.chanPoint = chanPoint;
    }
    if (lastUpdate != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.lastUpdate = lastUpdate;
    }
    if (node1Pub != null) {
      _result.node1Pub = node1Pub;
    }
    if (node2Pub != null) {
      _result.node2Pub = node2Pub;
    }
    if (capacity != null) {
      _result.capacity = capacity;
    }
    if (node1Policy != null) {
      _result.node1Policy = node1Policy;
    }
    if (node2Policy != null) {
      _result.node2Policy = node2Policy;
    }
    return _result;
  }
  factory ChannelEdge.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelEdge.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelEdge clone() => ChannelEdge()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelEdge copyWith(void Function(ChannelEdge) updates) => super.copyWith((message) => updates(message as ChannelEdge)) as ChannelEdge; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelEdge create() => ChannelEdge._();
  ChannelEdge createEmptyInstance() => create();
  static $pb.PbList<ChannelEdge> createRepeated() => $pb.PbList<ChannelEdge>();
  @$core.pragma('dart2js:noInline')
  static ChannelEdge getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelEdge>(create);
  static ChannelEdge _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get channelId => $_getI64(0);
  @$pb.TagNumber(1)
  set channelId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelId() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get chanPoint => $_getSZ(1);
  @$pb.TagNumber(2)
  set chanPoint($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChanPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearChanPoint() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.int get lastUpdate => $_getIZ(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set lastUpdate($core.int v) { $_setUnsignedInt32(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasLastUpdate() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearLastUpdate() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get node1Pub => $_getSZ(3);
  @$pb.TagNumber(4)
  set node1Pub($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNode1Pub() => $_has(3);
  @$pb.TagNumber(4)
  void clearNode1Pub() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get node2Pub => $_getSZ(4);
  @$pb.TagNumber(5)
  set node2Pub($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNode2Pub() => $_has(4);
  @$pb.TagNumber(5)
  void clearNode2Pub() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get capacity => $_getI64(5);
  @$pb.TagNumber(6)
  set capacity($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasCapacity() => $_has(5);
  @$pb.TagNumber(6)
  void clearCapacity() => clearField(6);

  @$pb.TagNumber(7)
  RoutingPolicy get node1Policy => $_getN(6);
  @$pb.TagNumber(7)
  set node1Policy(RoutingPolicy v) { setField(7, v); }
  @$pb.TagNumber(7)
  $core.bool hasNode1Policy() => $_has(6);
  @$pb.TagNumber(7)
  void clearNode1Policy() => clearField(7);
  @$pb.TagNumber(7)
  RoutingPolicy ensureNode1Policy() => $_ensure(6);

  @$pb.TagNumber(8)
  RoutingPolicy get node2Policy => $_getN(7);
  @$pb.TagNumber(8)
  set node2Policy(RoutingPolicy v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasNode2Policy() => $_has(7);
  @$pb.TagNumber(8)
  void clearNode2Policy() => clearField(8);
  @$pb.TagNumber(8)
  RoutingPolicy ensureNode2Policy() => $_ensure(7);
}

class ChannelGraphRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelGraphRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeUnannounced')
    ..hasRequiredFields = false
  ;

  ChannelGraphRequest._() : super();
  factory ChannelGraphRequest({
    $core.bool includeUnannounced,
  }) {
    final _result = create();
    if (includeUnannounced != null) {
      _result.includeUnannounced = includeUnannounced;
    }
    return _result;
  }
  factory ChannelGraphRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelGraphRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelGraphRequest clone() => ChannelGraphRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelGraphRequest copyWith(void Function(ChannelGraphRequest) updates) => super.copyWith((message) => updates(message as ChannelGraphRequest)) as ChannelGraphRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelGraphRequest create() => ChannelGraphRequest._();
  ChannelGraphRequest createEmptyInstance() => create();
  static $pb.PbList<ChannelGraphRequest> createRepeated() => $pb.PbList<ChannelGraphRequest>();
  @$core.pragma('dart2js:noInline')
  static ChannelGraphRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelGraphRequest>(create);
  static ChannelGraphRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get includeUnannounced => $_getBF(0);
  @$pb.TagNumber(1)
  set includeUnannounced($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncludeUnannounced() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeUnannounced() => clearField(1);
}

class ChannelGraph extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelGraph', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<LightningNode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodes', $pb.PbFieldType.PM, subBuilder: LightningNode.create)
    ..pc<ChannelEdge>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'edges', $pb.PbFieldType.PM, subBuilder: ChannelEdge.create)
    ..hasRequiredFields = false
  ;

  ChannelGraph._() : super();
  factory ChannelGraph({
    $core.Iterable<LightningNode> nodes,
    $core.Iterable<ChannelEdge> edges,
  }) {
    final _result = create();
    if (nodes != null) {
      _result.nodes.addAll(nodes);
    }
    if (edges != null) {
      _result.edges.addAll(edges);
    }
    return _result;
  }
  factory ChannelGraph.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelGraph.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelGraph clone() => ChannelGraph()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelGraph copyWith(void Function(ChannelGraph) updates) => super.copyWith((message) => updates(message as ChannelGraph)) as ChannelGraph; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelGraph create() => ChannelGraph._();
  ChannelGraph createEmptyInstance() => create();
  static $pb.PbList<ChannelGraph> createRepeated() => $pb.PbList<ChannelGraph>();
  @$core.pragma('dart2js:noInline')
  static ChannelGraph getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelGraph>(create);
  static ChannelGraph _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<LightningNode> get nodes => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<ChannelEdge> get edges => $_getList(1);
}

class NodeMetricsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NodeMetricsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<NodeMetricType>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'types', $pb.PbFieldType.PE, valueOf: NodeMetricType.valueOf, enumValues: NodeMetricType.values)
    ..hasRequiredFields = false
  ;

  NodeMetricsRequest._() : super();
  factory NodeMetricsRequest({
    $core.Iterable<NodeMetricType> types,
  }) {
    final _result = create();
    if (types != null) {
      _result.types.addAll(types);
    }
    return _result;
  }
  factory NodeMetricsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeMetricsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeMetricsRequest clone() => NodeMetricsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeMetricsRequest copyWith(void Function(NodeMetricsRequest) updates) => super.copyWith((message) => updates(message as NodeMetricsRequest)) as NodeMetricsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeMetricsRequest create() => NodeMetricsRequest._();
  NodeMetricsRequest createEmptyInstance() => create();
  static $pb.PbList<NodeMetricsRequest> createRepeated() => $pb.PbList<NodeMetricsRequest>();
  @$core.pragma('dart2js:noInline')
  static NodeMetricsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeMetricsRequest>(create);
  static NodeMetricsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NodeMetricType> get types => $_getList(0);
}

class NodeMetricsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NodeMetricsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..m<$core.String, FloatMetric>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'betweennessCentrality', entryClassName: 'NodeMetricsResponse.BetweennessCentralityEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: FloatMetric.create, packageName: const $pb.PackageName('lnrpc'))
    ..hasRequiredFields = false
  ;

  NodeMetricsResponse._() : super();
  factory NodeMetricsResponse({
    $core.Map<$core.String, FloatMetric> betweennessCentrality,
  }) {
    final _result = create();
    if (betweennessCentrality != null) {
      _result.betweennessCentrality.addAll(betweennessCentrality);
    }
    return _result;
  }
  factory NodeMetricsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeMetricsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeMetricsResponse clone() => NodeMetricsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeMetricsResponse copyWith(void Function(NodeMetricsResponse) updates) => super.copyWith((message) => updates(message as NodeMetricsResponse)) as NodeMetricsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeMetricsResponse create() => NodeMetricsResponse._();
  NodeMetricsResponse createEmptyInstance() => create();
  static $pb.PbList<NodeMetricsResponse> createRepeated() => $pb.PbList<NodeMetricsResponse>();
  @$core.pragma('dart2js:noInline')
  static NodeMetricsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeMetricsResponse>(create);
  static NodeMetricsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, FloatMetric> get betweennessCentrality => $_getMap(0);
}

class FloatMetric extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FloatMetric', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.double>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value', $pb.PbFieldType.OD)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'normalizedValue', $pb.PbFieldType.OD)
    ..hasRequiredFields = false
  ;

  FloatMetric._() : super();
  factory FloatMetric({
    $core.double value,
    $core.double normalizedValue,
  }) {
    final _result = create();
    if (value != null) {
      _result.value = value;
    }
    if (normalizedValue != null) {
      _result.normalizedValue = normalizedValue;
    }
    return _result;
  }
  factory FloatMetric.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FloatMetric.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FloatMetric clone() => FloatMetric()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FloatMetric copyWith(void Function(FloatMetric) updates) => super.copyWith((message) => updates(message as FloatMetric)) as FloatMetric; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FloatMetric create() => FloatMetric._();
  FloatMetric createEmptyInstance() => create();
  static $pb.PbList<FloatMetric> createRepeated() => $pb.PbList<FloatMetric>();
  @$core.pragma('dart2js:noInline')
  static FloatMetric getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FloatMetric>(create);
  static FloatMetric _defaultInstance;

  @$pb.TagNumber(1)
  $core.double get value => $_getN(0);
  @$pb.TagNumber(1)
  set value($core.double v) { $_setDouble(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasValue() => $_has(0);
  @$pb.TagNumber(1)
  void clearValue() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get normalizedValue => $_getN(1);
  @$pb.TagNumber(2)
  set normalizedValue($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasNormalizedValue() => $_has(1);
  @$pb.TagNumber(2)
  void clearNormalizedValue() => clearField(2);
}

class ChanInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChanInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ChanInfoRequest._() : super();
  factory ChanInfoRequest({
    $fixnum.Int64 chanId,
  }) {
    final _result = create();
    if (chanId != null) {
      _result.chanId = chanId;
    }
    return _result;
  }
  factory ChanInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChanInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChanInfoRequest clone() => ChanInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChanInfoRequest copyWith(void Function(ChanInfoRequest) updates) => super.copyWith((message) => updates(message as ChanInfoRequest)) as ChanInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChanInfoRequest create() => ChanInfoRequest._();
  ChanInfoRequest createEmptyInstance() => create();
  static $pb.PbList<ChanInfoRequest> createRepeated() => $pb.PbList<ChanInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static ChanInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChanInfoRequest>(create);
  static ChanInfoRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chanId => $_getI64(0);
  @$pb.TagNumber(1)
  set chanId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChanId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChanId() => clearField(1);
}

class NetworkInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NetworkInfoRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  NetworkInfoRequest._() : super();
  factory NetworkInfoRequest() => create();
  factory NetworkInfoRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkInfoRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkInfoRequest clone() => NetworkInfoRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkInfoRequest copyWith(void Function(NetworkInfoRequest) updates) => super.copyWith((message) => updates(message as NetworkInfoRequest)) as NetworkInfoRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NetworkInfoRequest create() => NetworkInfoRequest._();
  NetworkInfoRequest createEmptyInstance() => create();
  static $pb.PbList<NetworkInfoRequest> createRepeated() => $pb.PbList<NetworkInfoRequest>();
  @$core.pragma('dart2js:noInline')
  static NetworkInfoRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkInfoRequest>(create);
  static NetworkInfoRequest _defaultInstance;
}

class NetworkInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NetworkInfo', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'graphDiameter', $pb.PbFieldType.OU3)
    ..a<$core.double>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avgOutDegree', $pb.PbFieldType.OD)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxOutDegree', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numNodes', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numChannels', $pb.PbFieldType.OU3)
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'totalNetworkCapacity')
    ..a<$core.double>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'avgChannelSize', $pb.PbFieldType.OD)
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minChannelSize')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxChannelSize')
    ..aInt64(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'medianChannelSizeSat')
    ..a<$fixnum.Int64>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numZombieChans', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  NetworkInfo._() : super();
  factory NetworkInfo({
    $core.int graphDiameter,
    $core.double avgOutDegree,
    $core.int maxOutDegree,
    $core.int numNodes,
    $core.int numChannels,
    $fixnum.Int64 totalNetworkCapacity,
    $core.double avgChannelSize,
    $fixnum.Int64 minChannelSize,
    $fixnum.Int64 maxChannelSize,
    $fixnum.Int64 medianChannelSizeSat,
    $fixnum.Int64 numZombieChans,
  }) {
    final _result = create();
    if (graphDiameter != null) {
      _result.graphDiameter = graphDiameter;
    }
    if (avgOutDegree != null) {
      _result.avgOutDegree = avgOutDegree;
    }
    if (maxOutDegree != null) {
      _result.maxOutDegree = maxOutDegree;
    }
    if (numNodes != null) {
      _result.numNodes = numNodes;
    }
    if (numChannels != null) {
      _result.numChannels = numChannels;
    }
    if (totalNetworkCapacity != null) {
      _result.totalNetworkCapacity = totalNetworkCapacity;
    }
    if (avgChannelSize != null) {
      _result.avgChannelSize = avgChannelSize;
    }
    if (minChannelSize != null) {
      _result.minChannelSize = minChannelSize;
    }
    if (maxChannelSize != null) {
      _result.maxChannelSize = maxChannelSize;
    }
    if (medianChannelSizeSat != null) {
      _result.medianChannelSizeSat = medianChannelSizeSat;
    }
    if (numZombieChans != null) {
      _result.numZombieChans = numZombieChans;
    }
    return _result;
  }
  factory NetworkInfo.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NetworkInfo.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NetworkInfo clone() => NetworkInfo()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NetworkInfo copyWith(void Function(NetworkInfo) updates) => super.copyWith((message) => updates(message as NetworkInfo)) as NetworkInfo; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NetworkInfo create() => NetworkInfo._();
  NetworkInfo createEmptyInstance() => create();
  static $pb.PbList<NetworkInfo> createRepeated() => $pb.PbList<NetworkInfo>();
  @$core.pragma('dart2js:noInline')
  static NetworkInfo getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NetworkInfo>(create);
  static NetworkInfo _defaultInstance;

  @$pb.TagNumber(1)
  $core.int get graphDiameter => $_getIZ(0);
  @$pb.TagNumber(1)
  set graphDiameter($core.int v) { $_setUnsignedInt32(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGraphDiameter() => $_has(0);
  @$pb.TagNumber(1)
  void clearGraphDiameter() => clearField(1);

  @$pb.TagNumber(2)
  $core.double get avgOutDegree => $_getN(1);
  @$pb.TagNumber(2)
  set avgOutDegree($core.double v) { $_setDouble(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAvgOutDegree() => $_has(1);
  @$pb.TagNumber(2)
  void clearAvgOutDegree() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get maxOutDegree => $_getIZ(2);
  @$pb.TagNumber(3)
  set maxOutDegree($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxOutDegree() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxOutDegree() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get numNodes => $_getIZ(3);
  @$pb.TagNumber(4)
  set numNodes($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumNodes() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumNodes() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get numChannels => $_getIZ(4);
  @$pb.TagNumber(5)
  set numChannels($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasNumChannels() => $_has(4);
  @$pb.TagNumber(5)
  void clearNumChannels() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get totalNetworkCapacity => $_getI64(5);
  @$pb.TagNumber(6)
  set totalNetworkCapacity($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTotalNetworkCapacity() => $_has(5);
  @$pb.TagNumber(6)
  void clearTotalNetworkCapacity() => clearField(6);

  @$pb.TagNumber(7)
  $core.double get avgChannelSize => $_getN(6);
  @$pb.TagNumber(7)
  set avgChannelSize($core.double v) { $_setDouble(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAvgChannelSize() => $_has(6);
  @$pb.TagNumber(7)
  void clearAvgChannelSize() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get minChannelSize => $_getI64(7);
  @$pb.TagNumber(8)
  set minChannelSize($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMinChannelSize() => $_has(7);
  @$pb.TagNumber(8)
  void clearMinChannelSize() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get maxChannelSize => $_getI64(8);
  @$pb.TagNumber(9)
  set maxChannelSize($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasMaxChannelSize() => $_has(8);
  @$pb.TagNumber(9)
  void clearMaxChannelSize() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get medianChannelSizeSat => $_getI64(9);
  @$pb.TagNumber(10)
  set medianChannelSizeSat($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMedianChannelSizeSat() => $_has(9);
  @$pb.TagNumber(10)
  void clearMedianChannelSizeSat() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get numZombieChans => $_getI64(10);
  @$pb.TagNumber(11)
  set numZombieChans($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasNumZombieChans() => $_has(10);
  @$pb.TagNumber(11)
  void clearNumZombieChans() => clearField(11);
}

class StopRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StopRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StopRequest._() : super();
  factory StopRequest() => create();
  factory StopRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StopRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StopRequest clone() => StopRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StopRequest copyWith(void Function(StopRequest) updates) => super.copyWith((message) => updates(message as StopRequest)) as StopRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StopRequest create() => StopRequest._();
  StopRequest createEmptyInstance() => create();
  static $pb.PbList<StopRequest> createRepeated() => $pb.PbList<StopRequest>();
  @$core.pragma('dart2js:noInline')
  static StopRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StopRequest>(create);
  static StopRequest _defaultInstance;
}

class StopResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'StopResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  StopResponse._() : super();
  factory StopResponse() => create();
  factory StopResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory StopResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  StopResponse clone() => StopResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  StopResponse copyWith(void Function(StopResponse) updates) => super.copyWith((message) => updates(message as StopResponse)) as StopResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StopResponse create() => StopResponse._();
  StopResponse createEmptyInstance() => create();
  static $pb.PbList<StopResponse> createRepeated() => $pb.PbList<StopResponse>();
  @$core.pragma('dart2js:noInline')
  static StopResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<StopResponse>(create);
  static StopResponse _defaultInstance;
}

class GraphTopologySubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GraphTopologySubscription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  GraphTopologySubscription._() : super();
  factory GraphTopologySubscription() => create();
  factory GraphTopologySubscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GraphTopologySubscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GraphTopologySubscription clone() => GraphTopologySubscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GraphTopologySubscription copyWith(void Function(GraphTopologySubscription) updates) => super.copyWith((message) => updates(message as GraphTopologySubscription)) as GraphTopologySubscription; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GraphTopologySubscription create() => GraphTopologySubscription._();
  GraphTopologySubscription createEmptyInstance() => create();
  static $pb.PbList<GraphTopologySubscription> createRepeated() => $pb.PbList<GraphTopologySubscription>();
  @$core.pragma('dart2js:noInline')
  static GraphTopologySubscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GraphTopologySubscription>(create);
  static GraphTopologySubscription _defaultInstance;
}

class GraphTopologyUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'GraphTopologyUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<NodeUpdate>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodeUpdates', $pb.PbFieldType.PM, subBuilder: NodeUpdate.create)
    ..pc<ChannelEdgeUpdate>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelUpdates', $pb.PbFieldType.PM, subBuilder: ChannelEdgeUpdate.create)
    ..pc<ClosedChannelUpdate>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closedChans', $pb.PbFieldType.PM, subBuilder: ClosedChannelUpdate.create)
    ..hasRequiredFields = false
  ;

  GraphTopologyUpdate._() : super();
  factory GraphTopologyUpdate({
    $core.Iterable<NodeUpdate> nodeUpdates,
    $core.Iterable<ChannelEdgeUpdate> channelUpdates,
    $core.Iterable<ClosedChannelUpdate> closedChans,
  }) {
    final _result = create();
    if (nodeUpdates != null) {
      _result.nodeUpdates.addAll(nodeUpdates);
    }
    if (channelUpdates != null) {
      _result.channelUpdates.addAll(channelUpdates);
    }
    if (closedChans != null) {
      _result.closedChans.addAll(closedChans);
    }
    return _result;
  }
  factory GraphTopologyUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory GraphTopologyUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  GraphTopologyUpdate clone() => GraphTopologyUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  GraphTopologyUpdate copyWith(void Function(GraphTopologyUpdate) updates) => super.copyWith((message) => updates(message as GraphTopologyUpdate)) as GraphTopologyUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GraphTopologyUpdate create() => GraphTopologyUpdate._();
  GraphTopologyUpdate createEmptyInstance() => create();
  static $pb.PbList<GraphTopologyUpdate> createRepeated() => $pb.PbList<GraphTopologyUpdate>();
  @$core.pragma('dart2js:noInline')
  static GraphTopologyUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<GraphTopologyUpdate>(create);
  static GraphTopologyUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<NodeUpdate> get nodeUpdates => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<ChannelEdgeUpdate> get channelUpdates => $_getList(1);

  @$pb.TagNumber(3)
  $core.List<ClosedChannelUpdate> get closedChans => $_getList(2);
}

class NodeUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'NodeUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pPS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addresses')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'identityKey')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'globalFeatures', $pb.PbFieldType.OY)
    ..aOS(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'alias')
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'color')
    ..m<$core.int, Feature>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'features', entryClassName: 'NodeUpdate.FeaturesEntry', keyFieldType: $pb.PbFieldType.OU3, valueFieldType: $pb.PbFieldType.OM, valueCreator: Feature.create, packageName: const $pb.PackageName('lnrpc'))
    ..hasRequiredFields = false
  ;

  NodeUpdate._() : super();
  factory NodeUpdate({
    $core.Iterable<$core.String> addresses,
    $core.String identityKey,
  @$core.Deprecated('This field is deprecated.')
    $core.List<$core.int> globalFeatures,
    $core.String alias,
    $core.String color,
    $core.Map<$core.int, Feature> features,
  }) {
    final _result = create();
    if (addresses != null) {
      _result.addresses.addAll(addresses);
    }
    if (identityKey != null) {
      _result.identityKey = identityKey;
    }
    if (globalFeatures != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.globalFeatures = globalFeatures;
    }
    if (alias != null) {
      _result.alias = alias;
    }
    if (color != null) {
      _result.color = color;
    }
    if (features != null) {
      _result.features.addAll(features);
    }
    return _result;
  }
  factory NodeUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory NodeUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  NodeUpdate clone() => NodeUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  NodeUpdate copyWith(void Function(NodeUpdate) updates) => super.copyWith((message) => updates(message as NodeUpdate)) as NodeUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeUpdate create() => NodeUpdate._();
  NodeUpdate createEmptyInstance() => create();
  static $pb.PbList<NodeUpdate> createRepeated() => $pb.PbList<NodeUpdate>();
  @$core.pragma('dart2js:noInline')
  static NodeUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<NodeUpdate>(create);
  static NodeUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.String> get addresses => $_getList(0);

  @$pb.TagNumber(2)
  $core.String get identityKey => $_getSZ(1);
  @$pb.TagNumber(2)
  set identityKey($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIdentityKey() => $_has(1);
  @$pb.TagNumber(2)
  void clearIdentityKey() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.List<$core.int> get globalFeatures => $_getN(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set globalFeatures($core.List<$core.int> v) { $_setBytes(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasGlobalFeatures() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearGlobalFeatures() => clearField(3);

  @$pb.TagNumber(4)
  $core.String get alias => $_getSZ(3);
  @$pb.TagNumber(4)
  set alias($core.String v) { $_setString(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAlias() => $_has(3);
  @$pb.TagNumber(4)
  void clearAlias() => clearField(4);

  @$pb.TagNumber(5)
  $core.String get color => $_getSZ(4);
  @$pb.TagNumber(5)
  set color($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasColor() => $_has(4);
  @$pb.TagNumber(5)
  void clearColor() => clearField(5);

  @$pb.TagNumber(6)
  $core.Map<$core.int, Feature> get features => $_getMap(5);
}

class ChannelEdgeUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelEdgeUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOM<ChannelPoint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanPoint', subBuilder: ChannelPoint.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'capacity')
    ..aOM<RoutingPolicy>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routingPolicy', subBuilder: RoutingPolicy.create)
    ..aOS(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'advertisingNode')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'connectingNode')
    ..hasRequiredFields = false
  ;

  ChannelEdgeUpdate._() : super();
  factory ChannelEdgeUpdate({
    $fixnum.Int64 chanId,
    ChannelPoint chanPoint,
    $fixnum.Int64 capacity,
    RoutingPolicy routingPolicy,
    $core.String advertisingNode,
    $core.String connectingNode,
  }) {
    final _result = create();
    if (chanId != null) {
      _result.chanId = chanId;
    }
    if (chanPoint != null) {
      _result.chanPoint = chanPoint;
    }
    if (capacity != null) {
      _result.capacity = capacity;
    }
    if (routingPolicy != null) {
      _result.routingPolicy = routingPolicy;
    }
    if (advertisingNode != null) {
      _result.advertisingNode = advertisingNode;
    }
    if (connectingNode != null) {
      _result.connectingNode = connectingNode;
    }
    return _result;
  }
  factory ChannelEdgeUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelEdgeUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelEdgeUpdate clone() => ChannelEdgeUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelEdgeUpdate copyWith(void Function(ChannelEdgeUpdate) updates) => super.copyWith((message) => updates(message as ChannelEdgeUpdate)) as ChannelEdgeUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelEdgeUpdate create() => ChannelEdgeUpdate._();
  ChannelEdgeUpdate createEmptyInstance() => create();
  static $pb.PbList<ChannelEdgeUpdate> createRepeated() => $pb.PbList<ChannelEdgeUpdate>();
  @$core.pragma('dart2js:noInline')
  static ChannelEdgeUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelEdgeUpdate>(create);
  static ChannelEdgeUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chanId => $_getI64(0);
  @$pb.TagNumber(1)
  set chanId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChanId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChanId() => clearField(1);

  @$pb.TagNumber(2)
  ChannelPoint get chanPoint => $_getN(1);
  @$pb.TagNumber(2)
  set chanPoint(ChannelPoint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasChanPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearChanPoint() => clearField(2);
  @$pb.TagNumber(2)
  ChannelPoint ensureChanPoint() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get capacity => $_getI64(2);
  @$pb.TagNumber(3)
  set capacity($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasCapacity() => $_has(2);
  @$pb.TagNumber(3)
  void clearCapacity() => clearField(3);

  @$pb.TagNumber(4)
  RoutingPolicy get routingPolicy => $_getN(3);
  @$pb.TagNumber(4)
  set routingPolicy(RoutingPolicy v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasRoutingPolicy() => $_has(3);
  @$pb.TagNumber(4)
  void clearRoutingPolicy() => clearField(4);
  @$pb.TagNumber(4)
  RoutingPolicy ensureRoutingPolicy() => $_ensure(3);

  @$pb.TagNumber(5)
  $core.String get advertisingNode => $_getSZ(4);
  @$pb.TagNumber(5)
  set advertisingNode($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAdvertisingNode() => $_has(4);
  @$pb.TagNumber(5)
  void clearAdvertisingNode() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get connectingNode => $_getSZ(5);
  @$pb.TagNumber(6)
  set connectingNode($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasConnectingNode() => $_has(5);
  @$pb.TagNumber(6)
  void clearConnectingNode() => clearField(6);
}

class ClosedChannelUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ClosedChannelUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'capacity')
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'closedHeight', $pb.PbFieldType.OU3)
    ..aOM<ChannelPoint>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanPoint', subBuilder: ChannelPoint.create)
    ..hasRequiredFields = false
  ;

  ClosedChannelUpdate._() : super();
  factory ClosedChannelUpdate({
    $fixnum.Int64 chanId,
    $fixnum.Int64 capacity,
    $core.int closedHeight,
    ChannelPoint chanPoint,
  }) {
    final _result = create();
    if (chanId != null) {
      _result.chanId = chanId;
    }
    if (capacity != null) {
      _result.capacity = capacity;
    }
    if (closedHeight != null) {
      _result.closedHeight = closedHeight;
    }
    if (chanPoint != null) {
      _result.chanPoint = chanPoint;
    }
    return _result;
  }
  factory ClosedChannelUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ClosedChannelUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ClosedChannelUpdate clone() => ClosedChannelUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ClosedChannelUpdate copyWith(void Function(ClosedChannelUpdate) updates) => super.copyWith((message) => updates(message as ClosedChannelUpdate)) as ClosedChannelUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClosedChannelUpdate create() => ClosedChannelUpdate._();
  ClosedChannelUpdate createEmptyInstance() => create();
  static $pb.PbList<ClosedChannelUpdate> createRepeated() => $pb.PbList<ClosedChannelUpdate>();
  @$core.pragma('dart2js:noInline')
  static ClosedChannelUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ClosedChannelUpdate>(create);
  static ClosedChannelUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chanId => $_getI64(0);
  @$pb.TagNumber(1)
  set chanId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChanId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChanId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get capacity => $_getI64(1);
  @$pb.TagNumber(2)
  set capacity($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasCapacity() => $_has(1);
  @$pb.TagNumber(2)
  void clearCapacity() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get closedHeight => $_getIZ(2);
  @$pb.TagNumber(3)
  set closedHeight($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasClosedHeight() => $_has(2);
  @$pb.TagNumber(3)
  void clearClosedHeight() => clearField(3);

  @$pb.TagNumber(4)
  ChannelPoint get chanPoint => $_getN(3);
  @$pb.TagNumber(4)
  set chanPoint(ChannelPoint v) { setField(4, v); }
  @$pb.TagNumber(4)
  $core.bool hasChanPoint() => $_has(3);
  @$pb.TagNumber(4)
  void clearChanPoint() => clearField(4);
  @$pb.TagNumber(4)
  ChannelPoint ensureChanPoint() => $_ensure(3);
}

class HopHint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HopHint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nodeId')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeBaseMsat', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeProportionalMillionths', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cltvExpiryDelta', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  HopHint._() : super();
  factory HopHint({
    $core.String nodeId,
    $fixnum.Int64 chanId,
    $core.int feeBaseMsat,
    $core.int feeProportionalMillionths,
    $core.int cltvExpiryDelta,
  }) {
    final _result = create();
    if (nodeId != null) {
      _result.nodeId = nodeId;
    }
    if (chanId != null) {
      _result.chanId = chanId;
    }
    if (feeBaseMsat != null) {
      _result.feeBaseMsat = feeBaseMsat;
    }
    if (feeProportionalMillionths != null) {
      _result.feeProportionalMillionths = feeProportionalMillionths;
    }
    if (cltvExpiryDelta != null) {
      _result.cltvExpiryDelta = cltvExpiryDelta;
    }
    return _result;
  }
  factory HopHint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HopHint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HopHint clone() => HopHint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HopHint copyWith(void Function(HopHint) updates) => super.copyWith((message) => updates(message as HopHint)) as HopHint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HopHint create() => HopHint._();
  HopHint createEmptyInstance() => create();
  static $pb.PbList<HopHint> createRepeated() => $pb.PbList<HopHint>();
  @$core.pragma('dart2js:noInline')
  static HopHint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HopHint>(create);
  static HopHint _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get nodeId => $_getSZ(0);
  @$pb.TagNumber(1)
  set nodeId($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNodeId() => $_has(0);
  @$pb.TagNumber(1)
  void clearNodeId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get chanId => $_getI64(1);
  @$pb.TagNumber(2)
  set chanId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChanId() => $_has(1);
  @$pb.TagNumber(2)
  void clearChanId() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get feeBaseMsat => $_getIZ(2);
  @$pb.TagNumber(3)
  set feeBaseMsat($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFeeBaseMsat() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeeBaseMsat() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get feeProportionalMillionths => $_getIZ(3);
  @$pb.TagNumber(4)
  set feeProportionalMillionths($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFeeProportionalMillionths() => $_has(3);
  @$pb.TagNumber(4)
  void clearFeeProportionalMillionths() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get cltvExpiryDelta => $_getIZ(4);
  @$pb.TagNumber(5)
  set cltvExpiryDelta($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasCltvExpiryDelta() => $_has(4);
  @$pb.TagNumber(5)
  void clearCltvExpiryDelta() => clearField(5);
}

class RouteHint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RouteHint', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<HopHint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'hopHints', $pb.PbFieldType.PM, subBuilder: HopHint.create)
    ..hasRequiredFields = false
  ;

  RouteHint._() : super();
  factory RouteHint({
    $core.Iterable<HopHint> hopHints,
  }) {
    final _result = create();
    if (hopHints != null) {
      _result.hopHints.addAll(hopHints);
    }
    return _result;
  }
  factory RouteHint.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RouteHint.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RouteHint clone() => RouteHint()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RouteHint copyWith(void Function(RouteHint) updates) => super.copyWith((message) => updates(message as RouteHint)) as RouteHint; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RouteHint create() => RouteHint._();
  RouteHint createEmptyInstance() => create();
  static $pb.PbList<RouteHint> createRepeated() => $pb.PbList<RouteHint>();
  @$core.pragma('dart2js:noInline')
  static RouteHint getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RouteHint>(create);
  static RouteHint _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<HopHint> get hopHints => $_getList(0);
}

class Invoice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Invoice', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'memo')
    ..a<$core.List<$core.int>>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rPreimage', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rHash', $pb.PbFieldType.OY)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'settled')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creationDate')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'settleDate')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentRequest')
    ..a<$core.List<$core.int>>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'descriptionHash', $pb.PbFieldType.OY)
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiry')
    ..aOS(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fallbackAddr')
    ..a<$fixnum.Int64>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cltvExpiry', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..pc<RouteHint>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routeHints', $pb.PbFieldType.PM, subBuilder: RouteHint.create)
    ..aOB(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'private')
    ..a<$fixnum.Int64>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'settleIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aInt64(18, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtPaid')
    ..aInt64(19, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtPaidSat')
    ..aInt64(20, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtPaidMsat')
    ..e<Invoice_InvoiceState>(21, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: Invoice_InvoiceState.OPEN, valueOf: Invoice_InvoiceState.valueOf, enumValues: Invoice_InvoiceState.values)
    ..pc<InvoiceHTLC>(22, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htlcs', $pb.PbFieldType.PM, subBuilder: InvoiceHTLC.create)
    ..aInt64(23, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueMsat')
    ..m<$core.int, Feature>(24, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'features', entryClassName: 'Invoice.FeaturesEntry', keyFieldType: $pb.PbFieldType.OU3, valueFieldType: $pb.PbFieldType.OM, valueCreator: Feature.create, packageName: const $pb.PackageName('lnrpc'))
    ..aOB(25, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isKeysend')
    ..a<$core.List<$core.int>>(26, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentAddr', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  Invoice._() : super();
  factory Invoice({
    $core.String memo,
    $core.List<$core.int> rPreimage,
    $core.List<$core.int> rHash,
    $fixnum.Int64 value,
  @$core.Deprecated('This field is deprecated.')
    $core.bool settled,
    $fixnum.Int64 creationDate,
    $fixnum.Int64 settleDate,
    $core.String paymentRequest,
    $core.List<$core.int> descriptionHash,
    $fixnum.Int64 expiry,
    $core.String fallbackAddr,
    $fixnum.Int64 cltvExpiry,
    $core.Iterable<RouteHint> routeHints,
    $core.bool private,
    $fixnum.Int64 addIndex,
    $fixnum.Int64 settleIndex,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 amtPaid,
    $fixnum.Int64 amtPaidSat,
    $fixnum.Int64 amtPaidMsat,
    Invoice_InvoiceState state,
    $core.Iterable<InvoiceHTLC> htlcs,
    $fixnum.Int64 valueMsat,
    $core.Map<$core.int, Feature> features,
    $core.bool isKeysend,
    $core.List<$core.int> paymentAddr,
  }) {
    final _result = create();
    if (memo != null) {
      _result.memo = memo;
    }
    if (rPreimage != null) {
      _result.rPreimage = rPreimage;
    }
    if (rHash != null) {
      _result.rHash = rHash;
    }
    if (value != null) {
      _result.value = value;
    }
    if (settled != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.settled = settled;
    }
    if (creationDate != null) {
      _result.creationDate = creationDate;
    }
    if (settleDate != null) {
      _result.settleDate = settleDate;
    }
    if (paymentRequest != null) {
      _result.paymentRequest = paymentRequest;
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
    if (addIndex != null) {
      _result.addIndex = addIndex;
    }
    if (settleIndex != null) {
      _result.settleIndex = settleIndex;
    }
    if (amtPaid != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.amtPaid = amtPaid;
    }
    if (amtPaidSat != null) {
      _result.amtPaidSat = amtPaidSat;
    }
    if (amtPaidMsat != null) {
      _result.amtPaidMsat = amtPaidMsat;
    }
    if (state != null) {
      _result.state = state;
    }
    if (htlcs != null) {
      _result.htlcs.addAll(htlcs);
    }
    if (valueMsat != null) {
      _result.valueMsat = valueMsat;
    }
    if (features != null) {
      _result.features.addAll(features);
    }
    if (isKeysend != null) {
      _result.isKeysend = isKeysend;
    }
    if (paymentAddr != null) {
      _result.paymentAddr = paymentAddr;
    }
    return _result;
  }
  factory Invoice.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Invoice.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Invoice clone() => Invoice()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Invoice copyWith(void Function(Invoice) updates) => super.copyWith((message) => updates(message as Invoice)) as Invoice; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Invoice create() => Invoice._();
  Invoice createEmptyInstance() => create();
  static $pb.PbList<Invoice> createRepeated() => $pb.PbList<Invoice>();
  @$core.pragma('dart2js:noInline')
  static Invoice getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Invoice>(create);
  static Invoice _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get memo => $_getSZ(0);
  @$pb.TagNumber(1)
  set memo($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMemo() => $_has(0);
  @$pb.TagNumber(1)
  void clearMemo() => clearField(1);

  @$pb.TagNumber(3)
  $core.List<$core.int> get rPreimage => $_getN(1);
  @$pb.TagNumber(3)
  set rPreimage($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasRPreimage() => $_has(1);
  @$pb.TagNumber(3)
  void clearRPreimage() => clearField(3);

  @$pb.TagNumber(4)
  $core.List<$core.int> get rHash => $_getN(2);
  @$pb.TagNumber(4)
  set rHash($core.List<$core.int> v) { $_setBytes(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasRHash() => $_has(2);
  @$pb.TagNumber(4)
  void clearRHash() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get value => $_getI64(3);
  @$pb.TagNumber(5)
  set value($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasValue() => $_has(3);
  @$pb.TagNumber(5)
  void clearValue() => clearField(5);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool get settled => $_getBF(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  set settled($core.bool v) { $_setBool(4, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  $core.bool hasSettled() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(6)
  void clearSettled() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get creationDate => $_getI64(5);
  @$pb.TagNumber(7)
  set creationDate($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasCreationDate() => $_has(5);
  @$pb.TagNumber(7)
  void clearCreationDate() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get settleDate => $_getI64(6);
  @$pb.TagNumber(8)
  set settleDate($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasSettleDate() => $_has(6);
  @$pb.TagNumber(8)
  void clearSettleDate() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get paymentRequest => $_getSZ(7);
  @$pb.TagNumber(9)
  set paymentRequest($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasPaymentRequest() => $_has(7);
  @$pb.TagNumber(9)
  void clearPaymentRequest() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<$core.int> get descriptionHash => $_getN(8);
  @$pb.TagNumber(10)
  set descriptionHash($core.List<$core.int> v) { $_setBytes(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasDescriptionHash() => $_has(8);
  @$pb.TagNumber(10)
  void clearDescriptionHash() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get expiry => $_getI64(9);
  @$pb.TagNumber(11)
  set expiry($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasExpiry() => $_has(9);
  @$pb.TagNumber(11)
  void clearExpiry() => clearField(11);

  @$pb.TagNumber(12)
  $core.String get fallbackAddr => $_getSZ(10);
  @$pb.TagNumber(12)
  set fallbackAddr($core.String v) { $_setString(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasFallbackAddr() => $_has(10);
  @$pb.TagNumber(12)
  void clearFallbackAddr() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get cltvExpiry => $_getI64(11);
  @$pb.TagNumber(13)
  set cltvExpiry($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasCltvExpiry() => $_has(11);
  @$pb.TagNumber(13)
  void clearCltvExpiry() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<RouteHint> get routeHints => $_getList(12);

  @$pb.TagNumber(15)
  $core.bool get private => $_getBF(13);
  @$pb.TagNumber(15)
  set private($core.bool v) { $_setBool(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasPrivate() => $_has(13);
  @$pb.TagNumber(15)
  void clearPrivate() => clearField(15);

  @$pb.TagNumber(16)
  $fixnum.Int64 get addIndex => $_getI64(14);
  @$pb.TagNumber(16)
  set addIndex($fixnum.Int64 v) { $_setInt64(14, v); }
  @$pb.TagNumber(16)
  $core.bool hasAddIndex() => $_has(14);
  @$pb.TagNumber(16)
  void clearAddIndex() => clearField(16);

  @$pb.TagNumber(17)
  $fixnum.Int64 get settleIndex => $_getI64(15);
  @$pb.TagNumber(17)
  set settleIndex($fixnum.Int64 v) { $_setInt64(15, v); }
  @$pb.TagNumber(17)
  $core.bool hasSettleIndex() => $_has(15);
  @$pb.TagNumber(17)
  void clearSettleIndex() => clearField(17);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(18)
  $fixnum.Int64 get amtPaid => $_getI64(16);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(18)
  set amtPaid($fixnum.Int64 v) { $_setInt64(16, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(18)
  $core.bool hasAmtPaid() => $_has(16);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(18)
  void clearAmtPaid() => clearField(18);

  @$pb.TagNumber(19)
  $fixnum.Int64 get amtPaidSat => $_getI64(17);
  @$pb.TagNumber(19)
  set amtPaidSat($fixnum.Int64 v) { $_setInt64(17, v); }
  @$pb.TagNumber(19)
  $core.bool hasAmtPaidSat() => $_has(17);
  @$pb.TagNumber(19)
  void clearAmtPaidSat() => clearField(19);

  @$pb.TagNumber(20)
  $fixnum.Int64 get amtPaidMsat => $_getI64(18);
  @$pb.TagNumber(20)
  set amtPaidMsat($fixnum.Int64 v) { $_setInt64(18, v); }
  @$pb.TagNumber(20)
  $core.bool hasAmtPaidMsat() => $_has(18);
  @$pb.TagNumber(20)
  void clearAmtPaidMsat() => clearField(20);

  @$pb.TagNumber(21)
  Invoice_InvoiceState get state => $_getN(19);
  @$pb.TagNumber(21)
  set state(Invoice_InvoiceState v) { setField(21, v); }
  @$pb.TagNumber(21)
  $core.bool hasState() => $_has(19);
  @$pb.TagNumber(21)
  void clearState() => clearField(21);

  @$pb.TagNumber(22)
  $core.List<InvoiceHTLC> get htlcs => $_getList(20);

  @$pb.TagNumber(23)
  $fixnum.Int64 get valueMsat => $_getI64(21);
  @$pb.TagNumber(23)
  set valueMsat($fixnum.Int64 v) { $_setInt64(21, v); }
  @$pb.TagNumber(23)
  $core.bool hasValueMsat() => $_has(21);
  @$pb.TagNumber(23)
  void clearValueMsat() => clearField(23);

  @$pb.TagNumber(24)
  $core.Map<$core.int, Feature> get features => $_getMap(22);

  @$pb.TagNumber(25)
  $core.bool get isKeysend => $_getBF(23);
  @$pb.TagNumber(25)
  set isKeysend($core.bool v) { $_setBool(23, v); }
  @$pb.TagNumber(25)
  $core.bool hasIsKeysend() => $_has(23);
  @$pb.TagNumber(25)
  void clearIsKeysend() => clearField(25);

  @$pb.TagNumber(26)
  $core.List<$core.int> get paymentAddr => $_getN(24);
  @$pb.TagNumber(26)
  set paymentAddr($core.List<$core.int> v) { $_setBytes(24, v); }
  @$pb.TagNumber(26)
  $core.bool hasPaymentAddr() => $_has(24);
  @$pb.TagNumber(26)
  void clearPaymentAddr() => clearField(26);
}

class InvoiceHTLC extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InvoiceHTLC', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htlcIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'acceptHeight', $pb.PbFieldType.O3)
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'acceptTime')
    ..aInt64(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resolveTime')
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiryHeight', $pb.PbFieldType.O3)
    ..e<InvoiceHTLCState>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'state', $pb.PbFieldType.OE, defaultOrMaker: InvoiceHTLCState.ACCEPTED, valueOf: InvoiceHTLCState.valueOf, enumValues: InvoiceHTLCState.values)
    ..m<$fixnum.Int64, $core.List<$core.int>>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'customRecords', entryClassName: 'InvoiceHTLC.CustomRecordsEntry', keyFieldType: $pb.PbFieldType.OU6, valueFieldType: $pb.PbFieldType.OY, packageName: const $pb.PackageName('lnrpc'))
    ..a<$fixnum.Int64>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'mppTotalAmtMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  InvoiceHTLC._() : super();
  factory InvoiceHTLC({
    $fixnum.Int64 chanId,
    $fixnum.Int64 htlcIndex,
    $fixnum.Int64 amtMsat,
    $core.int acceptHeight,
    $fixnum.Int64 acceptTime,
    $fixnum.Int64 resolveTime,
    $core.int expiryHeight,
    InvoiceHTLCState state,
    $core.Map<$fixnum.Int64, $core.List<$core.int>> customRecords,
    $fixnum.Int64 mppTotalAmtMsat,
  }) {
    final _result = create();
    if (chanId != null) {
      _result.chanId = chanId;
    }
    if (htlcIndex != null) {
      _result.htlcIndex = htlcIndex;
    }
    if (amtMsat != null) {
      _result.amtMsat = amtMsat;
    }
    if (acceptHeight != null) {
      _result.acceptHeight = acceptHeight;
    }
    if (acceptTime != null) {
      _result.acceptTime = acceptTime;
    }
    if (resolveTime != null) {
      _result.resolveTime = resolveTime;
    }
    if (expiryHeight != null) {
      _result.expiryHeight = expiryHeight;
    }
    if (state != null) {
      _result.state = state;
    }
    if (customRecords != null) {
      _result.customRecords.addAll(customRecords);
    }
    if (mppTotalAmtMsat != null) {
      _result.mppTotalAmtMsat = mppTotalAmtMsat;
    }
    return _result;
  }
  factory InvoiceHTLC.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvoiceHTLC.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvoiceHTLC clone() => InvoiceHTLC()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvoiceHTLC copyWith(void Function(InvoiceHTLC) updates) => super.copyWith((message) => updates(message as InvoiceHTLC)) as InvoiceHTLC; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvoiceHTLC create() => InvoiceHTLC._();
  InvoiceHTLC createEmptyInstance() => create();
  static $pb.PbList<InvoiceHTLC> createRepeated() => $pb.PbList<InvoiceHTLC>();
  @$core.pragma('dart2js:noInline')
  static InvoiceHTLC getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvoiceHTLC>(create);
  static InvoiceHTLC _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get chanId => $_getI64(0);
  @$pb.TagNumber(1)
  set chanId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChanId() => $_has(0);
  @$pb.TagNumber(1)
  void clearChanId() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get htlcIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set htlcIndex($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasHtlcIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearHtlcIndex() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get amtMsat => $_getI64(2);
  @$pb.TagNumber(3)
  set amtMsat($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAmtMsat() => $_has(2);
  @$pb.TagNumber(3)
  void clearAmtMsat() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get acceptHeight => $_getIZ(3);
  @$pb.TagNumber(4)
  set acceptHeight($core.int v) { $_setSignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasAcceptHeight() => $_has(3);
  @$pb.TagNumber(4)
  void clearAcceptHeight() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get acceptTime => $_getI64(4);
  @$pb.TagNumber(5)
  set acceptTime($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasAcceptTime() => $_has(4);
  @$pb.TagNumber(5)
  void clearAcceptTime() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get resolveTime => $_getI64(5);
  @$pb.TagNumber(6)
  set resolveTime($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasResolveTime() => $_has(5);
  @$pb.TagNumber(6)
  void clearResolveTime() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get expiryHeight => $_getIZ(6);
  @$pb.TagNumber(7)
  set expiryHeight($core.int v) { $_setSignedInt32(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasExpiryHeight() => $_has(6);
  @$pb.TagNumber(7)
  void clearExpiryHeight() => clearField(7);

  @$pb.TagNumber(8)
  InvoiceHTLCState get state => $_getN(7);
  @$pb.TagNumber(8)
  set state(InvoiceHTLCState v) { setField(8, v); }
  @$pb.TagNumber(8)
  $core.bool hasState() => $_has(7);
  @$pb.TagNumber(8)
  void clearState() => clearField(8);

  @$pb.TagNumber(9)
  $core.Map<$fixnum.Int64, $core.List<$core.int>> get customRecords => $_getMap(8);

  @$pb.TagNumber(10)
  $fixnum.Int64 get mppTotalAmtMsat => $_getI64(9);
  @$pb.TagNumber(10)
  set mppTotalAmtMsat($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMppTotalAmtMsat() => $_has(9);
  @$pb.TagNumber(10)
  void clearMppTotalAmtMsat() => clearField(10);
}

class AddInvoiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AddInvoiceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rHash', $pb.PbFieldType.OY)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentRequest')
    ..a<$fixnum.Int64>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(17, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentAddr', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  AddInvoiceResponse._() : super();
  factory AddInvoiceResponse({
    $core.List<$core.int> rHash,
    $core.String paymentRequest,
    $fixnum.Int64 addIndex,
    $core.List<$core.int> paymentAddr,
  }) {
    final _result = create();
    if (rHash != null) {
      _result.rHash = rHash;
    }
    if (paymentRequest != null) {
      _result.paymentRequest = paymentRequest;
    }
    if (addIndex != null) {
      _result.addIndex = addIndex;
    }
    if (paymentAddr != null) {
      _result.paymentAddr = paymentAddr;
    }
    return _result;
  }
  factory AddInvoiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AddInvoiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AddInvoiceResponse clone() => AddInvoiceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AddInvoiceResponse copyWith(void Function(AddInvoiceResponse) updates) => super.copyWith((message) => updates(message as AddInvoiceResponse)) as AddInvoiceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddInvoiceResponse create() => AddInvoiceResponse._();
  AddInvoiceResponse createEmptyInstance() => create();
  static $pb.PbList<AddInvoiceResponse> createRepeated() => $pb.PbList<AddInvoiceResponse>();
  @$core.pragma('dart2js:noInline')
  static AddInvoiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AddInvoiceResponse>(create);
  static AddInvoiceResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get rHash => $_getN(0);
  @$pb.TagNumber(1)
  set rHash($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearRHash() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get paymentRequest => $_getSZ(1);
  @$pb.TagNumber(2)
  set paymentRequest($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaymentRequest() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaymentRequest() => clearField(2);

  @$pb.TagNumber(16)
  $fixnum.Int64 get addIndex => $_getI64(2);
  @$pb.TagNumber(16)
  set addIndex($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(16)
  $core.bool hasAddIndex() => $_has(2);
  @$pb.TagNumber(16)
  void clearAddIndex() => clearField(16);

  @$pb.TagNumber(17)
  $core.List<$core.int> get paymentAddr => $_getN(3);
  @$pb.TagNumber(17)
  set paymentAddr($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(17)
  $core.bool hasPaymentAddr() => $_has(3);
  @$pb.TagNumber(17)
  void clearPaymentAddr() => clearField(17);
}

class PaymentHash extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PaymentHash', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rHashStr')
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rHash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  PaymentHash._() : super();
  factory PaymentHash({
  @$core.Deprecated('This field is deprecated.')
    $core.String rHashStr,
    $core.List<$core.int> rHash,
  }) {
    final _result = create();
    if (rHashStr != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.rHashStr = rHashStr;
    }
    if (rHash != null) {
      _result.rHash = rHash;
    }
    return _result;
  }
  factory PaymentHash.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PaymentHash.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PaymentHash clone() => PaymentHash()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PaymentHash copyWith(void Function(PaymentHash) updates) => super.copyWith((message) => updates(message as PaymentHash)) as PaymentHash; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentHash create() => PaymentHash._();
  PaymentHash createEmptyInstance() => create();
  static $pb.PbList<PaymentHash> createRepeated() => $pb.PbList<PaymentHash>();
  @$core.pragma('dart2js:noInline')
  static PaymentHash getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PaymentHash>(create);
  static PaymentHash _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.String get rHashStr => $_getSZ(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  set rHashStr($core.String v) { $_setString(0, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  $core.bool hasRHashStr() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(1)
  void clearRHashStr() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get rHash => $_getN(1);
  @$pb.TagNumber(2)
  set rHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearRHash() => clearField(2);
}

class ListInvoiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInvoiceRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingOnly')
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'indexOffset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numMaxInvoices', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reversed')
    ..hasRequiredFields = false
  ;

  ListInvoiceRequest._() : super();
  factory ListInvoiceRequest({
    $core.bool pendingOnly,
    $fixnum.Int64 indexOffset,
    $fixnum.Int64 numMaxInvoices,
    $core.bool reversed,
  }) {
    final _result = create();
    if (pendingOnly != null) {
      _result.pendingOnly = pendingOnly;
    }
    if (indexOffset != null) {
      _result.indexOffset = indexOffset;
    }
    if (numMaxInvoices != null) {
      _result.numMaxInvoices = numMaxInvoices;
    }
    if (reversed != null) {
      _result.reversed = reversed;
    }
    return _result;
  }
  factory ListInvoiceRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInvoiceRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInvoiceRequest clone() => ListInvoiceRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInvoiceRequest copyWith(void Function(ListInvoiceRequest) updates) => super.copyWith((message) => updates(message as ListInvoiceRequest)) as ListInvoiceRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInvoiceRequest create() => ListInvoiceRequest._();
  ListInvoiceRequest createEmptyInstance() => create();
  static $pb.PbList<ListInvoiceRequest> createRepeated() => $pb.PbList<ListInvoiceRequest>();
  @$core.pragma('dart2js:noInline')
  static ListInvoiceRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInvoiceRequest>(create);
  static ListInvoiceRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get pendingOnly => $_getBF(0);
  @$pb.TagNumber(1)
  set pendingOnly($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPendingOnly() => $_has(0);
  @$pb.TagNumber(1)
  void clearPendingOnly() => clearField(1);

  @$pb.TagNumber(4)
  $fixnum.Int64 get indexOffset => $_getI64(1);
  @$pb.TagNumber(4)
  set indexOffset($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(4)
  $core.bool hasIndexOffset() => $_has(1);
  @$pb.TagNumber(4)
  void clearIndexOffset() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get numMaxInvoices => $_getI64(2);
  @$pb.TagNumber(5)
  set numMaxInvoices($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(5)
  $core.bool hasNumMaxInvoices() => $_has(2);
  @$pb.TagNumber(5)
  void clearNumMaxInvoices() => clearField(5);

  @$pb.TagNumber(6)
  $core.bool get reversed => $_getBF(3);
  @$pb.TagNumber(6)
  set reversed($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(6)
  $core.bool hasReversed() => $_has(3);
  @$pb.TagNumber(6)
  void clearReversed() => clearField(6);
}

class ListInvoiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListInvoiceResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<Invoice>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'invoices', $pb.PbFieldType.PM, subBuilder: Invoice.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastIndexOffset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstIndexOffset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListInvoiceResponse._() : super();
  factory ListInvoiceResponse({
    $core.Iterable<Invoice> invoices,
    $fixnum.Int64 lastIndexOffset,
    $fixnum.Int64 firstIndexOffset,
  }) {
    final _result = create();
    if (invoices != null) {
      _result.invoices.addAll(invoices);
    }
    if (lastIndexOffset != null) {
      _result.lastIndexOffset = lastIndexOffset;
    }
    if (firstIndexOffset != null) {
      _result.firstIndexOffset = firstIndexOffset;
    }
    return _result;
  }
  factory ListInvoiceResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListInvoiceResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListInvoiceResponse clone() => ListInvoiceResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListInvoiceResponse copyWith(void Function(ListInvoiceResponse) updates) => super.copyWith((message) => updates(message as ListInvoiceResponse)) as ListInvoiceResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInvoiceResponse create() => ListInvoiceResponse._();
  ListInvoiceResponse createEmptyInstance() => create();
  static $pb.PbList<ListInvoiceResponse> createRepeated() => $pb.PbList<ListInvoiceResponse>();
  @$core.pragma('dart2js:noInline')
  static ListInvoiceResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListInvoiceResponse>(create);
  static ListInvoiceResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Invoice> get invoices => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get lastIndexOffset => $_getI64(1);
  @$pb.TagNumber(2)
  set lastIndexOffset($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastIndexOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastIndexOffset() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get firstIndexOffset => $_getI64(2);
  @$pb.TagNumber(3)
  set firstIndexOffset($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFirstIndexOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearFirstIndexOffset() => clearField(3);
}

class InvoiceSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'InvoiceSubscription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'addIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'settleIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  InvoiceSubscription._() : super();
  factory InvoiceSubscription({
    $fixnum.Int64 addIndex,
    $fixnum.Int64 settleIndex,
  }) {
    final _result = create();
    if (addIndex != null) {
      _result.addIndex = addIndex;
    }
    if (settleIndex != null) {
      _result.settleIndex = settleIndex;
    }
    return _result;
  }
  factory InvoiceSubscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory InvoiceSubscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  InvoiceSubscription clone() => InvoiceSubscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  InvoiceSubscription copyWith(void Function(InvoiceSubscription) updates) => super.copyWith((message) => updates(message as InvoiceSubscription)) as InvoiceSubscription; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvoiceSubscription create() => InvoiceSubscription._();
  InvoiceSubscription createEmptyInstance() => create();
  static $pb.PbList<InvoiceSubscription> createRepeated() => $pb.PbList<InvoiceSubscription>();
  @$core.pragma('dart2js:noInline')
  static InvoiceSubscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<InvoiceSubscription>(create);
  static InvoiceSubscription _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get addIndex => $_getI64(0);
  @$pb.TagNumber(1)
  set addIndex($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasAddIndex() => $_has(0);
  @$pb.TagNumber(1)
  void clearAddIndex() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get settleIndex => $_getI64(1);
  @$pb.TagNumber(2)
  set settleIndex($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasSettleIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearSettleIndex() => clearField(2);
}

class Payment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Payment', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHash')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'value')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creationDate')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentPreimage')
    ..aInt64(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueSat')
    ..aInt64(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'valueMsat')
    ..aOS(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentRequest')
    ..e<Payment_PaymentStatus>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: Payment_PaymentStatus.UNKNOWN, valueOf: Payment_PaymentStatus.valueOf, enumValues: Payment_PaymentStatus.values)
    ..aInt64(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeSat')
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeMsat')
    ..aInt64(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'creationTimeNs')
    ..pc<HTLCAttempt>(14, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htlcs', $pb.PbFieldType.PM, subBuilder: HTLCAttempt.create)
    ..a<$fixnum.Int64>(15, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentIndex', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..e<PaymentFailureReason>(16, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failureReason', $pb.PbFieldType.OE, defaultOrMaker: PaymentFailureReason.FAILURE_REASON_NONE, valueOf: PaymentFailureReason.valueOf, enumValues: PaymentFailureReason.values)
    ..hasRequiredFields = false
  ;

  Payment._() : super();
  factory Payment({
    $core.String paymentHash,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 value,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 creationDate,
  @$core.Deprecated('This field is deprecated.')
    $fixnum.Int64 fee,
    $core.String paymentPreimage,
    $fixnum.Int64 valueSat,
    $fixnum.Int64 valueMsat,
    $core.String paymentRequest,
    Payment_PaymentStatus status,
    $fixnum.Int64 feeSat,
    $fixnum.Int64 feeMsat,
    $fixnum.Int64 creationTimeNs,
    $core.Iterable<HTLCAttempt> htlcs,
    $fixnum.Int64 paymentIndex,
    PaymentFailureReason failureReason,
  }) {
    final _result = create();
    if (paymentHash != null) {
      _result.paymentHash = paymentHash;
    }
    if (value != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.value = value;
    }
    if (creationDate != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.creationDate = creationDate;
    }
    if (fee != null) {
      // ignore: deprecated_member_use_from_same_package
      _result.fee = fee;
    }
    if (paymentPreimage != null) {
      _result.paymentPreimage = paymentPreimage;
    }
    if (valueSat != null) {
      _result.valueSat = valueSat;
    }
    if (valueMsat != null) {
      _result.valueMsat = valueMsat;
    }
    if (paymentRequest != null) {
      _result.paymentRequest = paymentRequest;
    }
    if (status != null) {
      _result.status = status;
    }
    if (feeSat != null) {
      _result.feeSat = feeSat;
    }
    if (feeMsat != null) {
      _result.feeMsat = feeMsat;
    }
    if (creationTimeNs != null) {
      _result.creationTimeNs = creationTimeNs;
    }
    if (htlcs != null) {
      _result.htlcs.addAll(htlcs);
    }
    if (paymentIndex != null) {
      _result.paymentIndex = paymentIndex;
    }
    if (failureReason != null) {
      _result.failureReason = failureReason;
    }
    return _result;
  }
  factory Payment.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Payment.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Payment clone() => Payment()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Payment copyWith(void Function(Payment) updates) => super.copyWith((message) => updates(message as Payment)) as Payment; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Payment create() => Payment._();
  Payment createEmptyInstance() => create();
  static $pb.PbList<Payment> createRepeated() => $pb.PbList<Payment>();
  @$core.pragma('dart2js:noInline')
  static Payment getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Payment>(create);
  static Payment _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get paymentHash => $_getSZ(0);
  @$pb.TagNumber(1)
  set paymentHash($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPaymentHash() => $_has(0);
  @$pb.TagNumber(1)
  void clearPaymentHash() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $fixnum.Int64 get value => $_getI64(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  set value($fixnum.Int64 v) { $_setInt64(1, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  $core.bool hasValue() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(2)
  void clearValue() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $fixnum.Int64 get creationDate => $_getI64(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  set creationDate($fixnum.Int64 v) { $_setInt64(2, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  $core.bool hasCreationDate() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(3)
  void clearCreationDate() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $fixnum.Int64 get fee => $_getI64(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  set fee($fixnum.Int64 v) { $_setInt64(3, v); }
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  $core.bool hasFee() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  @$pb.TagNumber(5)
  void clearFee() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get paymentPreimage => $_getSZ(4);
  @$pb.TagNumber(6)
  set paymentPreimage($core.String v) { $_setString(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasPaymentPreimage() => $_has(4);
  @$pb.TagNumber(6)
  void clearPaymentPreimage() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get valueSat => $_getI64(5);
  @$pb.TagNumber(7)
  set valueSat($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasValueSat() => $_has(5);
  @$pb.TagNumber(7)
  void clearValueSat() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get valueMsat => $_getI64(6);
  @$pb.TagNumber(8)
  set valueMsat($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasValueMsat() => $_has(6);
  @$pb.TagNumber(8)
  void clearValueMsat() => clearField(8);

  @$pb.TagNumber(9)
  $core.String get paymentRequest => $_getSZ(7);
  @$pb.TagNumber(9)
  set paymentRequest($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasPaymentRequest() => $_has(7);
  @$pb.TagNumber(9)
  void clearPaymentRequest() => clearField(9);

  @$pb.TagNumber(10)
  Payment_PaymentStatus get status => $_getN(8);
  @$pb.TagNumber(10)
  set status(Payment_PaymentStatus v) { setField(10, v); }
  @$pb.TagNumber(10)
  $core.bool hasStatus() => $_has(8);
  @$pb.TagNumber(10)
  void clearStatus() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get feeSat => $_getI64(9);
  @$pb.TagNumber(11)
  set feeSat($fixnum.Int64 v) { $_setInt64(9, v); }
  @$pb.TagNumber(11)
  $core.bool hasFeeSat() => $_has(9);
  @$pb.TagNumber(11)
  void clearFeeSat() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get feeMsat => $_getI64(10);
  @$pb.TagNumber(12)
  set feeMsat($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(12)
  $core.bool hasFeeMsat() => $_has(10);
  @$pb.TagNumber(12)
  void clearFeeMsat() => clearField(12);

  @$pb.TagNumber(13)
  $fixnum.Int64 get creationTimeNs => $_getI64(11);
  @$pb.TagNumber(13)
  set creationTimeNs($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(13)
  $core.bool hasCreationTimeNs() => $_has(11);
  @$pb.TagNumber(13)
  void clearCreationTimeNs() => clearField(13);

  @$pb.TagNumber(14)
  $core.List<HTLCAttempt> get htlcs => $_getList(12);

  @$pb.TagNumber(15)
  $fixnum.Int64 get paymentIndex => $_getI64(13);
  @$pb.TagNumber(15)
  set paymentIndex($fixnum.Int64 v) { $_setInt64(13, v); }
  @$pb.TagNumber(15)
  $core.bool hasPaymentIndex() => $_has(13);
  @$pb.TagNumber(15)
  void clearPaymentIndex() => clearField(15);

  @$pb.TagNumber(16)
  PaymentFailureReason get failureReason => $_getN(14);
  @$pb.TagNumber(16)
  set failureReason(PaymentFailureReason v) { setField(16, v); }
  @$pb.TagNumber(16)
  $core.bool hasFailureReason() => $_has(14);
  @$pb.TagNumber(16)
  void clearFailureReason() => clearField(16);
}

class HTLCAttempt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'HTLCAttempt', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..e<HTLCAttempt_HTLCStatus>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'status', $pb.PbFieldType.OE, defaultOrMaker: HTLCAttempt_HTLCStatus.IN_FLIGHT, valueOf: HTLCAttempt_HTLCStatus.valueOf, enumValues: HTLCAttempt_HTLCStatus.values)
    ..aOM<Route>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'route', subBuilder: Route.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attemptTimeNs')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'resolveTimeNs')
    ..aOM<Failure>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failure', subBuilder: Failure.create)
    ..a<$core.List<$core.int>>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'preimage', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'attemptId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  HTLCAttempt._() : super();
  factory HTLCAttempt({
    HTLCAttempt_HTLCStatus status,
    Route route,
    $fixnum.Int64 attemptTimeNs,
    $fixnum.Int64 resolveTimeNs,
    Failure failure,
    $core.List<$core.int> preimage,
    $fixnum.Int64 attemptId,
  }) {
    final _result = create();
    if (status != null) {
      _result.status = status;
    }
    if (route != null) {
      _result.route = route;
    }
    if (attemptTimeNs != null) {
      _result.attemptTimeNs = attemptTimeNs;
    }
    if (resolveTimeNs != null) {
      _result.resolveTimeNs = resolveTimeNs;
    }
    if (failure != null) {
      _result.failure = failure;
    }
    if (preimage != null) {
      _result.preimage = preimage;
    }
    if (attemptId != null) {
      _result.attemptId = attemptId;
    }
    return _result;
  }
  factory HTLCAttempt.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory HTLCAttempt.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  HTLCAttempt clone() => HTLCAttempt()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  HTLCAttempt copyWith(void Function(HTLCAttempt) updates) => super.copyWith((message) => updates(message as HTLCAttempt)) as HTLCAttempt; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HTLCAttempt create() => HTLCAttempt._();
  HTLCAttempt createEmptyInstance() => create();
  static $pb.PbList<HTLCAttempt> createRepeated() => $pb.PbList<HTLCAttempt>();
  @$core.pragma('dart2js:noInline')
  static HTLCAttempt getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<HTLCAttempt>(create);
  static HTLCAttempt _defaultInstance;

  @$pb.TagNumber(1)
  HTLCAttempt_HTLCStatus get status => $_getN(0);
  @$pb.TagNumber(1)
  set status(HTLCAttempt_HTLCStatus v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasStatus() => $_has(0);
  @$pb.TagNumber(1)
  void clearStatus() => clearField(1);

  @$pb.TagNumber(2)
  Route get route => $_getN(1);
  @$pb.TagNumber(2)
  set route(Route v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasRoute() => $_has(1);
  @$pb.TagNumber(2)
  void clearRoute() => clearField(2);
  @$pb.TagNumber(2)
  Route ensureRoute() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get attemptTimeNs => $_getI64(2);
  @$pb.TagNumber(3)
  set attemptTimeNs($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasAttemptTimeNs() => $_has(2);
  @$pb.TagNumber(3)
  void clearAttemptTimeNs() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get resolveTimeNs => $_getI64(3);
  @$pb.TagNumber(4)
  set resolveTimeNs($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasResolveTimeNs() => $_has(3);
  @$pb.TagNumber(4)
  void clearResolveTimeNs() => clearField(4);

  @$pb.TagNumber(5)
  Failure get failure => $_getN(4);
  @$pb.TagNumber(5)
  set failure(Failure v) { setField(5, v); }
  @$pb.TagNumber(5)
  $core.bool hasFailure() => $_has(4);
  @$pb.TagNumber(5)
  void clearFailure() => clearField(5);
  @$pb.TagNumber(5)
  Failure ensureFailure() => $_ensure(4);

  @$pb.TagNumber(6)
  $core.List<$core.int> get preimage => $_getN(5);
  @$pb.TagNumber(6)
  set preimage($core.List<$core.int> v) { $_setBytes(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasPreimage() => $_has(5);
  @$pb.TagNumber(6)
  void clearPreimage() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get attemptId => $_getI64(6);
  @$pb.TagNumber(7)
  set attemptId($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasAttemptId() => $_has(6);
  @$pb.TagNumber(7)
  void clearAttemptId() => clearField(7);
}

class ListPaymentsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPaymentsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'includeIncomplete')
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'indexOffset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxPayments', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'reversed')
    ..hasRequiredFields = false
  ;

  ListPaymentsRequest._() : super();
  factory ListPaymentsRequest({
    $core.bool includeIncomplete,
    $fixnum.Int64 indexOffset,
    $fixnum.Int64 maxPayments,
    $core.bool reversed,
  }) {
    final _result = create();
    if (includeIncomplete != null) {
      _result.includeIncomplete = includeIncomplete;
    }
    if (indexOffset != null) {
      _result.indexOffset = indexOffset;
    }
    if (maxPayments != null) {
      _result.maxPayments = maxPayments;
    }
    if (reversed != null) {
      _result.reversed = reversed;
    }
    return _result;
  }
  factory ListPaymentsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPaymentsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPaymentsRequest clone() => ListPaymentsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPaymentsRequest copyWith(void Function(ListPaymentsRequest) updates) => super.copyWith((message) => updates(message as ListPaymentsRequest)) as ListPaymentsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPaymentsRequest create() => ListPaymentsRequest._();
  ListPaymentsRequest createEmptyInstance() => create();
  static $pb.PbList<ListPaymentsRequest> createRepeated() => $pb.PbList<ListPaymentsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPaymentsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPaymentsRequest>(create);
  static ListPaymentsRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get includeIncomplete => $_getBF(0);
  @$pb.TagNumber(1)
  set includeIncomplete($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasIncludeIncomplete() => $_has(0);
  @$pb.TagNumber(1)
  void clearIncludeIncomplete() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get indexOffset => $_getI64(1);
  @$pb.TagNumber(2)
  set indexOffset($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasIndexOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearIndexOffset() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get maxPayments => $_getI64(2);
  @$pb.TagNumber(3)
  set maxPayments($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasMaxPayments() => $_has(2);
  @$pb.TagNumber(3)
  void clearMaxPayments() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get reversed => $_getBF(3);
  @$pb.TagNumber(4)
  set reversed($core.bool v) { $_setBool(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasReversed() => $_has(3);
  @$pb.TagNumber(4)
  void clearReversed() => clearField(4);
}

class ListPaymentsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPaymentsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<Payment>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payments', $pb.PbFieldType.PM, subBuilder: Payment.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'firstIndexOffset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastIndexOffset', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ListPaymentsResponse._() : super();
  factory ListPaymentsResponse({
    $core.Iterable<Payment> payments,
    $fixnum.Int64 firstIndexOffset,
    $fixnum.Int64 lastIndexOffset,
  }) {
    final _result = create();
    if (payments != null) {
      _result.payments.addAll(payments);
    }
    if (firstIndexOffset != null) {
      _result.firstIndexOffset = firstIndexOffset;
    }
    if (lastIndexOffset != null) {
      _result.lastIndexOffset = lastIndexOffset;
    }
    return _result;
  }
  factory ListPaymentsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPaymentsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPaymentsResponse clone() => ListPaymentsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPaymentsResponse copyWith(void Function(ListPaymentsResponse) updates) => super.copyWith((message) => updates(message as ListPaymentsResponse)) as ListPaymentsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPaymentsResponse create() => ListPaymentsResponse._();
  ListPaymentsResponse createEmptyInstance() => create();
  static $pb.PbList<ListPaymentsResponse> createRepeated() => $pb.PbList<ListPaymentsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPaymentsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPaymentsResponse>(create);
  static ListPaymentsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<Payment> get payments => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get firstIndexOffset => $_getI64(1);
  @$pb.TagNumber(2)
  set firstIndexOffset($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasFirstIndexOffset() => $_has(1);
  @$pb.TagNumber(2)
  void clearFirstIndexOffset() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get lastIndexOffset => $_getI64(2);
  @$pb.TagNumber(3)
  set lastIndexOffset($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasLastIndexOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearLastIndexOffset() => clearField(3);
}

class DeleteAllPaymentsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteAllPaymentsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteAllPaymentsRequest._() : super();
  factory DeleteAllPaymentsRequest() => create();
  factory DeleteAllPaymentsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAllPaymentsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteAllPaymentsRequest clone() => DeleteAllPaymentsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteAllPaymentsRequest copyWith(void Function(DeleteAllPaymentsRequest) updates) => super.copyWith((message) => updates(message as DeleteAllPaymentsRequest)) as DeleteAllPaymentsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAllPaymentsRequest create() => DeleteAllPaymentsRequest._();
  DeleteAllPaymentsRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteAllPaymentsRequest> createRepeated() => $pb.PbList<DeleteAllPaymentsRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteAllPaymentsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAllPaymentsRequest>(create);
  static DeleteAllPaymentsRequest _defaultInstance;
}

class DeleteAllPaymentsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteAllPaymentsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  DeleteAllPaymentsResponse._() : super();
  factory DeleteAllPaymentsResponse() => create();
  factory DeleteAllPaymentsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteAllPaymentsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteAllPaymentsResponse clone() => DeleteAllPaymentsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteAllPaymentsResponse copyWith(void Function(DeleteAllPaymentsResponse) updates) => super.copyWith((message) => updates(message as DeleteAllPaymentsResponse)) as DeleteAllPaymentsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAllPaymentsResponse create() => DeleteAllPaymentsResponse._();
  DeleteAllPaymentsResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteAllPaymentsResponse> createRepeated() => $pb.PbList<DeleteAllPaymentsResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteAllPaymentsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteAllPaymentsResponse>(create);
  static DeleteAllPaymentsResponse _defaultInstance;
}

class AbandonChannelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AbandonChannelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOM<ChannelPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelPoint', subBuilder: ChannelPoint.create)
    ..aOB(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'pendingFundingShimOnly')
    ..hasRequiredFields = false
  ;

  AbandonChannelRequest._() : super();
  factory AbandonChannelRequest({
    ChannelPoint channelPoint,
    $core.bool pendingFundingShimOnly,
  }) {
    final _result = create();
    if (channelPoint != null) {
      _result.channelPoint = channelPoint;
    }
    if (pendingFundingShimOnly != null) {
      _result.pendingFundingShimOnly = pendingFundingShimOnly;
    }
    return _result;
  }
  factory AbandonChannelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AbandonChannelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AbandonChannelRequest clone() => AbandonChannelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AbandonChannelRequest copyWith(void Function(AbandonChannelRequest) updates) => super.copyWith((message) => updates(message as AbandonChannelRequest)) as AbandonChannelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AbandonChannelRequest create() => AbandonChannelRequest._();
  AbandonChannelRequest createEmptyInstance() => create();
  static $pb.PbList<AbandonChannelRequest> createRepeated() => $pb.PbList<AbandonChannelRequest>();
  @$core.pragma('dart2js:noInline')
  static AbandonChannelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AbandonChannelRequest>(create);
  static AbandonChannelRequest _defaultInstance;

  @$pb.TagNumber(1)
  ChannelPoint get channelPoint => $_getN(0);
  @$pb.TagNumber(1)
  set channelPoint(ChannelPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelPoint() => clearField(1);
  @$pb.TagNumber(1)
  ChannelPoint ensureChannelPoint() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.bool get pendingFundingShimOnly => $_getBF(1);
  @$pb.TagNumber(2)
  set pendingFundingShimOnly($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPendingFundingShimOnly() => $_has(1);
  @$pb.TagNumber(2)
  void clearPendingFundingShimOnly() => clearField(2);
}

class AbandonChannelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'AbandonChannelResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  AbandonChannelResponse._() : super();
  factory AbandonChannelResponse() => create();
  factory AbandonChannelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory AbandonChannelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  AbandonChannelResponse clone() => AbandonChannelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  AbandonChannelResponse copyWith(void Function(AbandonChannelResponse) updates) => super.copyWith((message) => updates(message as AbandonChannelResponse)) as AbandonChannelResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AbandonChannelResponse create() => AbandonChannelResponse._();
  AbandonChannelResponse createEmptyInstance() => create();
  static $pb.PbList<AbandonChannelResponse> createRepeated() => $pb.PbList<AbandonChannelResponse>();
  @$core.pragma('dart2js:noInline')
  static AbandonChannelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<AbandonChannelResponse>(create);
  static AbandonChannelResponse _defaultInstance;
}

class DebugLevelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DebugLevelRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'show')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'levelSpec')
    ..hasRequiredFields = false
  ;

  DebugLevelRequest._() : super();
  factory DebugLevelRequest({
    $core.bool show,
    $core.String levelSpec,
  }) {
    final _result = create();
    if (show != null) {
      _result.show = show;
    }
    if (levelSpec != null) {
      _result.levelSpec = levelSpec;
    }
    return _result;
  }
  factory DebugLevelRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DebugLevelRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DebugLevelRequest clone() => DebugLevelRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DebugLevelRequest copyWith(void Function(DebugLevelRequest) updates) => super.copyWith((message) => updates(message as DebugLevelRequest)) as DebugLevelRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DebugLevelRequest create() => DebugLevelRequest._();
  DebugLevelRequest createEmptyInstance() => create();
  static $pb.PbList<DebugLevelRequest> createRepeated() => $pb.PbList<DebugLevelRequest>();
  @$core.pragma('dart2js:noInline')
  static DebugLevelRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DebugLevelRequest>(create);
  static DebugLevelRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get show => $_getBF(0);
  @$pb.TagNumber(1)
  set show($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasShow() => $_has(0);
  @$pb.TagNumber(1)
  void clearShow() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get levelSpec => $_getSZ(1);
  @$pb.TagNumber(2)
  set levelSpec($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLevelSpec() => $_has(1);
  @$pb.TagNumber(2)
  void clearLevelSpec() => clearField(2);
}

class DebugLevelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DebugLevelResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'subSystems')
    ..hasRequiredFields = false
  ;

  DebugLevelResponse._() : super();
  factory DebugLevelResponse({
    $core.String subSystems,
  }) {
    final _result = create();
    if (subSystems != null) {
      _result.subSystems = subSystems;
    }
    return _result;
  }
  factory DebugLevelResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DebugLevelResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DebugLevelResponse clone() => DebugLevelResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DebugLevelResponse copyWith(void Function(DebugLevelResponse) updates) => super.copyWith((message) => updates(message as DebugLevelResponse)) as DebugLevelResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DebugLevelResponse create() => DebugLevelResponse._();
  DebugLevelResponse createEmptyInstance() => create();
  static $pb.PbList<DebugLevelResponse> createRepeated() => $pb.PbList<DebugLevelResponse>();
  @$core.pragma('dart2js:noInline')
  static DebugLevelResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DebugLevelResponse>(create);
  static DebugLevelResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get subSystems => $_getSZ(0);
  @$pb.TagNumber(1)
  set subSystems($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSubSystems() => $_has(0);
  @$pb.TagNumber(1)
  void clearSubSystems() => clearField(1);
}

class PayReqString extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PayReqString', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'payReq')
    ..hasRequiredFields = false
  ;

  PayReqString._() : super();
  factory PayReqString({
    $core.String payReq,
  }) {
    final _result = create();
    if (payReq != null) {
      _result.payReq = payReq;
    }
    return _result;
  }
  factory PayReqString.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayReqString.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayReqString clone() => PayReqString()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayReqString copyWith(void Function(PayReqString) updates) => super.copyWith((message) => updates(message as PayReqString)) as PayReqString; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PayReqString create() => PayReqString._();
  PayReqString createEmptyInstance() => create();
  static $pb.PbList<PayReqString> createRepeated() => $pb.PbList<PayReqString>();
  @$core.pragma('dart2js:noInline')
  static PayReqString getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayReqString>(create);
  static PayReqString _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get payReq => $_getSZ(0);
  @$pb.TagNumber(1)
  set payReq($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasPayReq() => $_has(0);
  @$pb.TagNumber(1)
  void clearPayReq() => clearField(1);
}

class PayReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PayReq', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'destination')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentHash')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numSatoshis')
    ..aInt64(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp')
    ..aInt64(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'expiry')
    ..aOS(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'description')
    ..aOS(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'descriptionHash')
    ..aOS(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fallbackAddr')
    ..aInt64(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cltvExpiry')
    ..pc<RouteHint>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'routeHints', $pb.PbFieldType.PM, subBuilder: RouteHint.create)
    ..a<$core.List<$core.int>>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'paymentAddr', $pb.PbFieldType.OY)
    ..aInt64(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numMsat')
    ..m<$core.int, Feature>(13, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'features', entryClassName: 'PayReq.FeaturesEntry', keyFieldType: $pb.PbFieldType.OU3, valueFieldType: $pb.PbFieldType.OM, valueCreator: Feature.create, packageName: const $pb.PackageName('lnrpc'))
    ..hasRequiredFields = false
  ;

  PayReq._() : super();
  factory PayReq({
    $core.String destination,
    $core.String paymentHash,
    $fixnum.Int64 numSatoshis,
    $fixnum.Int64 timestamp,
    $fixnum.Int64 expiry,
    $core.String description,
    $core.String descriptionHash,
    $core.String fallbackAddr,
    $fixnum.Int64 cltvExpiry,
    $core.Iterable<RouteHint> routeHints,
    $core.List<$core.int> paymentAddr,
    $fixnum.Int64 numMsat,
    $core.Map<$core.int, Feature> features,
  }) {
    final _result = create();
    if (destination != null) {
      _result.destination = destination;
    }
    if (paymentHash != null) {
      _result.paymentHash = paymentHash;
    }
    if (numSatoshis != null) {
      _result.numSatoshis = numSatoshis;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (expiry != null) {
      _result.expiry = expiry;
    }
    if (description != null) {
      _result.description = description;
    }
    if (descriptionHash != null) {
      _result.descriptionHash = descriptionHash;
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
    if (paymentAddr != null) {
      _result.paymentAddr = paymentAddr;
    }
    if (numMsat != null) {
      _result.numMsat = numMsat;
    }
    if (features != null) {
      _result.features.addAll(features);
    }
    return _result;
  }
  factory PayReq.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PayReq.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PayReq clone() => PayReq()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PayReq copyWith(void Function(PayReq) updates) => super.copyWith((message) => updates(message as PayReq)) as PayReq; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PayReq create() => PayReq._();
  PayReq createEmptyInstance() => create();
  static $pb.PbList<PayReq> createRepeated() => $pb.PbList<PayReq>();
  @$core.pragma('dart2js:noInline')
  static PayReq getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PayReq>(create);
  static PayReq _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get destination => $_getSZ(0);
  @$pb.TagNumber(1)
  set destination($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDestination() => $_has(0);
  @$pb.TagNumber(1)
  void clearDestination() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get paymentHash => $_getSZ(1);
  @$pb.TagNumber(2)
  set paymentHash($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasPaymentHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearPaymentHash() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get numSatoshis => $_getI64(2);
  @$pb.TagNumber(3)
  set numSatoshis($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasNumSatoshis() => $_has(2);
  @$pb.TagNumber(3)
  void clearNumSatoshis() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get timestamp => $_getI64(3);
  @$pb.TagNumber(4)
  set timestamp($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get expiry => $_getI64(4);
  @$pb.TagNumber(5)
  set expiry($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasExpiry() => $_has(4);
  @$pb.TagNumber(5)
  void clearExpiry() => clearField(5);

  @$pb.TagNumber(6)
  $core.String get description => $_getSZ(5);
  @$pb.TagNumber(6)
  set description($core.String v) { $_setString(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasDescription() => $_has(5);
  @$pb.TagNumber(6)
  void clearDescription() => clearField(6);

  @$pb.TagNumber(7)
  $core.String get descriptionHash => $_getSZ(6);
  @$pb.TagNumber(7)
  set descriptionHash($core.String v) { $_setString(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasDescriptionHash() => $_has(6);
  @$pb.TagNumber(7)
  void clearDescriptionHash() => clearField(7);

  @$pb.TagNumber(8)
  $core.String get fallbackAddr => $_getSZ(7);
  @$pb.TagNumber(8)
  set fallbackAddr($core.String v) { $_setString(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasFallbackAddr() => $_has(7);
  @$pb.TagNumber(8)
  void clearFallbackAddr() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get cltvExpiry => $_getI64(8);
  @$pb.TagNumber(9)
  set cltvExpiry($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasCltvExpiry() => $_has(8);
  @$pb.TagNumber(9)
  void clearCltvExpiry() => clearField(9);

  @$pb.TagNumber(10)
  $core.List<RouteHint> get routeHints => $_getList(9);

  @$pb.TagNumber(11)
  $core.List<$core.int> get paymentAddr => $_getN(10);
  @$pb.TagNumber(11)
  set paymentAddr($core.List<$core.int> v) { $_setBytes(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasPaymentAddr() => $_has(10);
  @$pb.TagNumber(11)
  void clearPaymentAddr() => clearField(11);

  @$pb.TagNumber(12)
  $fixnum.Int64 get numMsat => $_getI64(11);
  @$pb.TagNumber(12)
  set numMsat($fixnum.Int64 v) { $_setInt64(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasNumMsat() => $_has(11);
  @$pb.TagNumber(12)
  void clearNumMsat() => clearField(12);

  @$pb.TagNumber(13)
  $core.Map<$core.int, Feature> get features => $_getMap(12);
}

class Feature extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Feature', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'name')
    ..aOB(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isRequired')
    ..aOB(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'isKnown')
    ..hasRequiredFields = false
  ;

  Feature._() : super();
  factory Feature({
    $core.String name,
    $core.bool isRequired,
    $core.bool isKnown,
  }) {
    final _result = create();
    if (name != null) {
      _result.name = name;
    }
    if (isRequired != null) {
      _result.isRequired = isRequired;
    }
    if (isKnown != null) {
      _result.isKnown = isKnown;
    }
    return _result;
  }
  factory Feature.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Feature.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Feature clone() => Feature()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Feature copyWith(void Function(Feature) updates) => super.copyWith((message) => updates(message as Feature)) as Feature; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Feature create() => Feature._();
  Feature createEmptyInstance() => create();
  static $pb.PbList<Feature> createRepeated() => $pb.PbList<Feature>();
  @$core.pragma('dart2js:noInline')
  static Feature getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Feature>(create);
  static Feature _defaultInstance;

  @$pb.TagNumber(2)
  $core.String get name => $_getSZ(0);
  @$pb.TagNumber(2)
  set name($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(2)
  $core.bool hasName() => $_has(0);
  @$pb.TagNumber(2)
  void clearName() => clearField(2);

  @$pb.TagNumber(3)
  $core.bool get isRequired => $_getBF(1);
  @$pb.TagNumber(3)
  set isRequired($core.bool v) { $_setBool(1, v); }
  @$pb.TagNumber(3)
  $core.bool hasIsRequired() => $_has(1);
  @$pb.TagNumber(3)
  void clearIsRequired() => clearField(3);

  @$pb.TagNumber(4)
  $core.bool get isKnown => $_getBF(2);
  @$pb.TagNumber(4)
  set isKnown($core.bool v) { $_setBool(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasIsKnown() => $_has(2);
  @$pb.TagNumber(4)
  void clearIsKnown() => clearField(4);
}

class FeeReportRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeeReportRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  FeeReportRequest._() : super();
  factory FeeReportRequest() => create();
  factory FeeReportRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeeReportRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeeReportRequest clone() => FeeReportRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeeReportRequest copyWith(void Function(FeeReportRequest) updates) => super.copyWith((message) => updates(message as FeeReportRequest)) as FeeReportRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeeReportRequest create() => FeeReportRequest._();
  FeeReportRequest createEmptyInstance() => create();
  static $pb.PbList<FeeReportRequest> createRepeated() => $pb.PbList<FeeReportRequest>();
  @$core.pragma('dart2js:noInline')
  static FeeReportRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeeReportRequest>(create);
  static FeeReportRequest _defaultInstance;
}

class ChannelFeeReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelFeeReport', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelPoint')
    ..aInt64(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseFeeMsat')
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feePerMil')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeRate', $pb.PbFieldType.OD)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ChannelFeeReport._() : super();
  factory ChannelFeeReport({
    $core.String channelPoint,
    $fixnum.Int64 baseFeeMsat,
    $fixnum.Int64 feePerMil,
    $core.double feeRate,
    $fixnum.Int64 chanId,
  }) {
    final _result = create();
    if (channelPoint != null) {
      _result.channelPoint = channelPoint;
    }
    if (baseFeeMsat != null) {
      _result.baseFeeMsat = baseFeeMsat;
    }
    if (feePerMil != null) {
      _result.feePerMil = feePerMil;
    }
    if (feeRate != null) {
      _result.feeRate = feeRate;
    }
    if (chanId != null) {
      _result.chanId = chanId;
    }
    return _result;
  }
  factory ChannelFeeReport.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelFeeReport.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelFeeReport clone() => ChannelFeeReport()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelFeeReport copyWith(void Function(ChannelFeeReport) updates) => super.copyWith((message) => updates(message as ChannelFeeReport)) as ChannelFeeReport; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelFeeReport create() => ChannelFeeReport._();
  ChannelFeeReport createEmptyInstance() => create();
  static $pb.PbList<ChannelFeeReport> createRepeated() => $pb.PbList<ChannelFeeReport>();
  @$core.pragma('dart2js:noInline')
  static ChannelFeeReport getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelFeeReport>(create);
  static ChannelFeeReport _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get channelPoint => $_getSZ(0);
  @$pb.TagNumber(1)
  set channelPoint($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasChannelPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearChannelPoint() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get baseFeeMsat => $_getI64(1);
  @$pb.TagNumber(2)
  set baseFeeMsat($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasBaseFeeMsat() => $_has(1);
  @$pb.TagNumber(2)
  void clearBaseFeeMsat() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get feePerMil => $_getI64(2);
  @$pb.TagNumber(3)
  set feePerMil($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasFeePerMil() => $_has(2);
  @$pb.TagNumber(3)
  void clearFeePerMil() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get feeRate => $_getN(3);
  @$pb.TagNumber(4)
  set feeRate($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFeeRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearFeeRate() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get chanId => $_getI64(4);
  @$pb.TagNumber(5)
  set chanId($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasChanId() => $_has(4);
  @$pb.TagNumber(5)
  void clearChanId() => clearField(5);
}

class FeeReportResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'FeeReportResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<ChannelFeeReport>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelFees', $pb.PbFieldType.PM, subBuilder: ChannelFeeReport.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'dayFeeSum', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'weekFeeSum', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'monthFeeSum', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  FeeReportResponse._() : super();
  factory FeeReportResponse({
    $core.Iterable<ChannelFeeReport> channelFees,
    $fixnum.Int64 dayFeeSum,
    $fixnum.Int64 weekFeeSum,
    $fixnum.Int64 monthFeeSum,
  }) {
    final _result = create();
    if (channelFees != null) {
      _result.channelFees.addAll(channelFees);
    }
    if (dayFeeSum != null) {
      _result.dayFeeSum = dayFeeSum;
    }
    if (weekFeeSum != null) {
      _result.weekFeeSum = weekFeeSum;
    }
    if (monthFeeSum != null) {
      _result.monthFeeSum = monthFeeSum;
    }
    return _result;
  }
  factory FeeReportResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory FeeReportResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  FeeReportResponse clone() => FeeReportResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  FeeReportResponse copyWith(void Function(FeeReportResponse) updates) => super.copyWith((message) => updates(message as FeeReportResponse)) as FeeReportResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeeReportResponse create() => FeeReportResponse._();
  FeeReportResponse createEmptyInstance() => create();
  static $pb.PbList<FeeReportResponse> createRepeated() => $pb.PbList<FeeReportResponse>();
  @$core.pragma('dart2js:noInline')
  static FeeReportResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<FeeReportResponse>(create);
  static FeeReportResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChannelFeeReport> get channelFees => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get dayFeeSum => $_getI64(1);
  @$pb.TagNumber(2)
  set dayFeeSum($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasDayFeeSum() => $_has(1);
  @$pb.TagNumber(2)
  void clearDayFeeSum() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get weekFeeSum => $_getI64(2);
  @$pb.TagNumber(3)
  set weekFeeSum($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasWeekFeeSum() => $_has(2);
  @$pb.TagNumber(3)
  void clearWeekFeeSum() => clearField(3);

  @$pb.TagNumber(4)
  $fixnum.Int64 get monthFeeSum => $_getI64(3);
  @$pb.TagNumber(4)
  set monthFeeSum($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasMonthFeeSum() => $_has(3);
  @$pb.TagNumber(4)
  void clearMonthFeeSum() => clearField(4);
}

enum PolicyUpdateRequest_Scope {
  global, 
  chanPoint, 
  notSet
}

class PolicyUpdateRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PolicyUpdateRequest_Scope> _PolicyUpdateRequest_ScopeByTag = {
    1 : PolicyUpdateRequest_Scope.global,
    2 : PolicyUpdateRequest_Scope.chanPoint,
    0 : PolicyUpdateRequest_Scope.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PolicyUpdateRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'global')
    ..aOM<ChannelPoint>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanPoint', subBuilder: ChannelPoint.create)
    ..aInt64(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseFeeMsat')
    ..a<$core.double>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeRate', $pb.PbFieldType.OD)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeLockDelta', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'maxHtlcMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minHtlcMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..aOB(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'minHtlcMsatSpecified')
    ..hasRequiredFields = false
  ;

  PolicyUpdateRequest._() : super();
  factory PolicyUpdateRequest({
    $core.bool global,
    ChannelPoint chanPoint,
    $fixnum.Int64 baseFeeMsat,
    $core.double feeRate,
    $core.int timeLockDelta,
    $fixnum.Int64 maxHtlcMsat,
    $fixnum.Int64 minHtlcMsat,
    $core.bool minHtlcMsatSpecified,
  }) {
    final _result = create();
    if (global != null) {
      _result.global = global;
    }
    if (chanPoint != null) {
      _result.chanPoint = chanPoint;
    }
    if (baseFeeMsat != null) {
      _result.baseFeeMsat = baseFeeMsat;
    }
    if (feeRate != null) {
      _result.feeRate = feeRate;
    }
    if (timeLockDelta != null) {
      _result.timeLockDelta = timeLockDelta;
    }
    if (maxHtlcMsat != null) {
      _result.maxHtlcMsat = maxHtlcMsat;
    }
    if (minHtlcMsat != null) {
      _result.minHtlcMsat = minHtlcMsat;
    }
    if (minHtlcMsatSpecified != null) {
      _result.minHtlcMsatSpecified = minHtlcMsatSpecified;
    }
    return _result;
  }
  factory PolicyUpdateRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PolicyUpdateRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PolicyUpdateRequest clone() => PolicyUpdateRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PolicyUpdateRequest copyWith(void Function(PolicyUpdateRequest) updates) => super.copyWith((message) => updates(message as PolicyUpdateRequest)) as PolicyUpdateRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PolicyUpdateRequest create() => PolicyUpdateRequest._();
  PolicyUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<PolicyUpdateRequest> createRepeated() => $pb.PbList<PolicyUpdateRequest>();
  @$core.pragma('dart2js:noInline')
  static PolicyUpdateRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PolicyUpdateRequest>(create);
  static PolicyUpdateRequest _defaultInstance;

  PolicyUpdateRequest_Scope whichScope() => _PolicyUpdateRequest_ScopeByTag[$_whichOneof(0)];
  void clearScope() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  $core.bool get global => $_getBF(0);
  @$pb.TagNumber(1)
  set global($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasGlobal() => $_has(0);
  @$pb.TagNumber(1)
  void clearGlobal() => clearField(1);

  @$pb.TagNumber(2)
  ChannelPoint get chanPoint => $_getN(1);
  @$pb.TagNumber(2)
  set chanPoint(ChannelPoint v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasChanPoint() => $_has(1);
  @$pb.TagNumber(2)
  void clearChanPoint() => clearField(2);
  @$pb.TagNumber(2)
  ChannelPoint ensureChanPoint() => $_ensure(1);

  @$pb.TagNumber(3)
  $fixnum.Int64 get baseFeeMsat => $_getI64(2);
  @$pb.TagNumber(3)
  set baseFeeMsat($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasBaseFeeMsat() => $_has(2);
  @$pb.TagNumber(3)
  void clearBaseFeeMsat() => clearField(3);

  @$pb.TagNumber(4)
  $core.double get feeRate => $_getN(3);
  @$pb.TagNumber(4)
  set feeRate($core.double v) { $_setDouble(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasFeeRate() => $_has(3);
  @$pb.TagNumber(4)
  void clearFeeRate() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get timeLockDelta => $_getIZ(4);
  @$pb.TagNumber(5)
  set timeLockDelta($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasTimeLockDelta() => $_has(4);
  @$pb.TagNumber(5)
  void clearTimeLockDelta() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get maxHtlcMsat => $_getI64(5);
  @$pb.TagNumber(6)
  set maxHtlcMsat($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasMaxHtlcMsat() => $_has(5);
  @$pb.TagNumber(6)
  void clearMaxHtlcMsat() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get minHtlcMsat => $_getI64(6);
  @$pb.TagNumber(7)
  set minHtlcMsat($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasMinHtlcMsat() => $_has(6);
  @$pb.TagNumber(7)
  void clearMinHtlcMsat() => clearField(7);

  @$pb.TagNumber(8)
  $core.bool get minHtlcMsatSpecified => $_getBF(7);
  @$pb.TagNumber(8)
  set minHtlcMsatSpecified($core.bool v) { $_setBool(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasMinHtlcMsatSpecified() => $_has(7);
  @$pb.TagNumber(8)
  void clearMinHtlcMsatSpecified() => clearField(8);
}

class PolicyUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'PolicyUpdateResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  PolicyUpdateResponse._() : super();
  factory PolicyUpdateResponse() => create();
  factory PolicyUpdateResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory PolicyUpdateResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  PolicyUpdateResponse clone() => PolicyUpdateResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  PolicyUpdateResponse copyWith(void Function(PolicyUpdateResponse) updates) => super.copyWith((message) => updates(message as PolicyUpdateResponse)) as PolicyUpdateResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PolicyUpdateResponse create() => PolicyUpdateResponse._();
  PolicyUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<PolicyUpdateResponse> createRepeated() => $pb.PbList<PolicyUpdateResponse>();
  @$core.pragma('dart2js:noInline')
  static PolicyUpdateResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<PolicyUpdateResponse>(create);
  static PolicyUpdateResponse _defaultInstance;
}

class ForwardingHistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForwardingHistoryRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'startTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'endTime', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'indexOffset', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'numMaxEvents', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ForwardingHistoryRequest._() : super();
  factory ForwardingHistoryRequest({
    $fixnum.Int64 startTime,
    $fixnum.Int64 endTime,
    $core.int indexOffset,
    $core.int numMaxEvents,
  }) {
    final _result = create();
    if (startTime != null) {
      _result.startTime = startTime;
    }
    if (endTime != null) {
      _result.endTime = endTime;
    }
    if (indexOffset != null) {
      _result.indexOffset = indexOffset;
    }
    if (numMaxEvents != null) {
      _result.numMaxEvents = numMaxEvents;
    }
    return _result;
  }
  factory ForwardingHistoryRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForwardingHistoryRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForwardingHistoryRequest clone() => ForwardingHistoryRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForwardingHistoryRequest copyWith(void Function(ForwardingHistoryRequest) updates) => super.copyWith((message) => updates(message as ForwardingHistoryRequest)) as ForwardingHistoryRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForwardingHistoryRequest create() => ForwardingHistoryRequest._();
  ForwardingHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<ForwardingHistoryRequest> createRepeated() => $pb.PbList<ForwardingHistoryRequest>();
  @$core.pragma('dart2js:noInline')
  static ForwardingHistoryRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForwardingHistoryRequest>(create);
  static ForwardingHistoryRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get startTime => $_getI64(0);
  @$pb.TagNumber(1)
  set startTime($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasStartTime() => $_has(0);
  @$pb.TagNumber(1)
  void clearStartTime() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get endTime => $_getI64(1);
  @$pb.TagNumber(2)
  set endTime($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasEndTime() => $_has(1);
  @$pb.TagNumber(2)
  void clearEndTime() => clearField(2);

  @$pb.TagNumber(3)
  $core.int get indexOffset => $_getIZ(2);
  @$pb.TagNumber(3)
  set indexOffset($core.int v) { $_setUnsignedInt32(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasIndexOffset() => $_has(2);
  @$pb.TagNumber(3)
  void clearIndexOffset() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get numMaxEvents => $_getIZ(3);
  @$pb.TagNumber(4)
  set numMaxEvents($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasNumMaxEvents() => $_has(3);
  @$pb.TagNumber(4)
  void clearNumMaxEvents() => clearField(4);
}

class ForwardingEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForwardingEvent', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanIdIn', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanIdOut', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtIn', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtOut', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'fee', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtInMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$fixnum.Int64>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'amtOutMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  ForwardingEvent._() : super();
  factory ForwardingEvent({
    $fixnum.Int64 timestamp,
    $fixnum.Int64 chanIdIn,
    $fixnum.Int64 chanIdOut,
    $fixnum.Int64 amtIn,
    $fixnum.Int64 amtOut,
    $fixnum.Int64 fee,
    $fixnum.Int64 feeMsat,
    $fixnum.Int64 amtInMsat,
    $fixnum.Int64 amtOutMsat,
  }) {
    final _result = create();
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (chanIdIn != null) {
      _result.chanIdIn = chanIdIn;
    }
    if (chanIdOut != null) {
      _result.chanIdOut = chanIdOut;
    }
    if (amtIn != null) {
      _result.amtIn = amtIn;
    }
    if (amtOut != null) {
      _result.amtOut = amtOut;
    }
    if (fee != null) {
      _result.fee = fee;
    }
    if (feeMsat != null) {
      _result.feeMsat = feeMsat;
    }
    if (amtInMsat != null) {
      _result.amtInMsat = amtInMsat;
    }
    if (amtOutMsat != null) {
      _result.amtOutMsat = amtOutMsat;
    }
    return _result;
  }
  factory ForwardingEvent.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForwardingEvent.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForwardingEvent clone() => ForwardingEvent()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForwardingEvent copyWith(void Function(ForwardingEvent) updates) => super.copyWith((message) => updates(message as ForwardingEvent)) as ForwardingEvent; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForwardingEvent create() => ForwardingEvent._();
  ForwardingEvent createEmptyInstance() => create();
  static $pb.PbList<ForwardingEvent> createRepeated() => $pb.PbList<ForwardingEvent>();
  @$core.pragma('dart2js:noInline')
  static ForwardingEvent getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForwardingEvent>(create);
  static ForwardingEvent _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get timestamp => $_getI64(0);
  @$pb.TagNumber(1)
  set timestamp($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasTimestamp() => $_has(0);
  @$pb.TagNumber(1)
  void clearTimestamp() => clearField(1);

  @$pb.TagNumber(2)
  $fixnum.Int64 get chanIdIn => $_getI64(1);
  @$pb.TagNumber(2)
  set chanIdIn($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChanIdIn() => $_has(1);
  @$pb.TagNumber(2)
  void clearChanIdIn() => clearField(2);

  @$pb.TagNumber(4)
  $fixnum.Int64 get chanIdOut => $_getI64(2);
  @$pb.TagNumber(4)
  set chanIdOut($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasChanIdOut() => $_has(2);
  @$pb.TagNumber(4)
  void clearChanIdOut() => clearField(4);

  @$pb.TagNumber(5)
  $fixnum.Int64 get amtIn => $_getI64(3);
  @$pb.TagNumber(5)
  set amtIn($fixnum.Int64 v) { $_setInt64(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasAmtIn() => $_has(3);
  @$pb.TagNumber(5)
  void clearAmtIn() => clearField(5);

  @$pb.TagNumber(6)
  $fixnum.Int64 get amtOut => $_getI64(4);
  @$pb.TagNumber(6)
  set amtOut($fixnum.Int64 v) { $_setInt64(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasAmtOut() => $_has(4);
  @$pb.TagNumber(6)
  void clearAmtOut() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get fee => $_getI64(5);
  @$pb.TagNumber(7)
  set fee($fixnum.Int64 v) { $_setInt64(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasFee() => $_has(5);
  @$pb.TagNumber(7)
  void clearFee() => clearField(7);

  @$pb.TagNumber(8)
  $fixnum.Int64 get feeMsat => $_getI64(6);
  @$pb.TagNumber(8)
  set feeMsat($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasFeeMsat() => $_has(6);
  @$pb.TagNumber(8)
  void clearFeeMsat() => clearField(8);

  @$pb.TagNumber(9)
  $fixnum.Int64 get amtInMsat => $_getI64(7);
  @$pb.TagNumber(9)
  set amtInMsat($fixnum.Int64 v) { $_setInt64(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasAmtInMsat() => $_has(7);
  @$pb.TagNumber(9)
  void clearAmtInMsat() => clearField(9);

  @$pb.TagNumber(10)
  $fixnum.Int64 get amtOutMsat => $_getI64(8);
  @$pb.TagNumber(10)
  set amtOutMsat($fixnum.Int64 v) { $_setInt64(8, v); }
  @$pb.TagNumber(10)
  $core.bool hasAmtOutMsat() => $_has(8);
  @$pb.TagNumber(10)
  void clearAmtOutMsat() => clearField(10);
}

class ForwardingHistoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ForwardingHistoryResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<ForwardingEvent>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'forwardingEvents', $pb.PbFieldType.PM, subBuilder: ForwardingEvent.create)
    ..a<$core.int>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'lastOffsetIndex', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  ForwardingHistoryResponse._() : super();
  factory ForwardingHistoryResponse({
    $core.Iterable<ForwardingEvent> forwardingEvents,
    $core.int lastOffsetIndex,
  }) {
    final _result = create();
    if (forwardingEvents != null) {
      _result.forwardingEvents.addAll(forwardingEvents);
    }
    if (lastOffsetIndex != null) {
      _result.lastOffsetIndex = lastOffsetIndex;
    }
    return _result;
  }
  factory ForwardingHistoryResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ForwardingHistoryResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ForwardingHistoryResponse clone() => ForwardingHistoryResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ForwardingHistoryResponse copyWith(void Function(ForwardingHistoryResponse) updates) => super.copyWith((message) => updates(message as ForwardingHistoryResponse)) as ForwardingHistoryResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForwardingHistoryResponse create() => ForwardingHistoryResponse._();
  ForwardingHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<ForwardingHistoryResponse> createRepeated() => $pb.PbList<ForwardingHistoryResponse>();
  @$core.pragma('dart2js:noInline')
  static ForwardingHistoryResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ForwardingHistoryResponse>(create);
  static ForwardingHistoryResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ForwardingEvent> get forwardingEvents => $_getList(0);

  @$pb.TagNumber(2)
  $core.int get lastOffsetIndex => $_getIZ(1);
  @$pb.TagNumber(2)
  set lastOffsetIndex($core.int v) { $_setUnsignedInt32(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasLastOffsetIndex() => $_has(1);
  @$pb.TagNumber(2)
  void clearLastOffsetIndex() => clearField(2);
}

class ExportChannelBackupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ExportChannelBackupRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOM<ChannelPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanPoint', subBuilder: ChannelPoint.create)
    ..hasRequiredFields = false
  ;

  ExportChannelBackupRequest._() : super();
  factory ExportChannelBackupRequest({
    ChannelPoint chanPoint,
  }) {
    final _result = create();
    if (chanPoint != null) {
      _result.chanPoint = chanPoint;
    }
    return _result;
  }
  factory ExportChannelBackupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ExportChannelBackupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ExportChannelBackupRequest clone() => ExportChannelBackupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ExportChannelBackupRequest copyWith(void Function(ExportChannelBackupRequest) updates) => super.copyWith((message) => updates(message as ExportChannelBackupRequest)) as ExportChannelBackupRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExportChannelBackupRequest create() => ExportChannelBackupRequest._();
  ExportChannelBackupRequest createEmptyInstance() => create();
  static $pb.PbList<ExportChannelBackupRequest> createRepeated() => $pb.PbList<ExportChannelBackupRequest>();
  @$core.pragma('dart2js:noInline')
  static ExportChannelBackupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ExportChannelBackupRequest>(create);
  static ExportChannelBackupRequest _defaultInstance;

  @$pb.TagNumber(1)
  ChannelPoint get chanPoint => $_getN(0);
  @$pb.TagNumber(1)
  set chanPoint(ChannelPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChanPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearChanPoint() => clearField(1);
  @$pb.TagNumber(1)
  ChannelPoint ensureChanPoint() => $_ensure(0);
}

class ChannelBackup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelBackup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOM<ChannelPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanPoint', subBuilder: ChannelPoint.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanBackup', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ChannelBackup._() : super();
  factory ChannelBackup({
    ChannelPoint chanPoint,
    $core.List<$core.int> chanBackup,
  }) {
    final _result = create();
    if (chanPoint != null) {
      _result.chanPoint = chanPoint;
    }
    if (chanBackup != null) {
      _result.chanBackup = chanBackup;
    }
    return _result;
  }
  factory ChannelBackup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelBackup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelBackup clone() => ChannelBackup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelBackup copyWith(void Function(ChannelBackup) updates) => super.copyWith((message) => updates(message as ChannelBackup)) as ChannelBackup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelBackup create() => ChannelBackup._();
  ChannelBackup createEmptyInstance() => create();
  static $pb.PbList<ChannelBackup> createRepeated() => $pb.PbList<ChannelBackup>();
  @$core.pragma('dart2js:noInline')
  static ChannelBackup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelBackup>(create);
  static ChannelBackup _defaultInstance;

  @$pb.TagNumber(1)
  ChannelPoint get chanPoint => $_getN(0);
  @$pb.TagNumber(1)
  set chanPoint(ChannelPoint v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChanPoint() => $_has(0);
  @$pb.TagNumber(1)
  void clearChanPoint() => clearField(1);
  @$pb.TagNumber(1)
  ChannelPoint ensureChanPoint() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get chanBackup => $_getN(1);
  @$pb.TagNumber(2)
  set chanBackup($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChanBackup() => $_has(1);
  @$pb.TagNumber(2)
  void clearChanBackup() => clearField(2);
}

class MultiChanBackup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MultiChanBackup', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<ChannelPoint>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanPoints', $pb.PbFieldType.PM, subBuilder: ChannelPoint.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multiChanBackup', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  MultiChanBackup._() : super();
  factory MultiChanBackup({
    $core.Iterable<ChannelPoint> chanPoints,
    $core.List<$core.int> multiChanBackup,
  }) {
    final _result = create();
    if (chanPoints != null) {
      _result.chanPoints.addAll(chanPoints);
    }
    if (multiChanBackup != null) {
      _result.multiChanBackup = multiChanBackup;
    }
    return _result;
  }
  factory MultiChanBackup.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MultiChanBackup.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MultiChanBackup clone() => MultiChanBackup()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MultiChanBackup copyWith(void Function(MultiChanBackup) updates) => super.copyWith((message) => updates(message as MultiChanBackup)) as MultiChanBackup; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MultiChanBackup create() => MultiChanBackup._();
  MultiChanBackup createEmptyInstance() => create();
  static $pb.PbList<MultiChanBackup> createRepeated() => $pb.PbList<MultiChanBackup>();
  @$core.pragma('dart2js:noInline')
  static MultiChanBackup getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MultiChanBackup>(create);
  static MultiChanBackup _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChannelPoint> get chanPoints => $_getList(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get multiChanBackup => $_getN(1);
  @$pb.TagNumber(2)
  set multiChanBackup($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMultiChanBackup() => $_has(1);
  @$pb.TagNumber(2)
  void clearMultiChanBackup() => clearField(2);
}

class ChanBackupExportRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChanBackupExportRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ChanBackupExportRequest._() : super();
  factory ChanBackupExportRequest() => create();
  factory ChanBackupExportRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChanBackupExportRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChanBackupExportRequest clone() => ChanBackupExportRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChanBackupExportRequest copyWith(void Function(ChanBackupExportRequest) updates) => super.copyWith((message) => updates(message as ChanBackupExportRequest)) as ChanBackupExportRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChanBackupExportRequest create() => ChanBackupExportRequest._();
  ChanBackupExportRequest createEmptyInstance() => create();
  static $pb.PbList<ChanBackupExportRequest> createRepeated() => $pb.PbList<ChanBackupExportRequest>();
  @$core.pragma('dart2js:noInline')
  static ChanBackupExportRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChanBackupExportRequest>(create);
  static ChanBackupExportRequest _defaultInstance;
}

class ChanBackupSnapshot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChanBackupSnapshot', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOM<ChannelBackups>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'singleChanBackups', subBuilder: ChannelBackups.create)
    ..aOM<MultiChanBackup>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multiChanBackup', subBuilder: MultiChanBackup.create)
    ..hasRequiredFields = false
  ;

  ChanBackupSnapshot._() : super();
  factory ChanBackupSnapshot({
    ChannelBackups singleChanBackups,
    MultiChanBackup multiChanBackup,
  }) {
    final _result = create();
    if (singleChanBackups != null) {
      _result.singleChanBackups = singleChanBackups;
    }
    if (multiChanBackup != null) {
      _result.multiChanBackup = multiChanBackup;
    }
    return _result;
  }
  factory ChanBackupSnapshot.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChanBackupSnapshot.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChanBackupSnapshot clone() => ChanBackupSnapshot()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChanBackupSnapshot copyWith(void Function(ChanBackupSnapshot) updates) => super.copyWith((message) => updates(message as ChanBackupSnapshot)) as ChanBackupSnapshot; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChanBackupSnapshot create() => ChanBackupSnapshot._();
  ChanBackupSnapshot createEmptyInstance() => create();
  static $pb.PbList<ChanBackupSnapshot> createRepeated() => $pb.PbList<ChanBackupSnapshot>();
  @$core.pragma('dart2js:noInline')
  static ChanBackupSnapshot getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChanBackupSnapshot>(create);
  static ChanBackupSnapshot _defaultInstance;

  @$pb.TagNumber(1)
  ChannelBackups get singleChanBackups => $_getN(0);
  @$pb.TagNumber(1)
  set singleChanBackups(ChannelBackups v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasSingleChanBackups() => $_has(0);
  @$pb.TagNumber(1)
  void clearSingleChanBackups() => clearField(1);
  @$pb.TagNumber(1)
  ChannelBackups ensureSingleChanBackups() => $_ensure(0);

  @$pb.TagNumber(2)
  MultiChanBackup get multiChanBackup => $_getN(1);
  @$pb.TagNumber(2)
  set multiChanBackup(MultiChanBackup v) { setField(2, v); }
  @$pb.TagNumber(2)
  $core.bool hasMultiChanBackup() => $_has(1);
  @$pb.TagNumber(2)
  void clearMultiChanBackup() => clearField(2);
  @$pb.TagNumber(2)
  MultiChanBackup ensureMultiChanBackup() => $_ensure(1);
}

class ChannelBackups extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelBackups', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<ChannelBackup>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanBackups', $pb.PbFieldType.PM, subBuilder: ChannelBackup.create)
    ..hasRequiredFields = false
  ;

  ChannelBackups._() : super();
  factory ChannelBackups({
    $core.Iterable<ChannelBackup> chanBackups,
  }) {
    final _result = create();
    if (chanBackups != null) {
      _result.chanBackups.addAll(chanBackups);
    }
    return _result;
  }
  factory ChannelBackups.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelBackups.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelBackups clone() => ChannelBackups()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelBackups copyWith(void Function(ChannelBackups) updates) => super.copyWith((message) => updates(message as ChannelBackups)) as ChannelBackups; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelBackups create() => ChannelBackups._();
  ChannelBackups createEmptyInstance() => create();
  static $pb.PbList<ChannelBackups> createRepeated() => $pb.PbList<ChannelBackups>();
  @$core.pragma('dart2js:noInline')
  static ChannelBackups getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelBackups>(create);
  static ChannelBackups _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<ChannelBackup> get chanBackups => $_getList(0);
}

enum RestoreChanBackupRequest_Backup {
  chanBackups, 
  multiChanBackup, 
  notSet
}

class RestoreChanBackupRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RestoreChanBackupRequest_Backup> _RestoreChanBackupRequest_BackupByTag = {
    1 : RestoreChanBackupRequest_Backup.chanBackups,
    2 : RestoreChanBackupRequest_Backup.multiChanBackup,
    0 : RestoreChanBackupRequest_Backup.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RestoreChanBackupRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOM<ChannelBackups>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanBackups', subBuilder: ChannelBackups.create)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'multiChanBackup', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  RestoreChanBackupRequest._() : super();
  factory RestoreChanBackupRequest({
    ChannelBackups chanBackups,
    $core.List<$core.int> multiChanBackup,
  }) {
    final _result = create();
    if (chanBackups != null) {
      _result.chanBackups = chanBackups;
    }
    if (multiChanBackup != null) {
      _result.multiChanBackup = multiChanBackup;
    }
    return _result;
  }
  factory RestoreChanBackupRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RestoreChanBackupRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RestoreChanBackupRequest clone() => RestoreChanBackupRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RestoreChanBackupRequest copyWith(void Function(RestoreChanBackupRequest) updates) => super.copyWith((message) => updates(message as RestoreChanBackupRequest)) as RestoreChanBackupRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RestoreChanBackupRequest create() => RestoreChanBackupRequest._();
  RestoreChanBackupRequest createEmptyInstance() => create();
  static $pb.PbList<RestoreChanBackupRequest> createRepeated() => $pb.PbList<RestoreChanBackupRequest>();
  @$core.pragma('dart2js:noInline')
  static RestoreChanBackupRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RestoreChanBackupRequest>(create);
  static RestoreChanBackupRequest _defaultInstance;

  RestoreChanBackupRequest_Backup whichBackup() => _RestoreChanBackupRequest_BackupByTag[$_whichOneof(0)];
  void clearBackup() => clearField($_whichOneof(0));

  @$pb.TagNumber(1)
  ChannelBackups get chanBackups => $_getN(0);
  @$pb.TagNumber(1)
  set chanBackups(ChannelBackups v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasChanBackups() => $_has(0);
  @$pb.TagNumber(1)
  void clearChanBackups() => clearField(1);
  @$pb.TagNumber(1)
  ChannelBackups ensureChanBackups() => $_ensure(0);

  @$pb.TagNumber(2)
  $core.List<$core.int> get multiChanBackup => $_getN(1);
  @$pb.TagNumber(2)
  set multiChanBackup($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasMultiChanBackup() => $_has(1);
  @$pb.TagNumber(2)
  void clearMultiChanBackup() => clearField(2);
}

class RestoreBackupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'RestoreBackupResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  RestoreBackupResponse._() : super();
  factory RestoreBackupResponse() => create();
  factory RestoreBackupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory RestoreBackupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  RestoreBackupResponse clone() => RestoreBackupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  RestoreBackupResponse copyWith(void Function(RestoreBackupResponse) updates) => super.copyWith((message) => updates(message as RestoreBackupResponse)) as RestoreBackupResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RestoreBackupResponse create() => RestoreBackupResponse._();
  RestoreBackupResponse createEmptyInstance() => create();
  static $pb.PbList<RestoreBackupResponse> createRepeated() => $pb.PbList<RestoreBackupResponse>();
  @$core.pragma('dart2js:noInline')
  static RestoreBackupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<RestoreBackupResponse>(create);
  static RestoreBackupResponse _defaultInstance;
}

class ChannelBackupSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelBackupSubscription', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ChannelBackupSubscription._() : super();
  factory ChannelBackupSubscription() => create();
  factory ChannelBackupSubscription.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelBackupSubscription.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelBackupSubscription clone() => ChannelBackupSubscription()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelBackupSubscription copyWith(void Function(ChannelBackupSubscription) updates) => super.copyWith((message) => updates(message as ChannelBackupSubscription)) as ChannelBackupSubscription; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelBackupSubscription create() => ChannelBackupSubscription._();
  ChannelBackupSubscription createEmptyInstance() => create();
  static $pb.PbList<ChannelBackupSubscription> createRepeated() => $pb.PbList<ChannelBackupSubscription>();
  @$core.pragma('dart2js:noInline')
  static ChannelBackupSubscription getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelBackupSubscription>(create);
  static ChannelBackupSubscription _defaultInstance;
}

class VerifyChanBackupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'VerifyChanBackupResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  VerifyChanBackupResponse._() : super();
  factory VerifyChanBackupResponse() => create();
  factory VerifyChanBackupResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory VerifyChanBackupResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  VerifyChanBackupResponse clone() => VerifyChanBackupResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  VerifyChanBackupResponse copyWith(void Function(VerifyChanBackupResponse) updates) => super.copyWith((message) => updates(message as VerifyChanBackupResponse)) as VerifyChanBackupResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyChanBackupResponse create() => VerifyChanBackupResponse._();
  VerifyChanBackupResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyChanBackupResponse> createRepeated() => $pb.PbList<VerifyChanBackupResponse>();
  @$core.pragma('dart2js:noInline')
  static VerifyChanBackupResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<VerifyChanBackupResponse>(create);
  static VerifyChanBackupResponse _defaultInstance;
}

class MacaroonPermission extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MacaroonPermission', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entity')
    ..aOS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'action')
    ..hasRequiredFields = false
  ;

  MacaroonPermission._() : super();
  factory MacaroonPermission({
    $core.String entity,
    $core.String action,
  }) {
    final _result = create();
    if (entity != null) {
      _result.entity = entity;
    }
    if (action != null) {
      _result.action = action;
    }
    return _result;
  }
  factory MacaroonPermission.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MacaroonPermission.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MacaroonPermission clone() => MacaroonPermission()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MacaroonPermission copyWith(void Function(MacaroonPermission) updates) => super.copyWith((message) => updates(message as MacaroonPermission)) as MacaroonPermission; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MacaroonPermission create() => MacaroonPermission._();
  MacaroonPermission createEmptyInstance() => create();
  static $pb.PbList<MacaroonPermission> createRepeated() => $pb.PbList<MacaroonPermission>();
  @$core.pragma('dart2js:noInline')
  static MacaroonPermission getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MacaroonPermission>(create);
  static MacaroonPermission _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get entity => $_getSZ(0);
  @$pb.TagNumber(1)
  set entity($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntity() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntity() => clearField(1);

  @$pb.TagNumber(2)
  $core.String get action => $_getSZ(1);
  @$pb.TagNumber(2)
  set action($core.String v) { $_setString(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasAction() => $_has(1);
  @$pb.TagNumber(2)
  void clearAction() => clearField(2);
}

class BakeMacaroonRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BakeMacaroonRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<MacaroonPermission>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'permissions', $pb.PbFieldType.PM, subBuilder: MacaroonPermission.create)
    ..a<$fixnum.Int64>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rootKeyId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  BakeMacaroonRequest._() : super();
  factory BakeMacaroonRequest({
    $core.Iterable<MacaroonPermission> permissions,
    $fixnum.Int64 rootKeyId,
  }) {
    final _result = create();
    if (permissions != null) {
      _result.permissions.addAll(permissions);
    }
    if (rootKeyId != null) {
      _result.rootKeyId = rootKeyId;
    }
    return _result;
  }
  factory BakeMacaroonRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BakeMacaroonRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BakeMacaroonRequest clone() => BakeMacaroonRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BakeMacaroonRequest copyWith(void Function(BakeMacaroonRequest) updates) => super.copyWith((message) => updates(message as BakeMacaroonRequest)) as BakeMacaroonRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BakeMacaroonRequest create() => BakeMacaroonRequest._();
  BakeMacaroonRequest createEmptyInstance() => create();
  static $pb.PbList<BakeMacaroonRequest> createRepeated() => $pb.PbList<BakeMacaroonRequest>();
  @$core.pragma('dart2js:noInline')
  static BakeMacaroonRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BakeMacaroonRequest>(create);
  static BakeMacaroonRequest _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MacaroonPermission> get permissions => $_getList(0);

  @$pb.TagNumber(2)
  $fixnum.Int64 get rootKeyId => $_getI64(1);
  @$pb.TagNumber(2)
  set rootKeyId($fixnum.Int64 v) { $_setInt64(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasRootKeyId() => $_has(1);
  @$pb.TagNumber(2)
  void clearRootKeyId() => clearField(2);
}

class BakeMacaroonResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'BakeMacaroonResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'macaroon')
    ..hasRequiredFields = false
  ;

  BakeMacaroonResponse._() : super();
  factory BakeMacaroonResponse({
    $core.String macaroon,
  }) {
    final _result = create();
    if (macaroon != null) {
      _result.macaroon = macaroon;
    }
    return _result;
  }
  factory BakeMacaroonResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory BakeMacaroonResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  BakeMacaroonResponse clone() => BakeMacaroonResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  BakeMacaroonResponse copyWith(void Function(BakeMacaroonResponse) updates) => super.copyWith((message) => updates(message as BakeMacaroonResponse)) as BakeMacaroonResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BakeMacaroonResponse create() => BakeMacaroonResponse._();
  BakeMacaroonResponse createEmptyInstance() => create();
  static $pb.PbList<BakeMacaroonResponse> createRepeated() => $pb.PbList<BakeMacaroonResponse>();
  @$core.pragma('dart2js:noInline')
  static BakeMacaroonResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<BakeMacaroonResponse>(create);
  static BakeMacaroonResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get macaroon => $_getSZ(0);
  @$pb.TagNumber(1)
  set macaroon($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasMacaroon() => $_has(0);
  @$pb.TagNumber(1)
  void clearMacaroon() => clearField(1);
}

class ListMacaroonIDsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListMacaroonIDsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListMacaroonIDsRequest._() : super();
  factory ListMacaroonIDsRequest() => create();
  factory ListMacaroonIDsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListMacaroonIDsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListMacaroonIDsRequest clone() => ListMacaroonIDsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListMacaroonIDsRequest copyWith(void Function(ListMacaroonIDsRequest) updates) => super.copyWith((message) => updates(message as ListMacaroonIDsRequest)) as ListMacaroonIDsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListMacaroonIDsRequest create() => ListMacaroonIDsRequest._();
  ListMacaroonIDsRequest createEmptyInstance() => create();
  static $pb.PbList<ListMacaroonIDsRequest> createRepeated() => $pb.PbList<ListMacaroonIDsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListMacaroonIDsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListMacaroonIDsRequest>(create);
  static ListMacaroonIDsRequest _defaultInstance;
}

class ListMacaroonIDsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListMacaroonIDsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..p<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rootKeyIds', $pb.PbFieldType.PU6)
    ..hasRequiredFields = false
  ;

  ListMacaroonIDsResponse._() : super();
  factory ListMacaroonIDsResponse({
    $core.Iterable<$fixnum.Int64> rootKeyIds,
  }) {
    final _result = create();
    if (rootKeyIds != null) {
      _result.rootKeyIds.addAll(rootKeyIds);
    }
    return _result;
  }
  factory ListMacaroonIDsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListMacaroonIDsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListMacaroonIDsResponse clone() => ListMacaroonIDsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListMacaroonIDsResponse copyWith(void Function(ListMacaroonIDsResponse) updates) => super.copyWith((message) => updates(message as ListMacaroonIDsResponse)) as ListMacaroonIDsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListMacaroonIDsResponse create() => ListMacaroonIDsResponse._();
  ListMacaroonIDsResponse createEmptyInstance() => create();
  static $pb.PbList<ListMacaroonIDsResponse> createRepeated() => $pb.PbList<ListMacaroonIDsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListMacaroonIDsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListMacaroonIDsResponse>(create);
  static ListMacaroonIDsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$fixnum.Int64> get rootKeyIds => $_getList(0);
}

class DeleteMacaroonIDRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteMacaroonIDRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$fixnum.Int64>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'rootKeyId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..hasRequiredFields = false
  ;

  DeleteMacaroonIDRequest._() : super();
  factory DeleteMacaroonIDRequest({
    $fixnum.Int64 rootKeyId,
  }) {
    final _result = create();
    if (rootKeyId != null) {
      _result.rootKeyId = rootKeyId;
    }
    return _result;
  }
  factory DeleteMacaroonIDRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteMacaroonIDRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteMacaroonIDRequest clone() => DeleteMacaroonIDRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteMacaroonIDRequest copyWith(void Function(DeleteMacaroonIDRequest) updates) => super.copyWith((message) => updates(message as DeleteMacaroonIDRequest)) as DeleteMacaroonIDRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteMacaroonIDRequest create() => DeleteMacaroonIDRequest._();
  DeleteMacaroonIDRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteMacaroonIDRequest> createRepeated() => $pb.PbList<DeleteMacaroonIDRequest>();
  @$core.pragma('dart2js:noInline')
  static DeleteMacaroonIDRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteMacaroonIDRequest>(create);
  static DeleteMacaroonIDRequest _defaultInstance;

  @$pb.TagNumber(1)
  $fixnum.Int64 get rootKeyId => $_getI64(0);
  @$pb.TagNumber(1)
  set rootKeyId($fixnum.Int64 v) { $_setInt64(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasRootKeyId() => $_has(0);
  @$pb.TagNumber(1)
  void clearRootKeyId() => clearField(1);
}

class DeleteMacaroonIDResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'DeleteMacaroonIDResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOB(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'deleted')
    ..hasRequiredFields = false
  ;

  DeleteMacaroonIDResponse._() : super();
  factory DeleteMacaroonIDResponse({
    $core.bool deleted,
  }) {
    final _result = create();
    if (deleted != null) {
      _result.deleted = deleted;
    }
    return _result;
  }
  factory DeleteMacaroonIDResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory DeleteMacaroonIDResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  DeleteMacaroonIDResponse clone() => DeleteMacaroonIDResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  DeleteMacaroonIDResponse copyWith(void Function(DeleteMacaroonIDResponse) updates) => super.copyWith((message) => updates(message as DeleteMacaroonIDResponse)) as DeleteMacaroonIDResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteMacaroonIDResponse create() => DeleteMacaroonIDResponse._();
  DeleteMacaroonIDResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteMacaroonIDResponse> createRepeated() => $pb.PbList<DeleteMacaroonIDResponse>();
  @$core.pragma('dart2js:noInline')
  static DeleteMacaroonIDResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<DeleteMacaroonIDResponse>(create);
  static DeleteMacaroonIDResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.bool get deleted => $_getBF(0);
  @$pb.TagNumber(1)
  set deleted($core.bool v) { $_setBool(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasDeleted() => $_has(0);
  @$pb.TagNumber(1)
  void clearDeleted() => clearField(1);
}

class MacaroonPermissionList extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MacaroonPermissionList', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..pc<MacaroonPermission>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'permissions', $pb.PbFieldType.PM, subBuilder: MacaroonPermission.create)
    ..hasRequiredFields = false
  ;

  MacaroonPermissionList._() : super();
  factory MacaroonPermissionList({
    $core.Iterable<MacaroonPermission> permissions,
  }) {
    final _result = create();
    if (permissions != null) {
      _result.permissions.addAll(permissions);
    }
    return _result;
  }
  factory MacaroonPermissionList.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MacaroonPermissionList.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MacaroonPermissionList clone() => MacaroonPermissionList()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MacaroonPermissionList copyWith(void Function(MacaroonPermissionList) updates) => super.copyWith((message) => updates(message as MacaroonPermissionList)) as MacaroonPermissionList; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MacaroonPermissionList create() => MacaroonPermissionList._();
  MacaroonPermissionList createEmptyInstance() => create();
  static $pb.PbList<MacaroonPermissionList> createRepeated() => $pb.PbList<MacaroonPermissionList>();
  @$core.pragma('dart2js:noInline')
  static MacaroonPermissionList getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MacaroonPermissionList>(create);
  static MacaroonPermissionList _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<MacaroonPermission> get permissions => $_getList(0);
}

class ListPermissionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPermissionsRequest', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false
  ;

  ListPermissionsRequest._() : super();
  factory ListPermissionsRequest() => create();
  factory ListPermissionsRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPermissionsRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPermissionsRequest clone() => ListPermissionsRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPermissionsRequest copyWith(void Function(ListPermissionsRequest) updates) => super.copyWith((message) => updates(message as ListPermissionsRequest)) as ListPermissionsRequest; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPermissionsRequest create() => ListPermissionsRequest._();
  ListPermissionsRequest createEmptyInstance() => create();
  static $pb.PbList<ListPermissionsRequest> createRepeated() => $pb.PbList<ListPermissionsRequest>();
  @$core.pragma('dart2js:noInline')
  static ListPermissionsRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPermissionsRequest>(create);
  static ListPermissionsRequest _defaultInstance;
}

class ListPermissionsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ListPermissionsResponse', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..m<$core.String, MacaroonPermissionList>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'methodPermissions', entryClassName: 'ListPermissionsResponse.MethodPermissionsEntry', keyFieldType: $pb.PbFieldType.OS, valueFieldType: $pb.PbFieldType.OM, valueCreator: MacaroonPermissionList.create, packageName: const $pb.PackageName('lnrpc'))
    ..hasRequiredFields = false
  ;

  ListPermissionsResponse._() : super();
  factory ListPermissionsResponse({
    $core.Map<$core.String, MacaroonPermissionList> methodPermissions,
  }) {
    final _result = create();
    if (methodPermissions != null) {
      _result.methodPermissions.addAll(methodPermissions);
    }
    return _result;
  }
  factory ListPermissionsResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ListPermissionsResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ListPermissionsResponse clone() => ListPermissionsResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ListPermissionsResponse copyWith(void Function(ListPermissionsResponse) updates) => super.copyWith((message) => updates(message as ListPermissionsResponse)) as ListPermissionsResponse; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPermissionsResponse create() => ListPermissionsResponse._();
  ListPermissionsResponse createEmptyInstance() => create();
  static $pb.PbList<ListPermissionsResponse> createRepeated() => $pb.PbList<ListPermissionsResponse>();
  @$core.pragma('dart2js:noInline')
  static ListPermissionsResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ListPermissionsResponse>(create);
  static ListPermissionsResponse _defaultInstance;

  @$pb.TagNumber(1)
  $core.Map<$core.String, MacaroonPermissionList> get methodPermissions => $_getMap(0);
}

class Failure extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Failure', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..e<Failure_FailureCode>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'code', $pb.PbFieldType.OE, defaultOrMaker: Failure_FailureCode.RESERVED, valueOf: Failure_FailureCode.valueOf, enumValues: Failure_FailureCode.values)
    ..aOM<ChannelUpdate>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelUpdate', subBuilder: ChannelUpdate.create)
    ..a<$fixnum.Int64>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htlcMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'onionSha256', $pb.PbFieldType.OY, protoName: 'onion_sha_256')
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'cltvExpiry', $pb.PbFieldType.OU3)
    ..a<$core.int>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'flags', $pb.PbFieldType.OU3)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'failureSourceIndex', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'height', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false
  ;

  Failure._() : super();
  factory Failure({
    Failure_FailureCode code,
    ChannelUpdate channelUpdate,
    $fixnum.Int64 htlcMsat,
    $core.List<$core.int> onionSha256,
    $core.int cltvExpiry,
    $core.int flags,
    $core.int failureSourceIndex,
    $core.int height,
  }) {
    final _result = create();
    if (code != null) {
      _result.code = code;
    }
    if (channelUpdate != null) {
      _result.channelUpdate = channelUpdate;
    }
    if (htlcMsat != null) {
      _result.htlcMsat = htlcMsat;
    }
    if (onionSha256 != null) {
      _result.onionSha256 = onionSha256;
    }
    if (cltvExpiry != null) {
      _result.cltvExpiry = cltvExpiry;
    }
    if (flags != null) {
      _result.flags = flags;
    }
    if (failureSourceIndex != null) {
      _result.failureSourceIndex = failureSourceIndex;
    }
    if (height != null) {
      _result.height = height;
    }
    return _result;
  }
  factory Failure.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Failure.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Failure clone() => Failure()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Failure copyWith(void Function(Failure) updates) => super.copyWith((message) => updates(message as Failure)) as Failure; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Failure create() => Failure._();
  Failure createEmptyInstance() => create();
  static $pb.PbList<Failure> createRepeated() => $pb.PbList<Failure>();
  @$core.pragma('dart2js:noInline')
  static Failure getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Failure>(create);
  static Failure _defaultInstance;

  @$pb.TagNumber(1)
  Failure_FailureCode get code => $_getN(0);
  @$pb.TagNumber(1)
  set code(Failure_FailureCode v) { setField(1, v); }
  @$pb.TagNumber(1)
  $core.bool hasCode() => $_has(0);
  @$pb.TagNumber(1)
  void clearCode() => clearField(1);

  @$pb.TagNumber(3)
  ChannelUpdate get channelUpdate => $_getN(1);
  @$pb.TagNumber(3)
  set channelUpdate(ChannelUpdate v) { setField(3, v); }
  @$pb.TagNumber(3)
  $core.bool hasChannelUpdate() => $_has(1);
  @$pb.TagNumber(3)
  void clearChannelUpdate() => clearField(3);
  @$pb.TagNumber(3)
  ChannelUpdate ensureChannelUpdate() => $_ensure(1);

  @$pb.TagNumber(4)
  $fixnum.Int64 get htlcMsat => $_getI64(2);
  @$pb.TagNumber(4)
  set htlcMsat($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(4)
  $core.bool hasHtlcMsat() => $_has(2);
  @$pb.TagNumber(4)
  void clearHtlcMsat() => clearField(4);

  @$pb.TagNumber(5)
  $core.List<$core.int> get onionSha256 => $_getN(3);
  @$pb.TagNumber(5)
  set onionSha256($core.List<$core.int> v) { $_setBytes(3, v); }
  @$pb.TagNumber(5)
  $core.bool hasOnionSha256() => $_has(3);
  @$pb.TagNumber(5)
  void clearOnionSha256() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get cltvExpiry => $_getIZ(4);
  @$pb.TagNumber(6)
  set cltvExpiry($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(6)
  $core.bool hasCltvExpiry() => $_has(4);
  @$pb.TagNumber(6)
  void clearCltvExpiry() => clearField(6);

  @$pb.TagNumber(7)
  $core.int get flags => $_getIZ(5);
  @$pb.TagNumber(7)
  set flags($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(7)
  $core.bool hasFlags() => $_has(5);
  @$pb.TagNumber(7)
  void clearFlags() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get failureSourceIndex => $_getIZ(6);
  @$pb.TagNumber(8)
  set failureSourceIndex($core.int v) { $_setUnsignedInt32(6, v); }
  @$pb.TagNumber(8)
  $core.bool hasFailureSourceIndex() => $_has(6);
  @$pb.TagNumber(8)
  void clearFailureSourceIndex() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get height => $_getIZ(7);
  @$pb.TagNumber(9)
  set height($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(9)
  $core.bool hasHeight() => $_has(7);
  @$pb.TagNumber(9)
  void clearHeight() => clearField(9);
}

class ChannelUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'ChannelUpdate', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'signature', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chainHash', $pb.PbFieldType.OY)
    ..a<$fixnum.Int64>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(4, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timestamp', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'channelFlags', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'timeLockDelta', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(7, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htlcMinimumMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.int>(8, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'baseFee', $pb.PbFieldType.OU3)
    ..a<$core.int>(9, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'feeRate', $pb.PbFieldType.OU3)
    ..a<$core.int>(10, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'messageFlags', $pb.PbFieldType.OU3)
    ..a<$fixnum.Int64>(11, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'htlcMaximumMsat', $pb.PbFieldType.OU6, defaultOrMaker: $fixnum.Int64.ZERO)
    ..a<$core.List<$core.int>>(12, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'extraOpaqueData', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  ChannelUpdate._() : super();
  factory ChannelUpdate({
    $core.List<$core.int> signature,
    $core.List<$core.int> chainHash,
    $fixnum.Int64 chanId,
    $core.int timestamp,
    $core.int channelFlags,
    $core.int timeLockDelta,
    $fixnum.Int64 htlcMinimumMsat,
    $core.int baseFee,
    $core.int feeRate,
    $core.int messageFlags,
    $fixnum.Int64 htlcMaximumMsat,
    $core.List<$core.int> extraOpaqueData,
  }) {
    final _result = create();
    if (signature != null) {
      _result.signature = signature;
    }
    if (chainHash != null) {
      _result.chainHash = chainHash;
    }
    if (chanId != null) {
      _result.chanId = chanId;
    }
    if (timestamp != null) {
      _result.timestamp = timestamp;
    }
    if (channelFlags != null) {
      _result.channelFlags = channelFlags;
    }
    if (timeLockDelta != null) {
      _result.timeLockDelta = timeLockDelta;
    }
    if (htlcMinimumMsat != null) {
      _result.htlcMinimumMsat = htlcMinimumMsat;
    }
    if (baseFee != null) {
      _result.baseFee = baseFee;
    }
    if (feeRate != null) {
      _result.feeRate = feeRate;
    }
    if (messageFlags != null) {
      _result.messageFlags = messageFlags;
    }
    if (htlcMaximumMsat != null) {
      _result.htlcMaximumMsat = htlcMaximumMsat;
    }
    if (extraOpaqueData != null) {
      _result.extraOpaqueData = extraOpaqueData;
    }
    return _result;
  }
  factory ChannelUpdate.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory ChannelUpdate.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  ChannelUpdate clone() => ChannelUpdate()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  ChannelUpdate copyWith(void Function(ChannelUpdate) updates) => super.copyWith((message) => updates(message as ChannelUpdate)) as ChannelUpdate; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelUpdate create() => ChannelUpdate._();
  ChannelUpdate createEmptyInstance() => create();
  static $pb.PbList<ChannelUpdate> createRepeated() => $pb.PbList<ChannelUpdate>();
  @$core.pragma('dart2js:noInline')
  static ChannelUpdate getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<ChannelUpdate>(create);
  static ChannelUpdate _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get signature => $_getN(0);
  @$pb.TagNumber(1)
  set signature($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasSignature() => $_has(0);
  @$pb.TagNumber(1)
  void clearSignature() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get chainHash => $_getN(1);
  @$pb.TagNumber(2)
  set chainHash($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasChainHash() => $_has(1);
  @$pb.TagNumber(2)
  void clearChainHash() => clearField(2);

  @$pb.TagNumber(3)
  $fixnum.Int64 get chanId => $_getI64(2);
  @$pb.TagNumber(3)
  set chanId($fixnum.Int64 v) { $_setInt64(2, v); }
  @$pb.TagNumber(3)
  $core.bool hasChanId() => $_has(2);
  @$pb.TagNumber(3)
  void clearChanId() => clearField(3);

  @$pb.TagNumber(4)
  $core.int get timestamp => $_getIZ(3);
  @$pb.TagNumber(4)
  set timestamp($core.int v) { $_setUnsignedInt32(3, v); }
  @$pb.TagNumber(4)
  $core.bool hasTimestamp() => $_has(3);
  @$pb.TagNumber(4)
  void clearTimestamp() => clearField(4);

  @$pb.TagNumber(5)
  $core.int get channelFlags => $_getIZ(4);
  @$pb.TagNumber(5)
  set channelFlags($core.int v) { $_setUnsignedInt32(4, v); }
  @$pb.TagNumber(5)
  $core.bool hasChannelFlags() => $_has(4);
  @$pb.TagNumber(5)
  void clearChannelFlags() => clearField(5);

  @$pb.TagNumber(6)
  $core.int get timeLockDelta => $_getIZ(5);
  @$pb.TagNumber(6)
  set timeLockDelta($core.int v) { $_setUnsignedInt32(5, v); }
  @$pb.TagNumber(6)
  $core.bool hasTimeLockDelta() => $_has(5);
  @$pb.TagNumber(6)
  void clearTimeLockDelta() => clearField(6);

  @$pb.TagNumber(7)
  $fixnum.Int64 get htlcMinimumMsat => $_getI64(6);
  @$pb.TagNumber(7)
  set htlcMinimumMsat($fixnum.Int64 v) { $_setInt64(6, v); }
  @$pb.TagNumber(7)
  $core.bool hasHtlcMinimumMsat() => $_has(6);
  @$pb.TagNumber(7)
  void clearHtlcMinimumMsat() => clearField(7);

  @$pb.TagNumber(8)
  $core.int get baseFee => $_getIZ(7);
  @$pb.TagNumber(8)
  set baseFee($core.int v) { $_setUnsignedInt32(7, v); }
  @$pb.TagNumber(8)
  $core.bool hasBaseFee() => $_has(7);
  @$pb.TagNumber(8)
  void clearBaseFee() => clearField(8);

  @$pb.TagNumber(9)
  $core.int get feeRate => $_getIZ(8);
  @$pb.TagNumber(9)
  set feeRate($core.int v) { $_setUnsignedInt32(8, v); }
  @$pb.TagNumber(9)
  $core.bool hasFeeRate() => $_has(8);
  @$pb.TagNumber(9)
  void clearFeeRate() => clearField(9);

  @$pb.TagNumber(10)
  $core.int get messageFlags => $_getIZ(9);
  @$pb.TagNumber(10)
  set messageFlags($core.int v) { $_setUnsignedInt32(9, v); }
  @$pb.TagNumber(10)
  $core.bool hasMessageFlags() => $_has(9);
  @$pb.TagNumber(10)
  void clearMessageFlags() => clearField(10);

  @$pb.TagNumber(11)
  $fixnum.Int64 get htlcMaximumMsat => $_getI64(10);
  @$pb.TagNumber(11)
  set htlcMaximumMsat($fixnum.Int64 v) { $_setInt64(10, v); }
  @$pb.TagNumber(11)
  $core.bool hasHtlcMaximumMsat() => $_has(10);
  @$pb.TagNumber(11)
  void clearHtlcMaximumMsat() => clearField(11);

  @$pb.TagNumber(12)
  $core.List<$core.int> get extraOpaqueData => $_getN(11);
  @$pb.TagNumber(12)
  set extraOpaqueData($core.List<$core.int> v) { $_setBytes(11, v); }
  @$pb.TagNumber(12)
  $core.bool hasExtraOpaqueData() => $_has(11);
  @$pb.TagNumber(12)
  void clearExtraOpaqueData() => clearField(12);
}

class MacaroonId extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'MacaroonId', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'nonce', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'storageId', $pb.PbFieldType.OY, protoName: 'storageId')
    ..pc<Op>(3, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'ops', $pb.PbFieldType.PM, subBuilder: Op.create)
    ..hasRequiredFields = false
  ;

  MacaroonId._() : super();
  factory MacaroonId({
    $core.List<$core.int> nonce,
    $core.List<$core.int> storageId,
    $core.Iterable<Op> ops,
  }) {
    final _result = create();
    if (nonce != null) {
      _result.nonce = nonce;
    }
    if (storageId != null) {
      _result.storageId = storageId;
    }
    if (ops != null) {
      _result.ops.addAll(ops);
    }
    return _result;
  }
  factory MacaroonId.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory MacaroonId.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  MacaroonId clone() => MacaroonId()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  MacaroonId copyWith(void Function(MacaroonId) updates) => super.copyWith((message) => updates(message as MacaroonId)) as MacaroonId; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MacaroonId create() => MacaroonId._();
  MacaroonId createEmptyInstance() => create();
  static $pb.PbList<MacaroonId> createRepeated() => $pb.PbList<MacaroonId>();
  @$core.pragma('dart2js:noInline')
  static MacaroonId getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<MacaroonId>(create);
  static MacaroonId _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get nonce => $_getN(0);
  @$pb.TagNumber(1)
  set nonce($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasNonce() => $_has(0);
  @$pb.TagNumber(1)
  void clearNonce() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.int> get storageId => $_getN(1);
  @$pb.TagNumber(2)
  set storageId($core.List<$core.int> v) { $_setBytes(1, v); }
  @$pb.TagNumber(2)
  $core.bool hasStorageId() => $_has(1);
  @$pb.TagNumber(2)
  void clearStorageId() => clearField(2);

  @$pb.TagNumber(3)
  $core.List<Op> get ops => $_getList(2);
}

class Op extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'Op', package: const $pb.PackageName(const $core.bool.fromEnvironment('protobuf.omit_message_names') ? '' : 'lnrpc'), createEmptyInstance: create)
    ..aOS(1, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'entity')
    ..pPS(2, const $core.bool.fromEnvironment('protobuf.omit_field_names') ? '' : 'actions')
    ..hasRequiredFields = false
  ;

  Op._() : super();
  factory Op({
    $core.String entity,
    $core.Iterable<$core.String> actions,
  }) {
    final _result = create();
    if (entity != null) {
      _result.entity = entity;
    }
    if (actions != null) {
      _result.actions.addAll(actions);
    }
    return _result;
  }
  factory Op.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory Op.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  Op clone() => Op()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  Op copyWith(void Function(Op) updates) => super.copyWith((message) => updates(message as Op)) as Op; // ignore: deprecated_member_use
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Op create() => Op._();
  Op createEmptyInstance() => create();
  static $pb.PbList<Op> createRepeated() => $pb.PbList<Op>();
  @$core.pragma('dart2js:noInline')
  static Op getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<Op>(create);
  static Op _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get entity => $_getSZ(0);
  @$pb.TagNumber(1)
  set entity($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasEntity() => $_has(0);
  @$pb.TagNumber(1)
  void clearEntity() => clearField(1);

  @$pb.TagNumber(2)
  $core.List<$core.String> get actions => $_getList(1);
}

