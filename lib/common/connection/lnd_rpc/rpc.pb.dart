///
//  Generated code. Do not modify.
//  source: rpc.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,annotate_overrides

import 'dart:core' as $core;

import 'package:fixnum/fixnum.dart';
import 'package:protobuf/protobuf.dart' as $pb;

import 'rpc.pbenum.dart';

export 'rpc.pbenum.dart';

class GenSeedRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GenSeedRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'aezeedPassphrase', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'seedEntropy', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  GenSeedRequest._() : super();
  factory GenSeedRequest() => create();
  factory GenSeedRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GenSeedRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GenSeedRequest clone() => GenSeedRequest()..mergeFromMessage(this);
  GenSeedRequest copyWith(void Function(GenSeedRequest) updates) =>
      super.copyWith((message) => updates(message as GenSeedRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenSeedRequest create() => GenSeedRequest._();
  GenSeedRequest createEmptyInstance() => create();
  static $pb.PbList<GenSeedRequest> createRepeated() =>
      $pb.PbList<GenSeedRequest>();
  static GenSeedRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GenSeedRequest _defaultInstance;

  $core.List<$core.int> get aezeedPassphrase => $_getN(0);
  set aezeedPassphrase($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasAezeedPassphrase() => $_has(0);
  void clearAezeedPassphrase() => clearField(1);

  $core.List<$core.int> get seedEntropy => $_getN(1);
  set seedEntropy($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasSeedEntropy() => $_has(1);
  void clearSeedEntropy() => clearField(2);
}

class GenSeedResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GenSeedResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pPS(1, 'cipherSeedMnemonic')
    ..a<$core.List<$core.int>>(2, 'encipheredSeed', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  GenSeedResponse._() : super();
  factory GenSeedResponse() => create();
  factory GenSeedResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GenSeedResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GenSeedResponse clone() => GenSeedResponse()..mergeFromMessage(this);
  GenSeedResponse copyWith(void Function(GenSeedResponse) updates) =>
      super.copyWith((message) => updates(message as GenSeedResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GenSeedResponse create() => GenSeedResponse._();
  GenSeedResponse createEmptyInstance() => create();
  static $pb.PbList<GenSeedResponse> createRepeated() =>
      $pb.PbList<GenSeedResponse>();
  static GenSeedResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static GenSeedResponse _defaultInstance;

  $core.List<$core.String> get cipherSeedMnemonic => $_getList(0);

  $core.List<$core.int> get encipheredSeed => $_getN(1);
  set encipheredSeed($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasEncipheredSeed() => $_has(1);
  void clearEncipheredSeed() => clearField(2);
}

class InitWalletRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InitWalletRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'walletPassword', $pb.PbFieldType.OY)
    ..pPS(2, 'cipherSeedMnemonic')
    ..a<$core.List<$core.int>>(3, 'aezeedPassphrase', $pb.PbFieldType.OY)
    ..a<$core.int>(4, 'recoveryWindow', $pb.PbFieldType.O3)
    ..a<ChanBackupSnapshot>(5, 'channelBackups', $pb.PbFieldType.OM,
        defaultOrMaker: ChanBackupSnapshot.getDefault,
        subBuilder: ChanBackupSnapshot.create)
    ..hasRequiredFields = false;

  InitWalletRequest._() : super();
  factory InitWalletRequest() => create();
  factory InitWalletRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InitWalletRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  InitWalletRequest clone() => InitWalletRequest()..mergeFromMessage(this);
  InitWalletRequest copyWith(void Function(InitWalletRequest) updates) =>
      super.copyWith((message) => updates(message as InitWalletRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitWalletRequest create() => InitWalletRequest._();
  InitWalletRequest createEmptyInstance() => create();
  static $pb.PbList<InitWalletRequest> createRepeated() =>
      $pb.PbList<InitWalletRequest>();
  static InitWalletRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static InitWalletRequest _defaultInstance;

  $core.List<$core.int> get walletPassword => $_getN(0);
  set walletPassword($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasWalletPassword() => $_has(0);
  void clearWalletPassword() => clearField(1);

  $core.List<$core.String> get cipherSeedMnemonic => $_getList(1);

  $core.List<$core.int> get aezeedPassphrase => $_getN(2);
  set aezeedPassphrase($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  $core.bool hasAezeedPassphrase() => $_has(2);
  void clearAezeedPassphrase() => clearField(3);

  $core.int get recoveryWindow => $_get(3, 0);
  set recoveryWindow($core.int v) {
    $_setSignedInt32(3, v);
  }

  $core.bool hasRecoveryWindow() => $_has(3);
  void clearRecoveryWindow() => clearField(4);

  ChanBackupSnapshot get channelBackups => $_getN(4);
  set channelBackups(ChanBackupSnapshot v) {
    setField(5, v);
  }

  $core.bool hasChannelBackups() => $_has(4);
  void clearChannelBackups() => clearField(5);
}

class InitWalletResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InitWalletResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  InitWalletResponse._() : super();
  factory InitWalletResponse() => create();
  factory InitWalletResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InitWalletResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  InitWalletResponse clone() => InitWalletResponse()..mergeFromMessage(this);
  InitWalletResponse copyWith(void Function(InitWalletResponse) updates) =>
      super.copyWith((message) => updates(message as InitWalletResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InitWalletResponse create() => InitWalletResponse._();
  InitWalletResponse createEmptyInstance() => create();
  static $pb.PbList<InitWalletResponse> createRepeated() =>
      $pb.PbList<InitWalletResponse>();
  static InitWalletResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static InitWalletResponse _defaultInstance;
}

class UnlockWalletRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UnlockWalletRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'walletPassword', $pb.PbFieldType.OY)
    ..a<$core.int>(2, 'recoveryWindow', $pb.PbFieldType.O3)
    ..a<ChanBackupSnapshot>(3, 'channelBackups', $pb.PbFieldType.OM,
        defaultOrMaker: ChanBackupSnapshot.getDefault,
        subBuilder: ChanBackupSnapshot.create)
    ..hasRequiredFields = false;

  UnlockWalletRequest._() : super();
  factory UnlockWalletRequest() => create();
  factory UnlockWalletRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnlockWalletRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UnlockWalletRequest clone() => UnlockWalletRequest()..mergeFromMessage(this);
  UnlockWalletRequest copyWith(void Function(UnlockWalletRequest) updates) =>
      super.copyWith((message) => updates(message as UnlockWalletRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnlockWalletRequest create() => UnlockWalletRequest._();
  UnlockWalletRequest createEmptyInstance() => create();
  static $pb.PbList<UnlockWalletRequest> createRepeated() =>
      $pb.PbList<UnlockWalletRequest>();
  static UnlockWalletRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static UnlockWalletRequest _defaultInstance;

  $core.List<$core.int> get walletPassword => $_getN(0);
  set walletPassword($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasWalletPassword() => $_has(0);
  void clearWalletPassword() => clearField(1);

  $core.int get recoveryWindow => $_get(1, 0);
  set recoveryWindow($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasRecoveryWindow() => $_has(1);
  void clearRecoveryWindow() => clearField(2);

  ChanBackupSnapshot get channelBackups => $_getN(2);
  set channelBackups(ChanBackupSnapshot v) {
    setField(3, v);
  }

  $core.bool hasChannelBackups() => $_has(2);
  void clearChannelBackups() => clearField(3);
}

class UnlockWalletResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('UnlockWalletResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  UnlockWalletResponse._() : super();
  factory UnlockWalletResponse() => create();
  factory UnlockWalletResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory UnlockWalletResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  UnlockWalletResponse clone() =>
      UnlockWalletResponse()..mergeFromMessage(this);
  UnlockWalletResponse copyWith(void Function(UnlockWalletResponse) updates) =>
      super.copyWith((message) => updates(message as UnlockWalletResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static UnlockWalletResponse create() => UnlockWalletResponse._();
  UnlockWalletResponse createEmptyInstance() => create();
  static $pb.PbList<UnlockWalletResponse> createRepeated() =>
      $pb.PbList<UnlockWalletResponse>();
  static UnlockWalletResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static UnlockWalletResponse _defaultInstance;
}

class ChangePasswordRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChangePasswordRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'currentPassword', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'newPassword', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  ChangePasswordRequest._() : super();
  factory ChangePasswordRequest() => create();
  factory ChangePasswordRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChangePasswordRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChangePasswordRequest clone() =>
      ChangePasswordRequest()..mergeFromMessage(this);
  ChangePasswordRequest copyWith(
          void Function(ChangePasswordRequest) updates) =>
      super.copyWith((message) => updates(message as ChangePasswordRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangePasswordRequest create() => ChangePasswordRequest._();
  ChangePasswordRequest createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordRequest> createRepeated() =>
      $pb.PbList<ChangePasswordRequest>();
  static ChangePasswordRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChangePasswordRequest _defaultInstance;

  $core.List<$core.int> get currentPassword => $_getN(0);
  set currentPassword($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasCurrentPassword() => $_has(0);
  void clearCurrentPassword() => clearField(1);

  $core.List<$core.int> get newPassword => $_getN(1);
  set newPassword($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasNewPassword() => $_has(1);
  void clearNewPassword() => clearField(2);
}

class ChangePasswordResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChangePasswordResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  ChangePasswordResponse._() : super();
  factory ChangePasswordResponse() => create();
  factory ChangePasswordResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChangePasswordResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChangePasswordResponse clone() =>
      ChangePasswordResponse()..mergeFromMessage(this);
  ChangePasswordResponse copyWith(
          void Function(ChangePasswordResponse) updates) =>
      super.copyWith((message) => updates(message as ChangePasswordResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChangePasswordResponse create() => ChangePasswordResponse._();
  ChangePasswordResponse createEmptyInstance() => create();
  static $pb.PbList<ChangePasswordResponse> createRepeated() =>
      $pb.PbList<ChangePasswordResponse>();
  static ChangePasswordResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChangePasswordResponse _defaultInstance;
}

class Utxo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Utxo',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..e<AddressType>(1, 'address_type', $pb.PbFieldType.OE,
        protoName: 'type',
        defaultOrMaker: AddressType.WITNESS_PUBKEY_HASH,
        valueOf: AddressType.valueOf,
        enumValues: AddressType.values)
    ..aOS(2, 'address')
    ..aInt64(3, 'amount_sat')
    ..aOS(4, 'pk_script')
    ..a<OutPoint>(5, 'outpoint', $pb.PbFieldType.OM,
        defaultOrMaker: OutPoint.getDefault, subBuilder: OutPoint.create)
    ..aInt64(6, 'confirmations')
    ..hasRequiredFields = false;

  Utxo._() : super();
  factory Utxo() => create();
  factory Utxo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Utxo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Utxo clone() => Utxo()..mergeFromMessage(this);
  Utxo copyWith(void Function(Utxo) updates) =>
      super.copyWith((message) => updates(message as Utxo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Utxo create() => Utxo._();
  Utxo createEmptyInstance() => create();
  static $pb.PbList<Utxo> createRepeated() => $pb.PbList<Utxo>();
  static Utxo getDefault() => _defaultInstance ??= create()..freeze();
  static Utxo _defaultInstance;

  AddressType get type => $_getN(0);
  set type(AddressType v) {
    setField(1, v);
  }

  $core.bool hasType() => $_has(0);
  void clearType() => clearField(1);

  $core.String get address => $_getS(1, '');
  set address($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasAddress() => $_has(1);
  void clearAddress() => clearField(2);

  Int64 get amountSat => $_getI64(2);
  set amountSat(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasAmountSat() => $_has(2);
  void clearAmountSat() => clearField(3);

  $core.String get pkScript => $_getS(3, '');
  set pkScript($core.String v) {
    $_setString(3, v);
  }

  $core.bool hasPkScript() => $_has(3);
  void clearPkScript() => clearField(4);

  OutPoint get outpoint => $_getN(4);
  set outpoint(OutPoint v) {
    setField(5, v);
  }

  $core.bool hasOutpoint() => $_has(4);
  void clearOutpoint() => clearField(5);

  Int64 get confirmations => $_getI64(5);
  set confirmations(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasConfirmations() => $_has(5);
  void clearConfirmations() => clearField(6);
}

class Transaction extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Transaction',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'tx_hash')
    ..aInt64(2, 'amount')
    ..a<$core.int>(3, 'num_confirmations', $pb.PbFieldType.O3)
    ..aOS(4, 'block_hash')
    ..a<$core.int>(5, 'block_height', $pb.PbFieldType.O3)
    ..aInt64(6, 'time_stamp')
    ..aInt64(7, 'total_fees')
    ..pPS(8, 'dest_addresses')
    ..aOS(9, 'raw_tx_hex')
    ..hasRequiredFields = false;

  Transaction._() : super();
  factory Transaction() => create();
  factory Transaction.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Transaction.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Transaction clone() => Transaction()..mergeFromMessage(this);
  Transaction copyWith(void Function(Transaction) updates) =>
      super.copyWith((message) => updates(message as Transaction));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Transaction create() => Transaction._();
  Transaction createEmptyInstance() => create();
  static $pb.PbList<Transaction> createRepeated() => $pb.PbList<Transaction>();
  static Transaction getDefault() => _defaultInstance ??= create()..freeze();
  static Transaction _defaultInstance;

  $core.String get txHash => $_getS(0, '');
  set txHash($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasTxHash() => $_has(0);
  void clearTxHash() => clearField(1);

  Int64 get amount => $_getI64(1);
  set amount(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasAmount() => $_has(1);
  void clearAmount() => clearField(2);

  $core.int get numConfirmations => $_get(2, 0);
  set numConfirmations($core.int v) {
    $_setSignedInt32(2, v);
  }

  $core.bool hasNumConfirmations() => $_has(2);
  void clearNumConfirmations() => clearField(3);

  $core.String get blockHash => $_getS(3, '');
  set blockHash($core.String v) {
    $_setString(3, v);
  }

  $core.bool hasBlockHash() => $_has(3);
  void clearBlockHash() => clearField(4);

  $core.int get blockHeight => $_get(4, 0);
  set blockHeight($core.int v) {
    $_setSignedInt32(4, v);
  }

  $core.bool hasBlockHeight() => $_has(4);
  void clearBlockHeight() => clearField(5);

  Int64 get timeStamp => $_getI64(5);
  set timeStamp(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasTimeStamp() => $_has(5);
  void clearTimeStamp() => clearField(6);

  Int64 get totalFees => $_getI64(6);
  set totalFees(Int64 v) {
    $_setInt64(6, v);
  }

  $core.bool hasTotalFees() => $_has(6);
  void clearTotalFees() => clearField(7);

  $core.List<$core.String> get destAddresses => $_getList(7);

  $core.String get rawTxHex => $_getS(8, '');
  set rawTxHex($core.String v) {
    $_setString(8, v);
  }

  $core.bool hasRawTxHex() => $_has(8);
  void clearRawTxHex() => clearField(9);
}

class GetTransactionsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetTransactionsRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetTransactionsRequest._() : super();
  factory GetTransactionsRequest() => create();
  factory GetTransactionsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetTransactionsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetTransactionsRequest clone() =>
      GetTransactionsRequest()..mergeFromMessage(this);
  GetTransactionsRequest copyWith(
          void Function(GetTransactionsRequest) updates) =>
      super.copyWith((message) => updates(message as GetTransactionsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetTransactionsRequest create() => GetTransactionsRequest._();
  GetTransactionsRequest createEmptyInstance() => create();
  static $pb.PbList<GetTransactionsRequest> createRepeated() =>
      $pb.PbList<GetTransactionsRequest>();
  static GetTransactionsRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static GetTransactionsRequest _defaultInstance;
}

class TransactionDetails extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('TransactionDetails',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<Transaction>(1, 'transactions', $pb.PbFieldType.PM,
        subBuilder: Transaction.create)
    ..hasRequiredFields = false;

  TransactionDetails._() : super();
  factory TransactionDetails() => create();
  factory TransactionDetails.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory TransactionDetails.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  TransactionDetails clone() => TransactionDetails()..mergeFromMessage(this);
  TransactionDetails copyWith(void Function(TransactionDetails) updates) =>
      super.copyWith((message) => updates(message as TransactionDetails));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static TransactionDetails create() => TransactionDetails._();
  TransactionDetails createEmptyInstance() => create();
  static $pb.PbList<TransactionDetails> createRepeated() =>
      $pb.PbList<TransactionDetails>();
  static TransactionDetails getDefault() =>
      _defaultInstance ??= create()..freeze();
  static TransactionDetails _defaultInstance;

  $core.List<Transaction> get transactions => $_getList(0);
}

enum FeeLimit_Limit { fixed, percent, fixedMsat, notSet }

class FeeLimit extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FeeLimit_Limit> _FeeLimit_LimitByTag = {
    1: FeeLimit_Limit.fixed,
    2: FeeLimit_Limit.percent,
    3: FeeLimit_Limit.fixedMsat,
    0: FeeLimit_Limit.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FeeLimit',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3])
    ..aInt64(1, 'fixed')
    ..aInt64(2, 'percent')
    ..aInt64(3, 'fixedMsat')
    ..hasRequiredFields = false;

  FeeLimit._() : super();
  factory FeeLimit() => create();
  factory FeeLimit.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FeeLimit.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FeeLimit clone() => FeeLimit()..mergeFromMessage(this);
  FeeLimit copyWith(void Function(FeeLimit) updates) =>
      super.copyWith((message) => updates(message as FeeLimit));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeeLimit create() => FeeLimit._();
  FeeLimit createEmptyInstance() => create();
  static $pb.PbList<FeeLimit> createRepeated() => $pb.PbList<FeeLimit>();
  static FeeLimit getDefault() => _defaultInstance ??= create()..freeze();
  static FeeLimit _defaultInstance;

  FeeLimit_Limit whichLimit() => _FeeLimit_LimitByTag[$_whichOneof(0)];
  void clearLimit() => clearField($_whichOneof(0));

  Int64 get fixed => $_getI64(0);
  set fixed(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasFixed() => $_has(0);
  void clearFixed() => clearField(1);

  Int64 get percent => $_getI64(1);
  set percent(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasPercent() => $_has(1);
  void clearPercent() => clearField(2);

  Int64 get fixedMsat => $_getI64(2);
  set fixedMsat(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasFixedMsat() => $_has(2);
  void clearFixedMsat() => clearField(3);
}

class SendRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'dest', $pb.PbFieldType.OY)
    ..aOS(2, 'destString')
    ..aInt64(3, 'amt')
    ..a<$core.List<$core.int>>(4, 'paymentHash', $pb.PbFieldType.OY)
    ..aOS(5, 'paymentHashString')
    ..aOS(6, 'paymentRequest')
    ..a<$core.int>(7, 'finalCltvDelta', $pb.PbFieldType.O3)
    ..a<FeeLimit>(8, 'feeLimit', $pb.PbFieldType.OM,
        defaultOrMaker: FeeLimit.getDefault, subBuilder: FeeLimit.create)
    ..a<Int64>(9, 'outgoingChanId', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<$core.int>(10, 'cltvLimit', $pb.PbFieldType.OU3)
    ..m<Int64, $core.List<$core.int>>(11, 'destCustomRecords',
        entryClassName: 'SendRequest.DestCustomRecordsEntry',
        keyFieldType: $pb.PbFieldType.OU6,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('lnrpc'))
    ..aInt64(12, 'amtMsat')
    ..a<$core.List<$core.int>>(13, 'lastHopPubkey', $pb.PbFieldType.OY)
    ..aOB(14, 'allowSelfPayment')
    ..pc<FeatureBit>(15, 'destFeatures', $pb.PbFieldType.PE,
        valueOf: FeatureBit.valueOf, enumValues: FeatureBit.values)
    ..hasRequiredFields = false;

  SendRequest._() : super();
  factory SendRequest() => create();
  factory SendRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SendRequest clone() => SendRequest()..mergeFromMessage(this);
  SendRequest copyWith(void Function(SendRequest) updates) =>
      super.copyWith((message) => updates(message as SendRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendRequest create() => SendRequest._();
  SendRequest createEmptyInstance() => create();
  static $pb.PbList<SendRequest> createRepeated() => $pb.PbList<SendRequest>();
  static SendRequest getDefault() => _defaultInstance ??= create()..freeze();
  static SendRequest _defaultInstance;

  $core.List<$core.int> get dest => $_getN(0);
  set dest($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasDest() => $_has(0);
  void clearDest() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  $core.String get destString => $_getS(1, '');
  @$core.Deprecated('This field is deprecated.')
  set destString($core.String v) {
    $_setString(1, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasDestString() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  void clearDestString() => clearField(2);

  Int64 get amt => $_getI64(2);
  set amt(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasAmt() => $_has(2);
  void clearAmt() => clearField(3);

  $core.List<$core.int> get paymentHash => $_getN(3);
  set paymentHash($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  $core.bool hasPaymentHash() => $_has(3);
  void clearPaymentHash() => clearField(4);

  @$core.Deprecated('This field is deprecated.')
  $core.String get paymentHashString => $_getS(4, '');
  @$core.Deprecated('This field is deprecated.')
  set paymentHashString($core.String v) {
    $_setString(4, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasPaymentHashString() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  void clearPaymentHashString() => clearField(5);

  $core.String get paymentRequest => $_getS(5, '');
  set paymentRequest($core.String v) {
    $_setString(5, v);
  }

  $core.bool hasPaymentRequest() => $_has(5);
  void clearPaymentRequest() => clearField(6);

  $core.int get finalCltvDelta => $_get(6, 0);
  set finalCltvDelta($core.int v) {
    $_setSignedInt32(6, v);
  }

  $core.bool hasFinalCltvDelta() => $_has(6);
  void clearFinalCltvDelta() => clearField(7);

  FeeLimit get feeLimit => $_getN(7);
  set feeLimit(FeeLimit v) {
    setField(8, v);
  }

  $core.bool hasFeeLimit() => $_has(7);
  void clearFeeLimit() => clearField(8);

  Int64 get outgoingChanId => $_getI64(8);
  set outgoingChanId(Int64 v) {
    $_setInt64(8, v);
  }

  $core.bool hasOutgoingChanId() => $_has(8);
  void clearOutgoingChanId() => clearField(9);

  $core.int get cltvLimit => $_get(9, 0);
  set cltvLimit($core.int v) {
    $_setUnsignedInt32(9, v);
  }

  $core.bool hasCltvLimit() => $_has(9);
  void clearCltvLimit() => clearField(10);

  $core.Map<Int64, $core.List<$core.int>> get destCustomRecords => $_getMap(10);

  Int64 get amtMsat => $_getI64(11);
  set amtMsat(Int64 v) {
    $_setInt64(11, v);
  }

  $core.bool hasAmtMsat() => $_has(11);
  void clearAmtMsat() => clearField(12);

  $core.List<$core.int> get lastHopPubkey => $_getN(12);
  set lastHopPubkey($core.List<$core.int> v) {
    $_setBytes(12, v);
  }

  $core.bool hasLastHopPubkey() => $_has(12);
  void clearLastHopPubkey() => clearField(13);

  $core.bool get allowSelfPayment => $_get(13, false);
  set allowSelfPayment($core.bool v) {
    $_setBool(13, v);
  }

  $core.bool hasAllowSelfPayment() => $_has(13);
  void clearAllowSelfPayment() => clearField(14);

  $core.List<FeatureBit> get destFeatures => $_getList(14);
}

class SendResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'payment_error')
    ..a<$core.List<$core.int>>(2, 'payment_preimage', $pb.PbFieldType.OY)
    ..a<Route>(3, 'payment_route', $pb.PbFieldType.OM,
        defaultOrMaker: Route.getDefault, subBuilder: Route.create)
    ..a<$core.List<$core.int>>(4, 'payment_hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  SendResponse._() : super();
  factory SendResponse() => create();
  factory SendResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SendResponse clone() => SendResponse()..mergeFromMessage(this);
  SendResponse copyWith(void Function(SendResponse) updates) =>
      super.copyWith((message) => updates(message as SendResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendResponse create() => SendResponse._();
  SendResponse createEmptyInstance() => create();
  static $pb.PbList<SendResponse> createRepeated() =>
      $pb.PbList<SendResponse>();
  static SendResponse getDefault() => _defaultInstance ??= create()..freeze();
  static SendResponse _defaultInstance;

  $core.String get paymentError => $_getS(0, '');
  set paymentError($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasPaymentError() => $_has(0);
  void clearPaymentError() => clearField(1);

  $core.List<$core.int> get paymentPreimage => $_getN(1);
  set paymentPreimage($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasPaymentPreimage() => $_has(1);
  void clearPaymentPreimage() => clearField(2);

  Route get paymentRoute => $_getN(2);
  set paymentRoute(Route v) {
    setField(3, v);
  }

  $core.bool hasPaymentRoute() => $_has(2);
  void clearPaymentRoute() => clearField(3);

  $core.List<$core.int> get paymentHash => $_getN(3);
  set paymentHash($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  $core.bool hasPaymentHash() => $_has(3);
  void clearPaymentHash() => clearField(4);
}

class SendToRouteRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendToRouteRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'paymentHash', $pb.PbFieldType.OY)
    ..aOS(2, 'paymentHashString')
    ..a<Route>(4, 'route', $pb.PbFieldType.OM,
        defaultOrMaker: Route.getDefault, subBuilder: Route.create)
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

  @$core.Deprecated('This field is deprecated.')
  $core.String get paymentHashString => $_getS(1, '');
  @$core.Deprecated('This field is deprecated.')
  set paymentHashString($core.String v) {
    $_setString(1, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasPaymentHashString() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  void clearPaymentHashString() => clearField(2);

  Route get route => $_getN(2);
  set route(Route v) {
    setField(4, v);
  }

  $core.bool hasRoute() => $_has(2);
  void clearRoute() => clearField(4);
}

class ChannelAcceptRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelAcceptRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'nodePubkey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'chainHash', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(3, 'pendingChanId', $pb.PbFieldType.OY)
    ..a<Int64>(4, 'fundingAmt', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(5, 'pushAmt', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(6, 'dustLimit', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(7, 'maxValueInFlight', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<Int64>(8, 'channelReserve', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<Int64>(9, 'minHtlc', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(10, 'feePerKw', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<$core.int>(11, 'csvDelay', $pb.PbFieldType.OU3)
    ..a<$core.int>(12, 'maxAcceptedHtlcs', $pb.PbFieldType.OU3)
    ..a<$core.int>(13, 'channelFlags', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  ChannelAcceptRequest._() : super();
  factory ChannelAcceptRequest() => create();
  factory ChannelAcceptRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelAcceptRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelAcceptRequest clone() =>
      ChannelAcceptRequest()..mergeFromMessage(this);
  ChannelAcceptRequest copyWith(void Function(ChannelAcceptRequest) updates) =>
      super.copyWith((message) => updates(message as ChannelAcceptRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelAcceptRequest create() => ChannelAcceptRequest._();
  ChannelAcceptRequest createEmptyInstance() => create();
  static $pb.PbList<ChannelAcceptRequest> createRepeated() =>
      $pb.PbList<ChannelAcceptRequest>();
  static ChannelAcceptRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelAcceptRequest _defaultInstance;

  $core.List<$core.int> get nodePubkey => $_getN(0);
  set nodePubkey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasNodePubkey() => $_has(0);
  void clearNodePubkey() => clearField(1);

  $core.List<$core.int> get chainHash => $_getN(1);
  set chainHash($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasChainHash() => $_has(1);
  void clearChainHash() => clearField(2);

  $core.List<$core.int> get pendingChanId => $_getN(2);
  set pendingChanId($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  $core.bool hasPendingChanId() => $_has(2);
  void clearPendingChanId() => clearField(3);

  Int64 get fundingAmt => $_getI64(3);
  set fundingAmt(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasFundingAmt() => $_has(3);
  void clearFundingAmt() => clearField(4);

  Int64 get pushAmt => $_getI64(4);
  set pushAmt(Int64 v) {
    $_setInt64(4, v);
  }

  $core.bool hasPushAmt() => $_has(4);
  void clearPushAmt() => clearField(5);

  Int64 get dustLimit => $_getI64(5);
  set dustLimit(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasDustLimit() => $_has(5);
  void clearDustLimit() => clearField(6);

  Int64 get maxValueInFlight => $_getI64(6);
  set maxValueInFlight(Int64 v) {
    $_setInt64(6, v);
  }

  $core.bool hasMaxValueInFlight() => $_has(6);
  void clearMaxValueInFlight() => clearField(7);

  Int64 get channelReserve => $_getI64(7);
  set channelReserve(Int64 v) {
    $_setInt64(7, v);
  }

  $core.bool hasChannelReserve() => $_has(7);
  void clearChannelReserve() => clearField(8);

  Int64 get minHtlc => $_getI64(8);
  set minHtlc(Int64 v) {
    $_setInt64(8, v);
  }

  $core.bool hasMinHtlc() => $_has(8);
  void clearMinHtlc() => clearField(9);

  Int64 get feePerKw => $_getI64(9);
  set feePerKw(Int64 v) {
    $_setInt64(9, v);
  }

  $core.bool hasFeePerKw() => $_has(9);
  void clearFeePerKw() => clearField(10);

  $core.int get csvDelay => $_get(10, 0);
  set csvDelay($core.int v) {
    $_setUnsignedInt32(10, v);
  }

  $core.bool hasCsvDelay() => $_has(10);
  void clearCsvDelay() => clearField(11);

  $core.int get maxAcceptedHtlcs => $_get(11, 0);
  set maxAcceptedHtlcs($core.int v) {
    $_setUnsignedInt32(11, v);
  }

  $core.bool hasMaxAcceptedHtlcs() => $_has(11);
  void clearMaxAcceptedHtlcs() => clearField(12);

  $core.int get channelFlags => $_get(12, 0);
  set channelFlags($core.int v) {
    $_setUnsignedInt32(12, v);
  }

  $core.bool hasChannelFlags() => $_has(12);
  void clearChannelFlags() => clearField(13);
}

class ChannelAcceptResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelAcceptResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOB(1, 'accept')
    ..a<$core.List<$core.int>>(2, 'pendingChanId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  ChannelAcceptResponse._() : super();
  factory ChannelAcceptResponse() => create();
  factory ChannelAcceptResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelAcceptResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelAcceptResponse clone() =>
      ChannelAcceptResponse()..mergeFromMessage(this);
  ChannelAcceptResponse copyWith(
          void Function(ChannelAcceptResponse) updates) =>
      super.copyWith((message) => updates(message as ChannelAcceptResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelAcceptResponse create() => ChannelAcceptResponse._();
  ChannelAcceptResponse createEmptyInstance() => create();
  static $pb.PbList<ChannelAcceptResponse> createRepeated() =>
      $pb.PbList<ChannelAcceptResponse>();
  static ChannelAcceptResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelAcceptResponse _defaultInstance;

  $core.bool get accept => $_get(0, false);
  set accept($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasAccept() => $_has(0);
  void clearAccept() => clearField(1);

  $core.List<$core.int> get pendingChanId => $_getN(1);
  set pendingChanId($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasPendingChanId() => $_has(1);
  void clearPendingChanId() => clearField(2);
}

enum ChannelPoint_FundingTxid { fundingTxidBytes, fundingTxidStr, notSet }

class ChannelPoint extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ChannelPoint_FundingTxid>
      _ChannelPoint_FundingTxidByTag = {
    1: ChannelPoint_FundingTxid.fundingTxidBytes,
    2: ChannelPoint_FundingTxid.fundingTxidStr,
    0: ChannelPoint_FundingTxid.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelPoint',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<$core.List<$core.int>>(1, 'funding_txid_bytes', $pb.PbFieldType.OY)
    ..aOS(2, 'funding_txid_str')
    ..a<$core.int>(3, 'output_index', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  ChannelPoint._() : super();
  factory ChannelPoint() => create();
  factory ChannelPoint.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelPoint.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelPoint clone() => ChannelPoint()..mergeFromMessage(this);
  ChannelPoint copyWith(void Function(ChannelPoint) updates) =>
      super.copyWith((message) => updates(message as ChannelPoint));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelPoint create() => ChannelPoint._();
  ChannelPoint createEmptyInstance() => create();
  static $pb.PbList<ChannelPoint> createRepeated() =>
      $pb.PbList<ChannelPoint>();
  static ChannelPoint getDefault() => _defaultInstance ??= create()..freeze();
  static ChannelPoint _defaultInstance;

  ChannelPoint_FundingTxid whichFundingTxid() =>
      _ChannelPoint_FundingTxidByTag[$_whichOneof(0)];
  void clearFundingTxid() => clearField($_whichOneof(0));

  $core.List<$core.int> get fundingTxidBytes => $_getN(0);
  set fundingTxidBytes($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasFundingTxidBytes() => $_has(0);
  void clearFundingTxidBytes() => clearField(1);

  $core.String get fundingTxidStr => $_getS(1, '');
  set fundingTxidStr($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasFundingTxidStr() => $_has(1);
  void clearFundingTxidStr() => clearField(2);

  $core.int get outputIndex => $_get(2, 0);
  set outputIndex($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  $core.bool hasOutputIndex() => $_has(2);
  void clearOutputIndex() => clearField(3);
}

class OutPoint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OutPoint',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'txid_bytes', $pb.PbFieldType.OY)
    ..aOS(2, 'txid_str')
    ..a<$core.int>(3, 'output_index', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  OutPoint._() : super();
  factory OutPoint() => create();
  factory OutPoint.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OutPoint.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  OutPoint clone() => OutPoint()..mergeFromMessage(this);
  OutPoint copyWith(void Function(OutPoint) updates) =>
      super.copyWith((message) => updates(message as OutPoint));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OutPoint create() => OutPoint._();
  OutPoint createEmptyInstance() => create();
  static $pb.PbList<OutPoint> createRepeated() => $pb.PbList<OutPoint>();
  static OutPoint getDefault() => _defaultInstance ??= create()..freeze();
  static OutPoint _defaultInstance;

  $core.List<$core.int> get txidBytes => $_getN(0);
  set txidBytes($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasTxidBytes() => $_has(0);
  void clearTxidBytes() => clearField(1);

  $core.String get txidStr => $_getS(1, '');
  set txidStr($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasTxidStr() => $_has(1);
  void clearTxidStr() => clearField(2);

  $core.int get outputIndex => $_get(2, 0);
  set outputIndex($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  $core.bool hasOutputIndex() => $_has(2);
  void clearOutputIndex() => clearField(3);
}

class LightningAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LightningAddress',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'pubkey')
    ..aOS(2, 'host')
    ..hasRequiredFields = false;

  LightningAddress._() : super();
  factory LightningAddress() => create();
  factory LightningAddress.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LightningAddress.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  LightningAddress clone() => LightningAddress()..mergeFromMessage(this);
  LightningAddress copyWith(void Function(LightningAddress) updates) =>
      super.copyWith((message) => updates(message as LightningAddress));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LightningAddress create() => LightningAddress._();
  LightningAddress createEmptyInstance() => create();
  static $pb.PbList<LightningAddress> createRepeated() =>
      $pb.PbList<LightningAddress>();
  static LightningAddress getDefault() =>
      _defaultInstance ??= create()..freeze();
  static LightningAddress _defaultInstance;

  $core.String get pubkey => $_getS(0, '');
  set pubkey($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasPubkey() => $_has(0);
  void clearPubkey() => clearField(1);

  $core.String get host => $_getS(1, '');
  set host($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasHost() => $_has(1);
  void clearHost() => clearField(2);
}

class EstimateFeeRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EstimateFeeRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..m<$core.String, Int64>(1, 'AddrToAmount',
        protoName: 'AddrToAmount',
        entryClassName: 'EstimateFeeRequest.AddrToAmountEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.O6,
        packageName: const $pb.PackageName('lnrpc'))
    ..a<$core.int>(2, 'targetConf', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  EstimateFeeRequest._() : super();
  factory EstimateFeeRequest() => create();
  factory EstimateFeeRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EstimateFeeRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EstimateFeeRequest clone() => EstimateFeeRequest()..mergeFromMessage(this);
  EstimateFeeRequest copyWith(void Function(EstimateFeeRequest) updates) =>
      super.copyWith((message) => updates(message as EstimateFeeRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EstimateFeeRequest create() => EstimateFeeRequest._();
  EstimateFeeRequest createEmptyInstance() => create();
  static $pb.PbList<EstimateFeeRequest> createRepeated() =>
      $pb.PbList<EstimateFeeRequest>();
  static EstimateFeeRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static EstimateFeeRequest _defaultInstance;

  $core.Map<$core.String, Int64> get addrToAmount => $_getMap(0);

  $core.int get targetConf => $_get(1, 0);
  set targetConf($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasTargetConf() => $_has(1);
  void clearTargetConf() => clearField(2);
}

class EstimateFeeResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EstimateFeeResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aInt64(1, 'fee_sat')
    ..aInt64(2, 'feerate_sat_per_byte')
    ..hasRequiredFields = false;

  EstimateFeeResponse._() : super();
  factory EstimateFeeResponse() => create();
  factory EstimateFeeResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EstimateFeeResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EstimateFeeResponse clone() => EstimateFeeResponse()..mergeFromMessage(this);
  EstimateFeeResponse copyWith(void Function(EstimateFeeResponse) updates) =>
      super.copyWith((message) => updates(message as EstimateFeeResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EstimateFeeResponse create() => EstimateFeeResponse._();
  EstimateFeeResponse createEmptyInstance() => create();
  static $pb.PbList<EstimateFeeResponse> createRepeated() =>
      $pb.PbList<EstimateFeeResponse>();
  static EstimateFeeResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static EstimateFeeResponse _defaultInstance;

  Int64 get feeSat => $_getI64(0);
  set feeSat(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasFeeSat() => $_has(0);
  void clearFeeSat() => clearField(1);

  Int64 get feerateSatPerByte => $_getI64(1);
  set feerateSatPerByte(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasFeerateSatPerByte() => $_has(1);
  void clearFeerateSatPerByte() => clearField(2);
}

class SendManyRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendManyRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..m<$core.String, Int64>(1, 'AddrToAmount',
        protoName: 'AddrToAmount',
        entryClassName: 'SendManyRequest.AddrToAmountEntry',
        keyFieldType: $pb.PbFieldType.OS,
        valueFieldType: $pb.PbFieldType.O6,
        packageName: const $pb.PackageName('lnrpc'))
    ..a<$core.int>(3, 'targetConf', $pb.PbFieldType.O3)
    ..aInt64(5, 'satPerByte')
    ..hasRequiredFields = false;

  SendManyRequest._() : super();
  factory SendManyRequest() => create();
  factory SendManyRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendManyRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SendManyRequest clone() => SendManyRequest()..mergeFromMessage(this);
  SendManyRequest copyWith(void Function(SendManyRequest) updates) =>
      super.copyWith((message) => updates(message as SendManyRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendManyRequest create() => SendManyRequest._();
  SendManyRequest createEmptyInstance() => create();
  static $pb.PbList<SendManyRequest> createRepeated() =>
      $pb.PbList<SendManyRequest>();
  static SendManyRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SendManyRequest _defaultInstance;

  $core.Map<$core.String, Int64> get addrToAmount => $_getMap(0);

  $core.int get targetConf => $_get(1, 0);
  set targetConf($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasTargetConf() => $_has(1);
  void clearTargetConf() => clearField(3);

  Int64 get satPerByte => $_getI64(2);
  set satPerByte(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasSatPerByte() => $_has(2);
  void clearSatPerByte() => clearField(5);
}

class SendManyResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendManyResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'txid')
    ..hasRequiredFields = false;

  SendManyResponse._() : super();
  factory SendManyResponse() => create();
  factory SendManyResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendManyResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SendManyResponse clone() => SendManyResponse()..mergeFromMessage(this);
  SendManyResponse copyWith(void Function(SendManyResponse) updates) =>
      super.copyWith((message) => updates(message as SendManyResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendManyResponse create() => SendManyResponse._();
  SendManyResponse createEmptyInstance() => create();
  static $pb.PbList<SendManyResponse> createRepeated() =>
      $pb.PbList<SendManyResponse>();
  static SendManyResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SendManyResponse _defaultInstance;

  $core.String get txid => $_getS(0, '');
  set txid($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasTxid() => $_has(0);
  void clearTxid() => clearField(1);
}

class SendCoinsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendCoinsRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'addr')
    ..aInt64(2, 'amount')
    ..a<$core.int>(3, 'targetConf', $pb.PbFieldType.O3)
    ..aInt64(5, 'satPerByte')
    ..aOB(6, 'sendAll')
    ..hasRequiredFields = false;

  SendCoinsRequest._() : super();
  factory SendCoinsRequest() => create();
  factory SendCoinsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendCoinsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SendCoinsRequest clone() => SendCoinsRequest()..mergeFromMessage(this);
  SendCoinsRequest copyWith(void Function(SendCoinsRequest) updates) =>
      super.copyWith((message) => updates(message as SendCoinsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendCoinsRequest create() => SendCoinsRequest._();
  SendCoinsRequest createEmptyInstance() => create();
  static $pb.PbList<SendCoinsRequest> createRepeated() =>
      $pb.PbList<SendCoinsRequest>();
  static SendCoinsRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SendCoinsRequest _defaultInstance;

  $core.String get addr => $_getS(0, '');
  set addr($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasAddr() => $_has(0);
  void clearAddr() => clearField(1);

  Int64 get amount => $_getI64(1);
  set amount(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasAmount() => $_has(1);
  void clearAmount() => clearField(2);

  $core.int get targetConf => $_get(2, 0);
  set targetConf($core.int v) {
    $_setSignedInt32(2, v);
  }

  $core.bool hasTargetConf() => $_has(2);
  void clearTargetConf() => clearField(3);

  Int64 get satPerByte => $_getI64(3);
  set satPerByte(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasSatPerByte() => $_has(3);
  void clearSatPerByte() => clearField(5);

  $core.bool get sendAll => $_get(4, false);
  set sendAll($core.bool v) {
    $_setBool(4, v);
  }

  $core.bool hasSendAll() => $_has(4);
  void clearSendAll() => clearField(6);
}

class SendCoinsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SendCoinsResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'txid')
    ..hasRequiredFields = false;

  SendCoinsResponse._() : super();
  factory SendCoinsResponse() => create();
  factory SendCoinsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SendCoinsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SendCoinsResponse clone() => SendCoinsResponse()..mergeFromMessage(this);
  SendCoinsResponse copyWith(void Function(SendCoinsResponse) updates) =>
      super.copyWith((message) => updates(message as SendCoinsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SendCoinsResponse create() => SendCoinsResponse._();
  SendCoinsResponse createEmptyInstance() => create();
  static $pb.PbList<SendCoinsResponse> createRepeated() =>
      $pb.PbList<SendCoinsResponse>();
  static SendCoinsResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SendCoinsResponse _defaultInstance;

  $core.String get txid => $_getS(0, '');
  set txid($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasTxid() => $_has(0);
  void clearTxid() => clearField(1);
}

class ListUnspentRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListUnspentRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, 'minConfs', $pb.PbFieldType.O3)
    ..a<$core.int>(2, 'maxConfs', $pb.PbFieldType.O3)
    ..hasRequiredFields = false;

  ListUnspentRequest._() : super();
  factory ListUnspentRequest() => create();
  factory ListUnspentRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListUnspentRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListUnspentRequest clone() => ListUnspentRequest()..mergeFromMessage(this);
  ListUnspentRequest copyWith(void Function(ListUnspentRequest) updates) =>
      super.copyWith((message) => updates(message as ListUnspentRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListUnspentRequest create() => ListUnspentRequest._();
  ListUnspentRequest createEmptyInstance() => create();
  static $pb.PbList<ListUnspentRequest> createRepeated() =>
      $pb.PbList<ListUnspentRequest>();
  static ListUnspentRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ListUnspentRequest _defaultInstance;

  $core.int get minConfs => $_get(0, 0);
  set minConfs($core.int v) {
    $_setSignedInt32(0, v);
  }

  $core.bool hasMinConfs() => $_has(0);
  void clearMinConfs() => clearField(1);

  $core.int get maxConfs => $_get(1, 0);
  set maxConfs($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasMaxConfs() => $_has(1);
  void clearMaxConfs() => clearField(2);
}

class ListUnspentResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListUnspentResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<Utxo>(1, 'utxos', $pb.PbFieldType.PM, subBuilder: Utxo.create)
    ..hasRequiredFields = false;

  ListUnspentResponse._() : super();
  factory ListUnspentResponse() => create();
  factory ListUnspentResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListUnspentResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListUnspentResponse clone() => ListUnspentResponse()..mergeFromMessage(this);
  ListUnspentResponse copyWith(void Function(ListUnspentResponse) updates) =>
      super.copyWith((message) => updates(message as ListUnspentResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListUnspentResponse create() => ListUnspentResponse._();
  ListUnspentResponse createEmptyInstance() => create();
  static $pb.PbList<ListUnspentResponse> createRepeated() =>
      $pb.PbList<ListUnspentResponse>();
  static ListUnspentResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ListUnspentResponse _defaultInstance;

  $core.List<Utxo> get utxos => $_getList(0);
}

class NewAddressRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewAddressRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..e<AddressType>(1, 'type', $pb.PbFieldType.OE,
        defaultOrMaker: AddressType.WITNESS_PUBKEY_HASH,
        valueOf: AddressType.valueOf,
        enumValues: AddressType.values)
    ..hasRequiredFields = false;

  NewAddressRequest._() : super();
  factory NewAddressRequest() => create();
  factory NewAddressRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewAddressRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NewAddressRequest clone() => NewAddressRequest()..mergeFromMessage(this);
  NewAddressRequest copyWith(void Function(NewAddressRequest) updates) =>
      super.copyWith((message) => updates(message as NewAddressRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewAddressRequest create() => NewAddressRequest._();
  NewAddressRequest createEmptyInstance() => create();
  static $pb.PbList<NewAddressRequest> createRepeated() =>
      $pb.PbList<NewAddressRequest>();
  static NewAddressRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static NewAddressRequest _defaultInstance;

  AddressType get type => $_getN(0);
  set type(AddressType v) {
    setField(1, v);
  }

  $core.bool hasType() => $_has(0);
  void clearType() => clearField(1);
}

class NewAddressResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NewAddressResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'address')
    ..hasRequiredFields = false;

  NewAddressResponse._() : super();
  factory NewAddressResponse() => create();
  factory NewAddressResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NewAddressResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NewAddressResponse clone() => NewAddressResponse()..mergeFromMessage(this);
  NewAddressResponse copyWith(void Function(NewAddressResponse) updates) =>
      super.copyWith((message) => updates(message as NewAddressResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NewAddressResponse create() => NewAddressResponse._();
  NewAddressResponse createEmptyInstance() => create();
  static $pb.PbList<NewAddressResponse> createRepeated() =>
      $pb.PbList<NewAddressResponse>();
  static NewAddressResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static NewAddressResponse _defaultInstance;

  $core.String get address => $_getS(0, '');
  set address($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasAddress() => $_has(0);
  void clearAddress() => clearField(1);
}

class SignMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignMessageRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'msg', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  SignMessageRequest._() : super();
  factory SignMessageRequest() => create();
  factory SignMessageRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SignMessageRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SignMessageRequest clone() => SignMessageRequest()..mergeFromMessage(this);
  SignMessageRequest copyWith(void Function(SignMessageRequest) updates) =>
      super.copyWith((message) => updates(message as SignMessageRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignMessageRequest create() => SignMessageRequest._();
  SignMessageRequest createEmptyInstance() => create();
  static $pb.PbList<SignMessageRequest> createRepeated() =>
      $pb.PbList<SignMessageRequest>();
  static SignMessageRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SignMessageRequest _defaultInstance;

  $core.List<$core.int> get msg => $_getN(0);
  set msg($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasMsg() => $_has(0);
  void clearMsg() => clearField(1);
}

class SignMessageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('SignMessageResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'signature')
    ..hasRequiredFields = false;

  SignMessageResponse._() : super();
  factory SignMessageResponse() => create();
  factory SignMessageResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory SignMessageResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  SignMessageResponse clone() => SignMessageResponse()..mergeFromMessage(this);
  SignMessageResponse copyWith(void Function(SignMessageResponse) updates) =>
      super.copyWith((message) => updates(message as SignMessageResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static SignMessageResponse create() => SignMessageResponse._();
  SignMessageResponse createEmptyInstance() => create();
  static $pb.PbList<SignMessageResponse> createRepeated() =>
      $pb.PbList<SignMessageResponse>();
  static SignMessageResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static SignMessageResponse _defaultInstance;

  $core.String get signature => $_getS(0, '');
  set signature($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasSignature() => $_has(0);
  void clearSignature() => clearField(1);
}

class VerifyMessageRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerifyMessageRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'msg', $pb.PbFieldType.OY)
    ..aOS(2, 'signature')
    ..hasRequiredFields = false;

  VerifyMessageRequest._() : super();
  factory VerifyMessageRequest() => create();
  factory VerifyMessageRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerifyMessageRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  VerifyMessageRequest clone() =>
      VerifyMessageRequest()..mergeFromMessage(this);
  VerifyMessageRequest copyWith(void Function(VerifyMessageRequest) updates) =>
      super.copyWith((message) => updates(message as VerifyMessageRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyMessageRequest create() => VerifyMessageRequest._();
  VerifyMessageRequest createEmptyInstance() => create();
  static $pb.PbList<VerifyMessageRequest> createRepeated() =>
      $pb.PbList<VerifyMessageRequest>();
  static VerifyMessageRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static VerifyMessageRequest _defaultInstance;

  $core.List<$core.int> get msg => $_getN(0);
  set msg($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasMsg() => $_has(0);
  void clearMsg() => clearField(1);

  $core.String get signature => $_getS(1, '');
  set signature($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasSignature() => $_has(1);
  void clearSignature() => clearField(2);
}

class VerifyMessageResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerifyMessageResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOB(1, 'valid')
    ..aOS(2, 'pubkey')
    ..hasRequiredFields = false;

  VerifyMessageResponse._() : super();
  factory VerifyMessageResponse() => create();
  factory VerifyMessageResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerifyMessageResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  VerifyMessageResponse clone() =>
      VerifyMessageResponse()..mergeFromMessage(this);
  VerifyMessageResponse copyWith(
          void Function(VerifyMessageResponse) updates) =>
      super.copyWith((message) => updates(message as VerifyMessageResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyMessageResponse create() => VerifyMessageResponse._();
  VerifyMessageResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyMessageResponse> createRepeated() =>
      $pb.PbList<VerifyMessageResponse>();
  static VerifyMessageResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static VerifyMessageResponse _defaultInstance;

  $core.bool get valid => $_get(0, false);
  set valid($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasValid() => $_has(0);
  void clearValid() => clearField(1);

  $core.String get pubkey => $_getS(1, '');
  set pubkey($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasPubkey() => $_has(1);
  void clearPubkey() => clearField(2);
}

class ConnectPeerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ConnectPeerRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<LightningAddress>(1, 'addr', $pb.PbFieldType.OM,
        defaultOrMaker: LightningAddress.getDefault,
        subBuilder: LightningAddress.create)
    ..aOB(2, 'perm')
    ..hasRequiredFields = false;

  ConnectPeerRequest._() : super();
  factory ConnectPeerRequest() => create();
  factory ConnectPeerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConnectPeerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ConnectPeerRequest clone() => ConnectPeerRequest()..mergeFromMessage(this);
  ConnectPeerRequest copyWith(void Function(ConnectPeerRequest) updates) =>
      super.copyWith((message) => updates(message as ConnectPeerRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectPeerRequest create() => ConnectPeerRequest._();
  ConnectPeerRequest createEmptyInstance() => create();
  static $pb.PbList<ConnectPeerRequest> createRepeated() =>
      $pb.PbList<ConnectPeerRequest>();
  static ConnectPeerRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ConnectPeerRequest _defaultInstance;

  LightningAddress get addr => $_getN(0);
  set addr(LightningAddress v) {
    setField(1, v);
  }

  $core.bool hasAddr() => $_has(0);
  void clearAddr() => clearField(1);

  $core.bool get perm => $_get(1, false);
  set perm($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasPerm() => $_has(1);
  void clearPerm() => clearField(2);
}

class ConnectPeerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ConnectPeerResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  ConnectPeerResponse._() : super();
  factory ConnectPeerResponse() => create();
  factory ConnectPeerResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConnectPeerResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ConnectPeerResponse clone() => ConnectPeerResponse()..mergeFromMessage(this);
  ConnectPeerResponse copyWith(void Function(ConnectPeerResponse) updates) =>
      super.copyWith((message) => updates(message as ConnectPeerResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConnectPeerResponse create() => ConnectPeerResponse._();
  ConnectPeerResponse createEmptyInstance() => create();
  static $pb.PbList<ConnectPeerResponse> createRepeated() =>
      $pb.PbList<ConnectPeerResponse>();
  static ConnectPeerResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ConnectPeerResponse _defaultInstance;
}

class DisconnectPeerRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DisconnectPeerRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'pub_key')
    ..hasRequiredFields = false;

  DisconnectPeerRequest._() : super();
  factory DisconnectPeerRequest() => create();
  factory DisconnectPeerRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DisconnectPeerRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DisconnectPeerRequest clone() =>
      DisconnectPeerRequest()..mergeFromMessage(this);
  DisconnectPeerRequest copyWith(
          void Function(DisconnectPeerRequest) updates) =>
      super.copyWith((message) => updates(message as DisconnectPeerRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DisconnectPeerRequest create() => DisconnectPeerRequest._();
  DisconnectPeerRequest createEmptyInstance() => create();
  static $pb.PbList<DisconnectPeerRequest> createRepeated() =>
      $pb.PbList<DisconnectPeerRequest>();
  static DisconnectPeerRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DisconnectPeerRequest _defaultInstance;

  $core.String get pubKey => $_getS(0, '');
  set pubKey($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasPubKey() => $_has(0);
  void clearPubKey() => clearField(1);
}

class DisconnectPeerResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DisconnectPeerResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  DisconnectPeerResponse._() : super();
  factory DisconnectPeerResponse() => create();
  factory DisconnectPeerResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DisconnectPeerResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DisconnectPeerResponse clone() =>
      DisconnectPeerResponse()..mergeFromMessage(this);
  DisconnectPeerResponse copyWith(
          void Function(DisconnectPeerResponse) updates) =>
      super.copyWith((message) => updates(message as DisconnectPeerResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DisconnectPeerResponse create() => DisconnectPeerResponse._();
  DisconnectPeerResponse createEmptyInstance() => create();
  static $pb.PbList<DisconnectPeerResponse> createRepeated() =>
      $pb.PbList<DisconnectPeerResponse>();
  static DisconnectPeerResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DisconnectPeerResponse _defaultInstance;
}

class HTLC extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HTLC',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOB(1, 'incoming')
    ..aInt64(2, 'amount')
    ..a<$core.List<$core.int>>(3, 'hash_lock', $pb.PbFieldType.OY)
    ..a<$core.int>(4, 'expiration_height', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  HTLC._() : super();
  factory HTLC() => create();
  factory HTLC.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HTLC.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  HTLC clone() => HTLC()..mergeFromMessage(this);
  HTLC copyWith(void Function(HTLC) updates) =>
      super.copyWith((message) => updates(message as HTLC));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HTLC create() => HTLC._();
  HTLC createEmptyInstance() => create();
  static $pb.PbList<HTLC> createRepeated() => $pb.PbList<HTLC>();
  static HTLC getDefault() => _defaultInstance ??= create()..freeze();
  static HTLC _defaultInstance;

  $core.bool get incoming => $_get(0, false);
  set incoming($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasIncoming() => $_has(0);
  void clearIncoming() => clearField(1);

  Int64 get amount => $_getI64(1);
  set amount(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasAmount() => $_has(1);
  void clearAmount() => clearField(2);

  $core.List<$core.int> get hashLock => $_getN(2);
  set hashLock($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  $core.bool hasHashLock() => $_has(2);
  void clearHashLock() => clearField(3);

  $core.int get expirationHeight => $_get(3, 0);
  set expirationHeight($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  $core.bool hasExpirationHeight() => $_has(3);
  void clearExpirationHeight() => clearField(4);
}

class Channel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Channel',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOB(1, 'active')
    ..aOS(2, 'remote_pubkey')
    ..aOS(3, 'channel_point')
    ..a<Int64>(4, 'chan_id', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..aInt64(5, 'capacity')
    ..aInt64(6, 'local_balance')
    ..aInt64(7, 'remote_balance')
    ..aInt64(8, 'commit_fee')
    ..aInt64(9, 'commit_weight')
    ..aInt64(10, 'fee_per_kw')
    ..aInt64(11, 'unsettled_balance')
    ..aInt64(12, 'total_satoshis_sent')
    ..aInt64(13, 'total_satoshis_received')
    ..a<Int64>(14, 'num_updates', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..pc<HTLC>(15, 'pending_htlcs', $pb.PbFieldType.PM, subBuilder: HTLC.create)
    ..a<$core.int>(16, 'csv_delay', $pb.PbFieldType.OU3)
    ..aOB(17, 'private')
    ..aOB(18, 'initiator')
    ..aOS(19, 'chan_status_flags')
    ..aInt64(20, 'local_chan_reserve_sat')
    ..aInt64(21, 'remote_chan_reserve_sat')
    ..aOB(22, 'static_remote_key')
    ..aInt64(23, 'lifetime')
    ..aInt64(24, 'uptime')
    ..aOS(25, 'close_address')
    ..hasRequiredFields = false;

  Channel._() : super();
  factory Channel() => create();
  factory Channel.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Channel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Channel clone() => Channel()..mergeFromMessage(this);
  Channel copyWith(void Function(Channel) updates) =>
      super.copyWith((message) => updates(message as Channel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Channel create() => Channel._();
  Channel createEmptyInstance() => create();
  static $pb.PbList<Channel> createRepeated() => $pb.PbList<Channel>();
  static Channel getDefault() => _defaultInstance ??= create()..freeze();
  static Channel _defaultInstance;

  $core.bool get active => $_get(0, false);
  set active($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasActive() => $_has(0);
  void clearActive() => clearField(1);

  $core.String get remotePubkey => $_getS(1, '');
  set remotePubkey($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasRemotePubkey() => $_has(1);
  void clearRemotePubkey() => clearField(2);

  $core.String get channelPoint => $_getS(2, '');
  set channelPoint($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasChannelPoint() => $_has(2);
  void clearChannelPoint() => clearField(3);

  Int64 get chanId => $_getI64(3);
  set chanId(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasChanId() => $_has(3);
  void clearChanId() => clearField(4);

  Int64 get capacity => $_getI64(4);
  set capacity(Int64 v) {
    $_setInt64(4, v);
  }

  $core.bool hasCapacity() => $_has(4);
  void clearCapacity() => clearField(5);

  Int64 get localBalance => $_getI64(5);
  set localBalance(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasLocalBalance() => $_has(5);
  void clearLocalBalance() => clearField(6);

  Int64 get remoteBalance => $_getI64(6);
  set remoteBalance(Int64 v) {
    $_setInt64(6, v);
  }

  $core.bool hasRemoteBalance() => $_has(6);
  void clearRemoteBalance() => clearField(7);

  Int64 get commitFee => $_getI64(7);
  set commitFee(Int64 v) {
    $_setInt64(7, v);
  }

  $core.bool hasCommitFee() => $_has(7);
  void clearCommitFee() => clearField(8);

  Int64 get commitWeight => $_getI64(8);
  set commitWeight(Int64 v) {
    $_setInt64(8, v);
  }

  $core.bool hasCommitWeight() => $_has(8);
  void clearCommitWeight() => clearField(9);

  Int64 get feePerKw => $_getI64(9);
  set feePerKw(Int64 v) {
    $_setInt64(9, v);
  }

  $core.bool hasFeePerKw() => $_has(9);
  void clearFeePerKw() => clearField(10);

  Int64 get unsettledBalance => $_getI64(10);
  set unsettledBalance(Int64 v) {
    $_setInt64(10, v);
  }

  $core.bool hasUnsettledBalance() => $_has(10);
  void clearUnsettledBalance() => clearField(11);

  Int64 get totalSatoshisSent => $_getI64(11);
  set totalSatoshisSent(Int64 v) {
    $_setInt64(11, v);
  }

  $core.bool hasTotalSatoshisSent() => $_has(11);
  void clearTotalSatoshisSent() => clearField(12);

  Int64 get totalSatoshisReceived => $_getI64(12);
  set totalSatoshisReceived(Int64 v) {
    $_setInt64(12, v);
  }

  $core.bool hasTotalSatoshisReceived() => $_has(12);
  void clearTotalSatoshisReceived() => clearField(13);

  Int64 get numUpdates => $_getI64(13);
  set numUpdates(Int64 v) {
    $_setInt64(13, v);
  }

  $core.bool hasNumUpdates() => $_has(13);
  void clearNumUpdates() => clearField(14);

  $core.List<HTLC> get pendingHtlcs => $_getList(14);

  $core.int get csvDelay => $_get(15, 0);
  set csvDelay($core.int v) {
    $_setUnsignedInt32(15, v);
  }

  $core.bool hasCsvDelay() => $_has(15);
  void clearCsvDelay() => clearField(16);

  $core.bool get private => $_get(16, false);
  set private($core.bool v) {
    $_setBool(16, v);
  }

  $core.bool hasPrivate() => $_has(16);
  void clearPrivate() => clearField(17);

  $core.bool get initiator => $_get(17, false);
  set initiator($core.bool v) {
    $_setBool(17, v);
  }

  $core.bool hasInitiator() => $_has(17);
  void clearInitiator() => clearField(18);

  $core.String get chanStatusFlags => $_getS(18, '');
  set chanStatusFlags($core.String v) {
    $_setString(18, v);
  }

  $core.bool hasChanStatusFlags() => $_has(18);
  void clearChanStatusFlags() => clearField(19);

  Int64 get localChanReserveSat => $_getI64(19);
  set localChanReserveSat(Int64 v) {
    $_setInt64(19, v);
  }

  $core.bool hasLocalChanReserveSat() => $_has(19);
  void clearLocalChanReserveSat() => clearField(20);

  Int64 get remoteChanReserveSat => $_getI64(20);
  set remoteChanReserveSat(Int64 v) {
    $_setInt64(20, v);
  }

  $core.bool hasRemoteChanReserveSat() => $_has(20);
  void clearRemoteChanReserveSat() => clearField(21);

  $core.bool get staticRemoteKey => $_get(21, false);
  set staticRemoteKey($core.bool v) {
    $_setBool(21, v);
  }

  $core.bool hasStaticRemoteKey() => $_has(21);
  void clearStaticRemoteKey() => clearField(22);

  Int64 get lifetime => $_getI64(22);
  set lifetime(Int64 v) {
    $_setInt64(22, v);
  }

  $core.bool hasLifetime() => $_has(22);
  void clearLifetime() => clearField(23);

  Int64 get uptime => $_getI64(23);
  set uptime(Int64 v) {
    $_setInt64(23, v);
  }

  $core.bool hasUptime() => $_has(23);
  void clearUptime() => clearField(24);

  $core.String get closeAddress => $_getS(24, '');
  set closeAddress($core.String v) {
    $_setString(24, v);
  }

  $core.bool hasCloseAddress() => $_has(24);
  void clearCloseAddress() => clearField(25);
}

class ListChannelsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListChannelsRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOB(1, 'activeOnly')
    ..aOB(2, 'inactiveOnly')
    ..aOB(3, 'publicOnly')
    ..aOB(4, 'privateOnly')
    ..hasRequiredFields = false;

  ListChannelsRequest._() : super();
  factory ListChannelsRequest() => create();
  factory ListChannelsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListChannelsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListChannelsRequest clone() => ListChannelsRequest()..mergeFromMessage(this);
  ListChannelsRequest copyWith(void Function(ListChannelsRequest) updates) =>
      super.copyWith((message) => updates(message as ListChannelsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChannelsRequest create() => ListChannelsRequest._();
  ListChannelsRequest createEmptyInstance() => create();
  static $pb.PbList<ListChannelsRequest> createRepeated() =>
      $pb.PbList<ListChannelsRequest>();
  static ListChannelsRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ListChannelsRequest _defaultInstance;

  $core.bool get activeOnly => $_get(0, false);
  set activeOnly($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasActiveOnly() => $_has(0);
  void clearActiveOnly() => clearField(1);

  $core.bool get inactiveOnly => $_get(1, false);
  set inactiveOnly($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasInactiveOnly() => $_has(1);
  void clearInactiveOnly() => clearField(2);

  $core.bool get publicOnly => $_get(2, false);
  set publicOnly($core.bool v) {
    $_setBool(2, v);
  }

  $core.bool hasPublicOnly() => $_has(2);
  void clearPublicOnly() => clearField(3);

  $core.bool get privateOnly => $_get(3, false);
  set privateOnly($core.bool v) {
    $_setBool(3, v);
  }

  $core.bool hasPrivateOnly() => $_has(3);
  void clearPrivateOnly() => clearField(4);
}

class ListChannelsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListChannelsResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<Channel>(11, 'channels', $pb.PbFieldType.PM,
        subBuilder: Channel.create)
    ..hasRequiredFields = false;

  ListChannelsResponse._() : super();
  factory ListChannelsResponse() => create();
  factory ListChannelsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListChannelsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListChannelsResponse clone() =>
      ListChannelsResponse()..mergeFromMessage(this);
  ListChannelsResponse copyWith(void Function(ListChannelsResponse) updates) =>
      super.copyWith((message) => updates(message as ListChannelsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListChannelsResponse create() => ListChannelsResponse._();
  ListChannelsResponse createEmptyInstance() => create();
  static $pb.PbList<ListChannelsResponse> createRepeated() =>
      $pb.PbList<ListChannelsResponse>();
  static ListChannelsResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ListChannelsResponse _defaultInstance;

  $core.List<Channel> get channels => $_getList(0);
}

class ChannelCloseSummary extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelCloseSummary',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'channel_point')
    ..a<Int64>(2, 'chan_id', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..aOS(3, 'chain_hash')
    ..aOS(4, 'closing_tx_hash')
    ..aOS(5, 'remote_pubkey')
    ..aInt64(6, 'capacity')
    ..a<$core.int>(7, 'close_height', $pb.PbFieldType.OU3)
    ..aInt64(8, 'settled_balance')
    ..aInt64(9, 'time_locked_balance')
    ..e<ChannelCloseSummary_ClosureType>(10, 'close_type', $pb.PbFieldType.OE,
        defaultOrMaker: ChannelCloseSummary_ClosureType.COOPERATIVE_CLOSE,
        valueOf: ChannelCloseSummary_ClosureType.valueOf,
        enumValues: ChannelCloseSummary_ClosureType.values)
    ..hasRequiredFields = false;

  ChannelCloseSummary._() : super();
  factory ChannelCloseSummary() => create();
  factory ChannelCloseSummary.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelCloseSummary.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelCloseSummary clone() => ChannelCloseSummary()..mergeFromMessage(this);
  ChannelCloseSummary copyWith(void Function(ChannelCloseSummary) updates) =>
      super.copyWith((message) => updates(message as ChannelCloseSummary));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelCloseSummary create() => ChannelCloseSummary._();
  ChannelCloseSummary createEmptyInstance() => create();
  static $pb.PbList<ChannelCloseSummary> createRepeated() =>
      $pb.PbList<ChannelCloseSummary>();
  static ChannelCloseSummary getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelCloseSummary _defaultInstance;

  $core.String get channelPoint => $_getS(0, '');
  set channelPoint($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasChannelPoint() => $_has(0);
  void clearChannelPoint() => clearField(1);

  Int64 get chanId => $_getI64(1);
  set chanId(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasChanId() => $_has(1);
  void clearChanId() => clearField(2);

  $core.String get chainHash => $_getS(2, '');
  set chainHash($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasChainHash() => $_has(2);
  void clearChainHash() => clearField(3);

  $core.String get closingTxHash => $_getS(3, '');
  set closingTxHash($core.String v) {
    $_setString(3, v);
  }

  $core.bool hasClosingTxHash() => $_has(3);
  void clearClosingTxHash() => clearField(4);

  $core.String get remotePubkey => $_getS(4, '');
  set remotePubkey($core.String v) {
    $_setString(4, v);
  }

  $core.bool hasRemotePubkey() => $_has(4);
  void clearRemotePubkey() => clearField(5);

  Int64 get capacity => $_getI64(5);
  set capacity(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasCapacity() => $_has(5);
  void clearCapacity() => clearField(6);

  $core.int get closeHeight => $_get(6, 0);
  set closeHeight($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  $core.bool hasCloseHeight() => $_has(6);
  void clearCloseHeight() => clearField(7);

  Int64 get settledBalance => $_getI64(7);
  set settledBalance(Int64 v) {
    $_setInt64(7, v);
  }

  $core.bool hasSettledBalance() => $_has(7);
  void clearSettledBalance() => clearField(8);

  Int64 get timeLockedBalance => $_getI64(8);
  set timeLockedBalance(Int64 v) {
    $_setInt64(8, v);
  }

  $core.bool hasTimeLockedBalance() => $_has(8);
  void clearTimeLockedBalance() => clearField(9);

  ChannelCloseSummary_ClosureType get closeType => $_getN(9);
  set closeType(ChannelCloseSummary_ClosureType v) {
    setField(10, v);
  }

  $core.bool hasCloseType() => $_has(9);
  void clearCloseType() => clearField(10);
}

class ClosedChannelsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClosedChannelsRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOB(1, 'cooperative')
    ..aOB(2, 'localForce')
    ..aOB(3, 'remoteForce')
    ..aOB(4, 'breach')
    ..aOB(5, 'fundingCanceled')
    ..aOB(6, 'abandoned')
    ..hasRequiredFields = false;

  ClosedChannelsRequest._() : super();
  factory ClosedChannelsRequest() => create();
  factory ClosedChannelsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClosedChannelsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ClosedChannelsRequest clone() =>
      ClosedChannelsRequest()..mergeFromMessage(this);
  ClosedChannelsRequest copyWith(
          void Function(ClosedChannelsRequest) updates) =>
      super.copyWith((message) => updates(message as ClosedChannelsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClosedChannelsRequest create() => ClosedChannelsRequest._();
  ClosedChannelsRequest createEmptyInstance() => create();
  static $pb.PbList<ClosedChannelsRequest> createRepeated() =>
      $pb.PbList<ClosedChannelsRequest>();
  static ClosedChannelsRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ClosedChannelsRequest _defaultInstance;

  $core.bool get cooperative => $_get(0, false);
  set cooperative($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasCooperative() => $_has(0);
  void clearCooperative() => clearField(1);

  $core.bool get localForce => $_get(1, false);
  set localForce($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasLocalForce() => $_has(1);
  void clearLocalForce() => clearField(2);

  $core.bool get remoteForce => $_get(2, false);
  set remoteForce($core.bool v) {
    $_setBool(2, v);
  }

  $core.bool hasRemoteForce() => $_has(2);
  void clearRemoteForce() => clearField(3);

  $core.bool get breach => $_get(3, false);
  set breach($core.bool v) {
    $_setBool(3, v);
  }

  $core.bool hasBreach() => $_has(3);
  void clearBreach() => clearField(4);

  $core.bool get fundingCanceled => $_get(4, false);
  set fundingCanceled($core.bool v) {
    $_setBool(4, v);
  }

  $core.bool hasFundingCanceled() => $_has(4);
  void clearFundingCanceled() => clearField(5);

  $core.bool get abandoned => $_get(5, false);
  set abandoned($core.bool v) {
    $_setBool(5, v);
  }

  $core.bool hasAbandoned() => $_has(5);
  void clearAbandoned() => clearField(6);
}

class ClosedChannelsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClosedChannelsResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<ChannelCloseSummary>(1, 'channels', $pb.PbFieldType.PM,
        subBuilder: ChannelCloseSummary.create)
    ..hasRequiredFields = false;

  ClosedChannelsResponse._() : super();
  factory ClosedChannelsResponse() => create();
  factory ClosedChannelsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClosedChannelsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ClosedChannelsResponse clone() =>
      ClosedChannelsResponse()..mergeFromMessage(this);
  ClosedChannelsResponse copyWith(
          void Function(ClosedChannelsResponse) updates) =>
      super.copyWith((message) => updates(message as ClosedChannelsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClosedChannelsResponse create() => ClosedChannelsResponse._();
  ClosedChannelsResponse createEmptyInstance() => create();
  static $pb.PbList<ClosedChannelsResponse> createRepeated() =>
      $pb.PbList<ClosedChannelsResponse>();
  static ClosedChannelsResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ClosedChannelsResponse _defaultInstance;

  $core.List<ChannelCloseSummary> get channels => $_getList(0);
}

class Peer extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Peer',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'pub_key')
    ..aOS(3, 'address')
    ..a<Int64>(4, 'bytes_sent', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(5, 'bytes_recv', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..aInt64(6, 'sat_sent')
    ..aInt64(7, 'sat_recv')
    ..aOB(8, 'inbound')
    ..aInt64(9, 'ping_time')
    ..e<Peer_SyncType>(10, 'sync_type', $pb.PbFieldType.OE,
        defaultOrMaker: Peer_SyncType.UNKNOWN_SYNC,
        valueOf: Peer_SyncType.valueOf,
        enumValues: Peer_SyncType.values)
    ..m<$core.int, Feature>(11, 'features',
        entryClassName: 'Peer.FeaturesEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Feature.create,
        packageName: const $pb.PackageName('lnrpc'))
    ..hasRequiredFields = false;

  Peer._() : super();
  factory Peer() => create();
  factory Peer.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Peer.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Peer clone() => Peer()..mergeFromMessage(this);
  Peer copyWith(void Function(Peer) updates) =>
      super.copyWith((message) => updates(message as Peer));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Peer create() => Peer._();
  Peer createEmptyInstance() => create();
  static $pb.PbList<Peer> createRepeated() => $pb.PbList<Peer>();
  static Peer getDefault() => _defaultInstance ??= create()..freeze();
  static Peer _defaultInstance;

  $core.String get pubKey => $_getS(0, '');
  set pubKey($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasPubKey() => $_has(0);
  void clearPubKey() => clearField(1);

  $core.String get address => $_getS(1, '');
  set address($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasAddress() => $_has(1);
  void clearAddress() => clearField(3);

  Int64 get bytesSent => $_getI64(2);
  set bytesSent(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasBytesSent() => $_has(2);
  void clearBytesSent() => clearField(4);

  Int64 get bytesRecv => $_getI64(3);
  set bytesRecv(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasBytesRecv() => $_has(3);
  void clearBytesRecv() => clearField(5);

  Int64 get satSent => $_getI64(4);
  set satSent(Int64 v) {
    $_setInt64(4, v);
  }

  $core.bool hasSatSent() => $_has(4);
  void clearSatSent() => clearField(6);

  Int64 get satRecv => $_getI64(5);
  set satRecv(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasSatRecv() => $_has(5);
  void clearSatRecv() => clearField(7);

  $core.bool get inbound => $_get(6, false);
  set inbound($core.bool v) {
    $_setBool(6, v);
  }

  $core.bool hasInbound() => $_has(6);
  void clearInbound() => clearField(8);

  Int64 get pingTime => $_getI64(7);
  set pingTime(Int64 v) {
    $_setInt64(7, v);
  }

  $core.bool hasPingTime() => $_has(7);
  void clearPingTime() => clearField(9);

  Peer_SyncType get syncType => $_getN(8);
  set syncType(Peer_SyncType v) {
    setField(10, v);
  }

  $core.bool hasSyncType() => $_has(8);
  void clearSyncType() => clearField(10);

  $core.Map<$core.int, Feature> get features => $_getMap(9);
}

class ListPeersRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListPeersRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  ListPeersRequest._() : super();
  factory ListPeersRequest() => create();
  factory ListPeersRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPeersRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListPeersRequest clone() => ListPeersRequest()..mergeFromMessage(this);
  ListPeersRequest copyWith(void Function(ListPeersRequest) updates) =>
      super.copyWith((message) => updates(message as ListPeersRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPeersRequest create() => ListPeersRequest._();
  ListPeersRequest createEmptyInstance() => create();
  static $pb.PbList<ListPeersRequest> createRepeated() =>
      $pb.PbList<ListPeersRequest>();
  static ListPeersRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ListPeersRequest _defaultInstance;
}

class ListPeersResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListPeersResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<Peer>(1, 'peers', $pb.PbFieldType.PM, subBuilder: Peer.create)
    ..hasRequiredFields = false;

  ListPeersResponse._() : super();
  factory ListPeersResponse() => create();
  factory ListPeersResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPeersResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListPeersResponse clone() => ListPeersResponse()..mergeFromMessage(this);
  ListPeersResponse copyWith(void Function(ListPeersResponse) updates) =>
      super.copyWith((message) => updates(message as ListPeersResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPeersResponse create() => ListPeersResponse._();
  ListPeersResponse createEmptyInstance() => create();
  static $pb.PbList<ListPeersResponse> createRepeated() =>
      $pb.PbList<ListPeersResponse>();
  static ListPeersResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ListPeersResponse _defaultInstance;

  $core.List<Peer> get peers => $_getList(0);
}

class PeerEventSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PeerEventSubscription',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  PeerEventSubscription._() : super();
  factory PeerEventSubscription() => create();
  factory PeerEventSubscription.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PeerEventSubscription.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PeerEventSubscription clone() =>
      PeerEventSubscription()..mergeFromMessage(this);
  PeerEventSubscription copyWith(
          void Function(PeerEventSubscription) updates) =>
      super.copyWith((message) => updates(message as PeerEventSubscription));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PeerEventSubscription create() => PeerEventSubscription._();
  PeerEventSubscription createEmptyInstance() => create();
  static $pb.PbList<PeerEventSubscription> createRepeated() =>
      $pb.PbList<PeerEventSubscription>();
  static PeerEventSubscription getDefault() =>
      _defaultInstance ??= create()..freeze();
  static PeerEventSubscription _defaultInstance;
}

class PeerEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PeerEvent',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'pub_key')
    ..e<PeerEvent_EventType>(2, 'type', $pb.PbFieldType.OE,
        defaultOrMaker: PeerEvent_EventType.PEER_ONLINE,
        valueOf: PeerEvent_EventType.valueOf,
        enumValues: PeerEvent_EventType.values)
    ..hasRequiredFields = false;

  PeerEvent._() : super();
  factory PeerEvent() => create();
  factory PeerEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PeerEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PeerEvent clone() => PeerEvent()..mergeFromMessage(this);
  PeerEvent copyWith(void Function(PeerEvent) updates) =>
      super.copyWith((message) => updates(message as PeerEvent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PeerEvent create() => PeerEvent._();
  PeerEvent createEmptyInstance() => create();
  static $pb.PbList<PeerEvent> createRepeated() => $pb.PbList<PeerEvent>();
  static PeerEvent getDefault() => _defaultInstance ??= create()..freeze();
  static PeerEvent _defaultInstance;

  $core.String get pubKey => $_getS(0, '');
  set pubKey($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasPubKey() => $_has(0);
  void clearPubKey() => clearField(1);

  PeerEvent_EventType get type => $_getN(1);
  set type(PeerEvent_EventType v) {
    setField(2, v);
  }

  $core.bool hasType() => $_has(1);
  void clearType() => clearField(2);
}

class GetInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetInfoRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  GetInfoRequest._() : super();
  factory GetInfoRequest() => create();
  factory GetInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetInfoRequest clone() => GetInfoRequest()..mergeFromMessage(this);
  GetInfoRequest copyWith(void Function(GetInfoRequest) updates) =>
      super.copyWith((message) => updates(message as GetInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInfoRequest create() => GetInfoRequest._();
  GetInfoRequest createEmptyInstance() => create();
  static $pb.PbList<GetInfoRequest> createRepeated() =>
      $pb.PbList<GetInfoRequest>();
  static GetInfoRequest getDefault() => _defaultInstance ??= create()..freeze();
  static GetInfoRequest _defaultInstance;
}

class GetInfoResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GetInfoResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'identity_pubkey')
    ..aOS(2, 'alias')
    ..a<$core.int>(3, 'num_pending_channels', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'num_active_channels', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'num_peers', $pb.PbFieldType.OU3)
    ..a<$core.int>(6, 'block_height', $pb.PbFieldType.OU3)
    ..aOS(8, 'block_hash')
    ..aOB(9, 'synced_to_chain')
    ..aOB(10, 'testnet')
    ..pPS(12, 'uris')
    ..aInt64(13, 'best_header_timestamp')
    ..aOS(14, 'version')
    ..a<$core.int>(15, 'num_inactive_channels', $pb.PbFieldType.OU3)
    ..pc<Chain>(16, 'chains', $pb.PbFieldType.PM, subBuilder: Chain.create)
    ..aOS(17, 'color')
    ..aOB(18, 'synced_to_graph')
    ..m<$core.int, Feature>(19, 'features',
        entryClassName: 'GetInfoResponse.FeaturesEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Feature.create,
        packageName: const $pb.PackageName('lnrpc'))
    ..hasRequiredFields = false;

  GetInfoResponse._() : super();
  factory GetInfoResponse() => create();
  factory GetInfoResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GetInfoResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GetInfoResponse clone() => GetInfoResponse()..mergeFromMessage(this);
  GetInfoResponse copyWith(void Function(GetInfoResponse) updates) =>
      super.copyWith((message) => updates(message as GetInfoResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GetInfoResponse create() => GetInfoResponse._();
  GetInfoResponse createEmptyInstance() => create();
  static $pb.PbList<GetInfoResponse> createRepeated() =>
      $pb.PbList<GetInfoResponse>();
  static GetInfoResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static GetInfoResponse _defaultInstance;

  $core.String get identityPubkey => $_getS(0, '');
  set identityPubkey($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasIdentityPubkey() => $_has(0);
  void clearIdentityPubkey() => clearField(1);

  $core.String get alias => $_getS(1, '');
  set alias($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasAlias() => $_has(1);
  void clearAlias() => clearField(2);

  $core.int get numPendingChannels => $_get(2, 0);
  set numPendingChannels($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  $core.bool hasNumPendingChannels() => $_has(2);
  void clearNumPendingChannels() => clearField(3);

  $core.int get numActiveChannels => $_get(3, 0);
  set numActiveChannels($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  $core.bool hasNumActiveChannels() => $_has(3);
  void clearNumActiveChannels() => clearField(4);

  $core.int get numPeers => $_get(4, 0);
  set numPeers($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  $core.bool hasNumPeers() => $_has(4);
  void clearNumPeers() => clearField(5);

  $core.int get blockHeight => $_get(5, 0);
  set blockHeight($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  $core.bool hasBlockHeight() => $_has(5);
  void clearBlockHeight() => clearField(6);

  $core.String get blockHash => $_getS(6, '');
  set blockHash($core.String v) {
    $_setString(6, v);
  }

  $core.bool hasBlockHash() => $_has(6);
  void clearBlockHash() => clearField(8);

  $core.bool get syncedToChain => $_get(7, false);
  set syncedToChain($core.bool v) {
    $_setBool(7, v);
  }

  $core.bool hasSyncedToChain() => $_has(7);
  void clearSyncedToChain() => clearField(9);

  @$core.Deprecated('This field is deprecated.')
  $core.bool get testnet => $_get(8, false);
  @$core.Deprecated('This field is deprecated.')
  set testnet($core.bool v) {
    $_setBool(8, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasTestnet() => $_has(8);
  @$core.Deprecated('This field is deprecated.')
  void clearTestnet() => clearField(10);

  $core.List<$core.String> get uris => $_getList(9);

  Int64 get bestHeaderTimestamp => $_getI64(10);
  set bestHeaderTimestamp(Int64 v) {
    $_setInt64(10, v);
  }

  $core.bool hasBestHeaderTimestamp() => $_has(10);
  void clearBestHeaderTimestamp() => clearField(13);

  $core.String get version => $_getS(11, '');
  set version($core.String v) {
    $_setString(11, v);
  }

  $core.bool hasVersion() => $_has(11);
  void clearVersion() => clearField(14);

  $core.int get numInactiveChannels => $_get(12, 0);
  set numInactiveChannels($core.int v) {
    $_setUnsignedInt32(12, v);
  }

  $core.bool hasNumInactiveChannels() => $_has(12);
  void clearNumInactiveChannels() => clearField(15);

  $core.List<Chain> get chains => $_getList(13);

  $core.String get color => $_getS(14, '');
  set color($core.String v) {
    $_setString(14, v);
  }

  $core.bool hasColor() => $_has(14);
  void clearColor() => clearField(17);

  $core.bool get syncedToGraph => $_get(15, false);
  set syncedToGraph($core.bool v) {
    $_setBool(15, v);
  }

  $core.bool hasSyncedToGraph() => $_has(15);
  void clearSyncedToGraph() => clearField(18);

  $core.Map<$core.int, Feature> get features => $_getMap(16);
}

class Chain extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Chain',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'chain')
    ..aOS(2, 'network')
    ..hasRequiredFields = false;

  Chain._() : super();
  factory Chain() => create();
  factory Chain.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Chain.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Chain clone() => Chain()..mergeFromMessage(this);
  Chain copyWith(void Function(Chain) updates) =>
      super.copyWith((message) => updates(message as Chain));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Chain create() => Chain._();
  Chain createEmptyInstance() => create();
  static $pb.PbList<Chain> createRepeated() => $pb.PbList<Chain>();
  static Chain getDefault() => _defaultInstance ??= create()..freeze();
  static Chain _defaultInstance;

  $core.String get chain => $_getS(0, '');
  set chain($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasChain() => $_has(0);
  void clearChain() => clearField(1);

  $core.String get network => $_getS(1, '');
  set network($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasNetwork() => $_has(1);
  void clearNetwork() => clearField(2);
}

class ConfirmationUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ConfirmationUpdate',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'blockSha', $pb.PbFieldType.OY)
    ..a<$core.int>(2, 'blockHeight', $pb.PbFieldType.O3)
    ..a<$core.int>(3, 'numConfsLeft', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  ConfirmationUpdate._() : super();
  factory ConfirmationUpdate() => create();
  factory ConfirmationUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ConfirmationUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ConfirmationUpdate clone() => ConfirmationUpdate()..mergeFromMessage(this);
  ConfirmationUpdate copyWith(void Function(ConfirmationUpdate) updates) =>
      super.copyWith((message) => updates(message as ConfirmationUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ConfirmationUpdate create() => ConfirmationUpdate._();
  ConfirmationUpdate createEmptyInstance() => create();
  static $pb.PbList<ConfirmationUpdate> createRepeated() =>
      $pb.PbList<ConfirmationUpdate>();
  static ConfirmationUpdate getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ConfirmationUpdate _defaultInstance;

  $core.List<$core.int> get blockSha => $_getN(0);
  set blockSha($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasBlockSha() => $_has(0);
  void clearBlockSha() => clearField(1);

  $core.int get blockHeight => $_get(1, 0);
  set blockHeight($core.int v) {
    $_setSignedInt32(1, v);
  }

  $core.bool hasBlockHeight() => $_has(1);
  void clearBlockHeight() => clearField(2);

  $core.int get numConfsLeft => $_get(2, 0);
  set numConfsLeft($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  $core.bool hasNumConfsLeft() => $_has(2);
  void clearNumConfsLeft() => clearField(3);
}

class ChannelOpenUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelOpenUpdate',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<ChannelPoint>(1, 'channel_point', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelPoint.getDefault,
        subBuilder: ChannelPoint.create)
    ..hasRequiredFields = false;

  ChannelOpenUpdate._() : super();
  factory ChannelOpenUpdate() => create();
  factory ChannelOpenUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelOpenUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelOpenUpdate clone() => ChannelOpenUpdate()..mergeFromMessage(this);
  ChannelOpenUpdate copyWith(void Function(ChannelOpenUpdate) updates) =>
      super.copyWith((message) => updates(message as ChannelOpenUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelOpenUpdate create() => ChannelOpenUpdate._();
  ChannelOpenUpdate createEmptyInstance() => create();
  static $pb.PbList<ChannelOpenUpdate> createRepeated() =>
      $pb.PbList<ChannelOpenUpdate>();
  static ChannelOpenUpdate getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelOpenUpdate _defaultInstance;

  ChannelPoint get channelPoint => $_getN(0);
  set channelPoint(ChannelPoint v) {
    setField(1, v);
  }

  $core.bool hasChannelPoint() => $_has(0);
  void clearChannelPoint() => clearField(1);
}

class ChannelCloseUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelCloseUpdate',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'closing_txid', $pb.PbFieldType.OY)
    ..aOB(2, 'success')
    ..hasRequiredFields = false;

  ChannelCloseUpdate._() : super();
  factory ChannelCloseUpdate() => create();
  factory ChannelCloseUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelCloseUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelCloseUpdate clone() => ChannelCloseUpdate()..mergeFromMessage(this);
  ChannelCloseUpdate copyWith(void Function(ChannelCloseUpdate) updates) =>
      super.copyWith((message) => updates(message as ChannelCloseUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelCloseUpdate create() => ChannelCloseUpdate._();
  ChannelCloseUpdate createEmptyInstance() => create();
  static $pb.PbList<ChannelCloseUpdate> createRepeated() =>
      $pb.PbList<ChannelCloseUpdate>();
  static ChannelCloseUpdate getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelCloseUpdate _defaultInstance;

  $core.List<$core.int> get closingTxid => $_getN(0);
  set closingTxid($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasClosingTxid() => $_has(0);
  void clearClosingTxid() => clearField(1);

  $core.bool get success => $_get(1, false);
  set success($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasSuccess() => $_has(1);
  void clearSuccess() => clearField(2);
}

class CloseChannelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CloseChannelRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<ChannelPoint>(1, 'channelPoint', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelPoint.getDefault,
        subBuilder: ChannelPoint.create)
    ..aOB(2, 'force')
    ..a<$core.int>(3, 'targetConf', $pb.PbFieldType.O3)
    ..aInt64(4, 'satPerByte')
    ..aOS(5, 'delivery_address')
    ..hasRequiredFields = false;

  CloseChannelRequest._() : super();
  factory CloseChannelRequest() => create();
  factory CloseChannelRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CloseChannelRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CloseChannelRequest clone() => CloseChannelRequest()..mergeFromMessage(this);
  CloseChannelRequest copyWith(void Function(CloseChannelRequest) updates) =>
      super.copyWith((message) => updates(message as CloseChannelRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CloseChannelRequest create() => CloseChannelRequest._();
  CloseChannelRequest createEmptyInstance() => create();
  static $pb.PbList<CloseChannelRequest> createRepeated() =>
      $pb.PbList<CloseChannelRequest>();
  static CloseChannelRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CloseChannelRequest _defaultInstance;

  ChannelPoint get channelPoint => $_getN(0);
  set channelPoint(ChannelPoint v) {
    setField(1, v);
  }

  $core.bool hasChannelPoint() => $_has(0);
  void clearChannelPoint() => clearField(1);

  $core.bool get force => $_get(1, false);
  set force($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasForce() => $_has(1);
  void clearForce() => clearField(2);

  $core.int get targetConf => $_get(2, 0);
  set targetConf($core.int v) {
    $_setSignedInt32(2, v);
  }

  $core.bool hasTargetConf() => $_has(2);
  void clearTargetConf() => clearField(3);

  Int64 get satPerByte => $_getI64(3);
  set satPerByte(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasSatPerByte() => $_has(3);
  void clearSatPerByte() => clearField(4);

  $core.String get deliveryAddress => $_getS(4, '');
  set deliveryAddress($core.String v) {
    $_setString(4, v);
  }

  $core.bool hasDeliveryAddress() => $_has(4);
  void clearDeliveryAddress() => clearField(5);
}

enum CloseStatusUpdate_Update { closePending, chanClose, notSet }

class CloseStatusUpdate extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, CloseStatusUpdate_Update>
      _CloseStatusUpdate_UpdateByTag = {
    1: CloseStatusUpdate_Update.closePending,
    3: CloseStatusUpdate_Update.chanClose,
    0: CloseStatusUpdate_Update.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('CloseStatusUpdate',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..a<PendingUpdate>(1, 'close_pending', $pb.PbFieldType.OM,
        defaultOrMaker: PendingUpdate.getDefault,
        subBuilder: PendingUpdate.create)
    ..a<ChannelCloseUpdate>(3, 'chan_close', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelCloseUpdate.getDefault,
        subBuilder: ChannelCloseUpdate.create)
    ..hasRequiredFields = false;

  CloseStatusUpdate._() : super();
  factory CloseStatusUpdate() => create();
  factory CloseStatusUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory CloseStatusUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  CloseStatusUpdate clone() => CloseStatusUpdate()..mergeFromMessage(this);
  CloseStatusUpdate copyWith(void Function(CloseStatusUpdate) updates) =>
      super.copyWith((message) => updates(message as CloseStatusUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static CloseStatusUpdate create() => CloseStatusUpdate._();
  CloseStatusUpdate createEmptyInstance() => create();
  static $pb.PbList<CloseStatusUpdate> createRepeated() =>
      $pb.PbList<CloseStatusUpdate>();
  static CloseStatusUpdate getDefault() =>
      _defaultInstance ??= create()..freeze();
  static CloseStatusUpdate _defaultInstance;

  CloseStatusUpdate_Update whichUpdate() =>
      _CloseStatusUpdate_UpdateByTag[$_whichOneof(0)];
  void clearUpdate() => clearField($_whichOneof(0));

  PendingUpdate get closePending => $_getN(0);
  set closePending(PendingUpdate v) {
    setField(1, v);
  }

  $core.bool hasClosePending() => $_has(0);
  void clearClosePending() => clearField(1);

  ChannelCloseUpdate get chanClose => $_getN(1);
  set chanClose(ChannelCloseUpdate v) {
    setField(3, v);
  }

  $core.bool hasChanClose() => $_has(1);
  void clearChanClose() => clearField(3);
}

class PendingUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PendingUpdate',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'txid', $pb.PbFieldType.OY)
    ..a<$core.int>(2, 'output_index', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  PendingUpdate._() : super();
  factory PendingUpdate() => create();
  factory PendingUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PendingUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PendingUpdate clone() => PendingUpdate()..mergeFromMessage(this);
  PendingUpdate copyWith(void Function(PendingUpdate) updates) =>
      super.copyWith((message) => updates(message as PendingUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingUpdate create() => PendingUpdate._();
  PendingUpdate createEmptyInstance() => create();
  static $pb.PbList<PendingUpdate> createRepeated() =>
      $pb.PbList<PendingUpdate>();
  static PendingUpdate getDefault() => _defaultInstance ??= create()..freeze();
  static PendingUpdate _defaultInstance;

  $core.List<$core.int> get txid => $_getN(0);
  set txid($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasTxid() => $_has(0);
  void clearTxid() => clearField(1);

  $core.int get outputIndex => $_get(1, 0);
  set outputIndex($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  $core.bool hasOutputIndex() => $_has(1);
  void clearOutputIndex() => clearField(2);
}

class OpenChannelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OpenChannelRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(2, 'node_pubkey', $pb.PbFieldType.OY)
    ..aOS(3, 'node_pubkey_string')
    ..aInt64(4, 'local_funding_amount')
    ..aInt64(5, 'push_sat')
    ..a<$core.int>(6, 'targetConf', $pb.PbFieldType.O3)
    ..aInt64(7, 'satPerByte')
    ..aOB(8, 'private')
    ..aInt64(9, 'min_htlc_msat')
    ..a<$core.int>(10, 'remote_csv_delay', $pb.PbFieldType.OU3)
    ..a<$core.int>(11, 'min_confs', $pb.PbFieldType.O3)
    ..aOB(12, 'spend_unconfirmed')
    ..aOS(13, 'close_address')
    ..a<FundingShim>(14, 'funding_shim', $pb.PbFieldType.OM,
        defaultOrMaker: FundingShim.getDefault, subBuilder: FundingShim.create)
    ..hasRequiredFields = false;

  OpenChannelRequest._() : super();
  factory OpenChannelRequest() => create();
  factory OpenChannelRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpenChannelRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  OpenChannelRequest clone() => OpenChannelRequest()..mergeFromMessage(this);
  OpenChannelRequest copyWith(void Function(OpenChannelRequest) updates) =>
      super.copyWith((message) => updates(message as OpenChannelRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenChannelRequest create() => OpenChannelRequest._();
  OpenChannelRequest createEmptyInstance() => create();
  static $pb.PbList<OpenChannelRequest> createRepeated() =>
      $pb.PbList<OpenChannelRequest>();
  static OpenChannelRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static OpenChannelRequest _defaultInstance;

  $core.List<$core.int> get nodePubkey => $_getN(0);
  set nodePubkey($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasNodePubkey() => $_has(0);
  void clearNodePubkey() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  $core.String get nodePubkeyString => $_getS(1, '');
  @$core.Deprecated('This field is deprecated.')
  set nodePubkeyString($core.String v) {
    $_setString(1, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasNodePubkeyString() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  void clearNodePubkeyString() => clearField(3);

  Int64 get localFundingAmount => $_getI64(2);
  set localFundingAmount(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasLocalFundingAmount() => $_has(2);
  void clearLocalFundingAmount() => clearField(4);

  Int64 get pushSat => $_getI64(3);
  set pushSat(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasPushSat() => $_has(3);
  void clearPushSat() => clearField(5);

  $core.int get targetConf => $_get(4, 0);
  set targetConf($core.int v) {
    $_setSignedInt32(4, v);
  }

  $core.bool hasTargetConf() => $_has(4);
  void clearTargetConf() => clearField(6);

  Int64 get satPerByte => $_getI64(5);
  set satPerByte(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasSatPerByte() => $_has(5);
  void clearSatPerByte() => clearField(7);

  $core.bool get private => $_get(6, false);
  set private($core.bool v) {
    $_setBool(6, v);
  }

  $core.bool hasPrivate() => $_has(6);
  void clearPrivate() => clearField(8);

  Int64 get minHtlcMsat => $_getI64(7);
  set minHtlcMsat(Int64 v) {
    $_setInt64(7, v);
  }

  $core.bool hasMinHtlcMsat() => $_has(7);
  void clearMinHtlcMsat() => clearField(9);

  $core.int get remoteCsvDelay => $_get(8, 0);
  set remoteCsvDelay($core.int v) {
    $_setUnsignedInt32(8, v);
  }

  $core.bool hasRemoteCsvDelay() => $_has(8);
  void clearRemoteCsvDelay() => clearField(10);

  $core.int get minConfs => $_get(9, 0);
  set minConfs($core.int v) {
    $_setSignedInt32(9, v);
  }

  $core.bool hasMinConfs() => $_has(9);
  void clearMinConfs() => clearField(11);

  $core.bool get spendUnconfirmed => $_get(10, false);
  set spendUnconfirmed($core.bool v) {
    $_setBool(10, v);
  }

  $core.bool hasSpendUnconfirmed() => $_has(10);
  void clearSpendUnconfirmed() => clearField(12);

  $core.String get closeAddress => $_getS(11, '');
  set closeAddress($core.String v) {
    $_setString(11, v);
  }

  $core.bool hasCloseAddress() => $_has(11);
  void clearCloseAddress() => clearField(13);

  FundingShim get fundingShim => $_getN(12);
  set fundingShim(FundingShim v) {
    setField(14, v);
  }

  $core.bool hasFundingShim() => $_has(12);
  void clearFundingShim() => clearField(14);
}

enum OpenStatusUpdate_Update { chanPending, chanOpen, notSet }

class OpenStatusUpdate extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, OpenStatusUpdate_Update>
      _OpenStatusUpdate_UpdateByTag = {
    1: OpenStatusUpdate_Update.chanPending,
    3: OpenStatusUpdate_Update.chanOpen,
    0: OpenStatusUpdate_Update.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('OpenStatusUpdate',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 3])
    ..a<PendingUpdate>(1, 'chan_pending', $pb.PbFieldType.OM,
        defaultOrMaker: PendingUpdate.getDefault,
        subBuilder: PendingUpdate.create)
    ..a<ChannelOpenUpdate>(3, 'chan_open', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelOpenUpdate.getDefault,
        subBuilder: ChannelOpenUpdate.create)
    ..a<$core.List<$core.int>>(4, 'pending_chan_id', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  OpenStatusUpdate._() : super();
  factory OpenStatusUpdate() => create();
  factory OpenStatusUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory OpenStatusUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  OpenStatusUpdate clone() => OpenStatusUpdate()..mergeFromMessage(this);
  OpenStatusUpdate copyWith(void Function(OpenStatusUpdate) updates) =>
      super.copyWith((message) => updates(message as OpenStatusUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static OpenStatusUpdate create() => OpenStatusUpdate._();
  OpenStatusUpdate createEmptyInstance() => create();
  static $pb.PbList<OpenStatusUpdate> createRepeated() =>
      $pb.PbList<OpenStatusUpdate>();
  static OpenStatusUpdate getDefault() =>
      _defaultInstance ??= create()..freeze();
  static OpenStatusUpdate _defaultInstance;

  OpenStatusUpdate_Update whichUpdate() =>
      _OpenStatusUpdate_UpdateByTag[$_whichOneof(0)];
  void clearUpdate() => clearField($_whichOneof(0));

  PendingUpdate get chanPending => $_getN(0);
  set chanPending(PendingUpdate v) {
    setField(1, v);
  }

  $core.bool hasChanPending() => $_has(0);
  void clearChanPending() => clearField(1);

  ChannelOpenUpdate get chanOpen => $_getN(1);
  set chanOpen(ChannelOpenUpdate v) {
    setField(3, v);
  }

  $core.bool hasChanOpen() => $_has(1);
  void clearChanOpen() => clearField(3);

  $core.List<$core.int> get pendingChanId => $_getN(2);
  set pendingChanId($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  $core.bool hasPendingChanId() => $_has(2);
  void clearPendingChanId() => clearField(4);
}

class KeyLocator extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('KeyLocator',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
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
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
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

class ChanPointShim extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChanPointShim',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aInt64(1, 'amt')
    ..a<ChannelPoint>(2, 'chanPoint', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelPoint.getDefault,
        subBuilder: ChannelPoint.create)
    ..a<KeyDescriptor>(3, 'localKey', $pb.PbFieldType.OM,
        defaultOrMaker: KeyDescriptor.getDefault,
        subBuilder: KeyDescriptor.create)
    ..a<$core.List<$core.int>>(4, 'remoteKey', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(5, 'pendingChanId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  ChanPointShim._() : super();
  factory ChanPointShim() => create();
  factory ChanPointShim.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChanPointShim.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChanPointShim clone() => ChanPointShim()..mergeFromMessage(this);
  ChanPointShim copyWith(void Function(ChanPointShim) updates) =>
      super.copyWith((message) => updates(message as ChanPointShim));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChanPointShim create() => ChanPointShim._();
  ChanPointShim createEmptyInstance() => create();
  static $pb.PbList<ChanPointShim> createRepeated() =>
      $pb.PbList<ChanPointShim>();
  static ChanPointShim getDefault() => _defaultInstance ??= create()..freeze();
  static ChanPointShim _defaultInstance;

  Int64 get amt => $_getI64(0);
  set amt(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasAmt() => $_has(0);
  void clearAmt() => clearField(1);

  ChannelPoint get chanPoint => $_getN(1);
  set chanPoint(ChannelPoint v) {
    setField(2, v);
  }

  $core.bool hasChanPoint() => $_has(1);
  void clearChanPoint() => clearField(2);

  KeyDescriptor get localKey => $_getN(2);
  set localKey(KeyDescriptor v) {
    setField(3, v);
  }

  $core.bool hasLocalKey() => $_has(2);
  void clearLocalKey() => clearField(3);

  $core.List<$core.int> get remoteKey => $_getN(3);
  set remoteKey($core.List<$core.int> v) {
    $_setBytes(3, v);
  }

  $core.bool hasRemoteKey() => $_has(3);
  void clearRemoteKey() => clearField(4);

  $core.List<$core.int> get pendingChanId => $_getN(4);
  set pendingChanId($core.List<$core.int> v) {
    $_setBytes(4, v);
  }

  $core.bool hasPendingChanId() => $_has(4);
  void clearPendingChanId() => clearField(5);
}

enum FundingShim_Shim { chanPointShim, notSet }

class FundingShim extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FundingShim_Shim> _FundingShim_ShimByTag = {
    1: FundingShim_Shim.chanPointShim,
    0: FundingShim_Shim.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FundingShim',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..oo(0, [1])
    ..a<ChanPointShim>(1, 'chanPointShim', $pb.PbFieldType.OM,
        defaultOrMaker: ChanPointShim.getDefault,
        subBuilder: ChanPointShim.create)
    ..hasRequiredFields = false;

  FundingShim._() : super();
  factory FundingShim() => create();
  factory FundingShim.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FundingShim.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FundingShim clone() => FundingShim()..mergeFromMessage(this);
  FundingShim copyWith(void Function(FundingShim) updates) =>
      super.copyWith((message) => updates(message as FundingShim));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundingShim create() => FundingShim._();
  FundingShim createEmptyInstance() => create();
  static $pb.PbList<FundingShim> createRepeated() => $pb.PbList<FundingShim>();
  static FundingShim getDefault() => _defaultInstance ??= create()..freeze();
  static FundingShim _defaultInstance;

  FundingShim_Shim whichShim() => _FundingShim_ShimByTag[$_whichOneof(0)];
  void clearShim() => clearField($_whichOneof(0));

  ChanPointShim get chanPointShim => $_getN(0);
  set chanPointShim(ChanPointShim v) {
    setField(1, v);
  }

  $core.bool hasChanPointShim() => $_has(0);
  void clearChanPointShim() => clearField(1);
}

class FundingShimCancel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FundingShimCancel',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'pendingChanId', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  FundingShimCancel._() : super();
  factory FundingShimCancel() => create();
  factory FundingShimCancel.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FundingShimCancel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FundingShimCancel clone() => FundingShimCancel()..mergeFromMessage(this);
  FundingShimCancel copyWith(void Function(FundingShimCancel) updates) =>
      super.copyWith((message) => updates(message as FundingShimCancel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundingShimCancel create() => FundingShimCancel._();
  FundingShimCancel createEmptyInstance() => create();
  static $pb.PbList<FundingShimCancel> createRepeated() =>
      $pb.PbList<FundingShimCancel>();
  static FundingShimCancel getDefault() =>
      _defaultInstance ??= create()..freeze();
  static FundingShimCancel _defaultInstance;

  $core.List<$core.int> get pendingChanId => $_getN(0);
  set pendingChanId($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasPendingChanId() => $_has(0);
  void clearPendingChanId() => clearField(1);
}

enum FundingTransitionMsg_Trigger { shimRegister, shimCancel, notSet }

class FundingTransitionMsg extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, FundingTransitionMsg_Trigger>
      _FundingTransitionMsg_TriggerByTag = {
    1: FundingTransitionMsg_Trigger.shimRegister,
    2: FundingTransitionMsg_Trigger.shimCancel,
    0: FundingTransitionMsg_Trigger.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FundingTransitionMsg',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<FundingShim>(1, 'shimRegister', $pb.PbFieldType.OM,
        defaultOrMaker: FundingShim.getDefault, subBuilder: FundingShim.create)
    ..a<FundingShimCancel>(2, 'shimCancel', $pb.PbFieldType.OM,
        defaultOrMaker: FundingShimCancel.getDefault,
        subBuilder: FundingShimCancel.create)
    ..hasRequiredFields = false;

  FundingTransitionMsg._() : super();
  factory FundingTransitionMsg() => create();
  factory FundingTransitionMsg.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FundingTransitionMsg.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FundingTransitionMsg clone() =>
      FundingTransitionMsg()..mergeFromMessage(this);
  FundingTransitionMsg copyWith(void Function(FundingTransitionMsg) updates) =>
      super.copyWith((message) => updates(message as FundingTransitionMsg));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundingTransitionMsg create() => FundingTransitionMsg._();
  FundingTransitionMsg createEmptyInstance() => create();
  static $pb.PbList<FundingTransitionMsg> createRepeated() =>
      $pb.PbList<FundingTransitionMsg>();
  static FundingTransitionMsg getDefault() =>
      _defaultInstance ??= create()..freeze();
  static FundingTransitionMsg _defaultInstance;

  FundingTransitionMsg_Trigger whichTrigger() =>
      _FundingTransitionMsg_TriggerByTag[$_whichOneof(0)];
  void clearTrigger() => clearField($_whichOneof(0));

  FundingShim get shimRegister => $_getN(0);
  set shimRegister(FundingShim v) {
    setField(1, v);
  }

  $core.bool hasShimRegister() => $_has(0);
  void clearShimRegister() => clearField(1);

  FundingShimCancel get shimCancel => $_getN(1);
  set shimCancel(FundingShimCancel v) {
    setField(2, v);
  }

  $core.bool hasShimCancel() => $_has(1);
  void clearShimCancel() => clearField(2);
}

class FundingStateStepResp extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FundingStateStepResp',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  FundingStateStepResp._() : super();
  factory FundingStateStepResp() => create();
  factory FundingStateStepResp.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FundingStateStepResp.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FundingStateStepResp clone() =>
      FundingStateStepResp()..mergeFromMessage(this);
  FundingStateStepResp copyWith(void Function(FundingStateStepResp) updates) =>
      super.copyWith((message) => updates(message as FundingStateStepResp));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FundingStateStepResp create() => FundingStateStepResp._();
  FundingStateStepResp createEmptyInstance() => create();
  static $pb.PbList<FundingStateStepResp> createRepeated() =>
      $pb.PbList<FundingStateStepResp>();
  static FundingStateStepResp getDefault() =>
      _defaultInstance ??= create()..freeze();
  static FundingStateStepResp _defaultInstance;
}

class PendingHTLC extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PendingHTLC',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOB(1, 'incoming')
    ..aInt64(2, 'amount')
    ..aOS(3, 'outpoint')
    ..a<$core.int>(4, 'maturity_height', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'blocks_til_maturity', $pb.PbFieldType.O3)
    ..a<$core.int>(6, 'stage', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  PendingHTLC._() : super();
  factory PendingHTLC() => create();
  factory PendingHTLC.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PendingHTLC.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PendingHTLC clone() => PendingHTLC()..mergeFromMessage(this);
  PendingHTLC copyWith(void Function(PendingHTLC) updates) =>
      super.copyWith((message) => updates(message as PendingHTLC));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingHTLC create() => PendingHTLC._();
  PendingHTLC createEmptyInstance() => create();
  static $pb.PbList<PendingHTLC> createRepeated() => $pb.PbList<PendingHTLC>();
  static PendingHTLC getDefault() => _defaultInstance ??= create()..freeze();
  static PendingHTLC _defaultInstance;

  $core.bool get incoming => $_get(0, false);
  set incoming($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasIncoming() => $_has(0);
  void clearIncoming() => clearField(1);

  Int64 get amount => $_getI64(1);
  set amount(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasAmount() => $_has(1);
  void clearAmount() => clearField(2);

  $core.String get outpoint => $_getS(2, '');
  set outpoint($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasOutpoint() => $_has(2);
  void clearOutpoint() => clearField(3);

  $core.int get maturityHeight => $_get(3, 0);
  set maturityHeight($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  $core.bool hasMaturityHeight() => $_has(3);
  void clearMaturityHeight() => clearField(4);

  $core.int get blocksTilMaturity => $_get(4, 0);
  set blocksTilMaturity($core.int v) {
    $_setSignedInt32(4, v);
  }

  $core.bool hasBlocksTilMaturity() => $_has(4);
  void clearBlocksTilMaturity() => clearField(5);

  $core.int get stage => $_get(5, 0);
  set stage($core.int v) {
    $_setUnsignedInt32(5, v);
  }

  $core.bool hasStage() => $_has(5);
  void clearStage() => clearField(6);
}

class PendingChannelsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PendingChannelsRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  PendingChannelsRequest._() : super();
  factory PendingChannelsRequest() => create();
  factory PendingChannelsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PendingChannelsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PendingChannelsRequest clone() =>
      PendingChannelsRequest()..mergeFromMessage(this);
  PendingChannelsRequest copyWith(
          void Function(PendingChannelsRequest) updates) =>
      super.copyWith((message) => updates(message as PendingChannelsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsRequest create() => PendingChannelsRequest._();
  PendingChannelsRequest createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsRequest> createRepeated() =>
      $pb.PbList<PendingChannelsRequest>();
  static PendingChannelsRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static PendingChannelsRequest _defaultInstance;
}

class PendingChannelsResponse_PendingChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'PendingChannelsResponse.PendingChannel',
      package: const $pb.PackageName('lnrpc'),
      createEmptyInstance: create)
    ..aOS(1, 'remote_node_pub')
    ..aOS(2, 'channel_point')
    ..aInt64(3, 'capacity')
    ..aInt64(4, 'local_balance')
    ..aInt64(5, 'remote_balance')
    ..aInt64(6, 'local_chan_reserve_sat')
    ..aInt64(7, 'remote_chan_reserve_sat')
    ..hasRequiredFields = false;

  PendingChannelsResponse_PendingChannel._() : super();
  factory PendingChannelsResponse_PendingChannel() => create();
  factory PendingChannelsResponse_PendingChannel.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse_PendingChannel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PendingChannelsResponse_PendingChannel clone() =>
      PendingChannelsResponse_PendingChannel()..mergeFromMessage(this);
  PendingChannelsResponse_PendingChannel copyWith(
          void Function(PendingChannelsResponse_PendingChannel) updates) =>
      super.copyWith((message) =>
          updates(message as PendingChannelsResponse_PendingChannel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_PendingChannel create() =>
      PendingChannelsResponse_PendingChannel._();
  PendingChannelsResponse_PendingChannel createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse_PendingChannel> createRepeated() =>
      $pb.PbList<PendingChannelsResponse_PendingChannel>();
  static PendingChannelsResponse_PendingChannel getDefault() =>
      _defaultInstance ??= create()..freeze();
  static PendingChannelsResponse_PendingChannel _defaultInstance;

  $core.String get remoteNodePub => $_getS(0, '');
  set remoteNodePub($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasRemoteNodePub() => $_has(0);
  void clearRemoteNodePub() => clearField(1);

  $core.String get channelPoint => $_getS(1, '');
  set channelPoint($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasChannelPoint() => $_has(1);
  void clearChannelPoint() => clearField(2);

  Int64 get capacity => $_getI64(2);
  set capacity(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasCapacity() => $_has(2);
  void clearCapacity() => clearField(3);

  Int64 get localBalance => $_getI64(3);
  set localBalance(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasLocalBalance() => $_has(3);
  void clearLocalBalance() => clearField(4);

  Int64 get remoteBalance => $_getI64(4);
  set remoteBalance(Int64 v) {
    $_setInt64(4, v);
  }

  $core.bool hasRemoteBalance() => $_has(4);
  void clearRemoteBalance() => clearField(5);

  Int64 get localChanReserveSat => $_getI64(5);
  set localChanReserveSat(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasLocalChanReserveSat() => $_has(5);
  void clearLocalChanReserveSat() => clearField(6);

  Int64 get remoteChanReserveSat => $_getI64(6);
  set remoteChanReserveSat(Int64 v) {
    $_setInt64(6, v);
  }

  $core.bool hasRemoteChanReserveSat() => $_has(6);
  void clearRemoteChanReserveSat() => clearField(7);
}

class PendingChannelsResponse_PendingOpenChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'PendingChannelsResponse.PendingOpenChannel',
      package: const $pb.PackageName('lnrpc'),
      createEmptyInstance: create)
    ..a<PendingChannelsResponse_PendingChannel>(
        1, 'channel', $pb.PbFieldType.OM,
        defaultOrMaker: PendingChannelsResponse_PendingChannel.getDefault,
        subBuilder: PendingChannelsResponse_PendingChannel.create)
    ..a<$core.int>(2, 'confirmation_height', $pb.PbFieldType.OU3)
    ..aInt64(4, 'commit_fee')
    ..aInt64(5, 'commit_weight')
    ..aInt64(6, 'fee_per_kw')
    ..hasRequiredFields = false;

  PendingChannelsResponse_PendingOpenChannel._() : super();
  factory PendingChannelsResponse_PendingOpenChannel() => create();
  factory PendingChannelsResponse_PendingOpenChannel.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse_PendingOpenChannel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PendingChannelsResponse_PendingOpenChannel clone() =>
      PendingChannelsResponse_PendingOpenChannel()..mergeFromMessage(this);
  PendingChannelsResponse_PendingOpenChannel copyWith(
          void Function(PendingChannelsResponse_PendingOpenChannel) updates) =>
      super.copyWith((message) =>
          updates(message as PendingChannelsResponse_PendingOpenChannel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_PendingOpenChannel create() =>
      PendingChannelsResponse_PendingOpenChannel._();
  PendingChannelsResponse_PendingOpenChannel createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse_PendingOpenChannel>
      createRepeated() =>
          $pb.PbList<PendingChannelsResponse_PendingOpenChannel>();
  static PendingChannelsResponse_PendingOpenChannel getDefault() =>
      _defaultInstance ??= create()..freeze();
  static PendingChannelsResponse_PendingOpenChannel _defaultInstance;

  PendingChannelsResponse_PendingChannel get channel => $_getN(0);
  set channel(PendingChannelsResponse_PendingChannel v) {
    setField(1, v);
  }

  $core.bool hasChannel() => $_has(0);
  void clearChannel() => clearField(1);

  $core.int get confirmationHeight => $_get(1, 0);
  set confirmationHeight($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  $core.bool hasConfirmationHeight() => $_has(1);
  void clearConfirmationHeight() => clearField(2);

  Int64 get commitFee => $_getI64(2);
  set commitFee(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasCommitFee() => $_has(2);
  void clearCommitFee() => clearField(4);

  Int64 get commitWeight => $_getI64(3);
  set commitWeight(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasCommitWeight() => $_has(3);
  void clearCommitWeight() => clearField(5);

  Int64 get feePerKw => $_getI64(4);
  set feePerKw(Int64 v) {
    $_setInt64(4, v);
  }

  $core.bool hasFeePerKw() => $_has(4);
  void clearFeePerKw() => clearField(6);
}

class PendingChannelsResponse_WaitingCloseChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'PendingChannelsResponse.WaitingCloseChannel',
      package: const $pb.PackageName('lnrpc'),
      createEmptyInstance: create)
    ..a<PendingChannelsResponse_PendingChannel>(
        1, 'channel', $pb.PbFieldType.OM,
        defaultOrMaker: PendingChannelsResponse_PendingChannel.getDefault,
        subBuilder: PendingChannelsResponse_PendingChannel.create)
    ..aInt64(2, 'limbo_balance')
    ..hasRequiredFields = false;

  PendingChannelsResponse_WaitingCloseChannel._() : super();
  factory PendingChannelsResponse_WaitingCloseChannel() => create();
  factory PendingChannelsResponse_WaitingCloseChannel.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse_WaitingCloseChannel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PendingChannelsResponse_WaitingCloseChannel clone() =>
      PendingChannelsResponse_WaitingCloseChannel()..mergeFromMessage(this);
  PendingChannelsResponse_WaitingCloseChannel copyWith(
          void Function(PendingChannelsResponse_WaitingCloseChannel) updates) =>
      super.copyWith((message) =>
          updates(message as PendingChannelsResponse_WaitingCloseChannel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_WaitingCloseChannel create() =>
      PendingChannelsResponse_WaitingCloseChannel._();
  PendingChannelsResponse_WaitingCloseChannel createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse_WaitingCloseChannel>
      createRepeated() =>
          $pb.PbList<PendingChannelsResponse_WaitingCloseChannel>();
  static PendingChannelsResponse_WaitingCloseChannel getDefault() =>
      _defaultInstance ??= create()..freeze();
  static PendingChannelsResponse_WaitingCloseChannel _defaultInstance;

  PendingChannelsResponse_PendingChannel get channel => $_getN(0);
  set channel(PendingChannelsResponse_PendingChannel v) {
    setField(1, v);
  }

  $core.bool hasChannel() => $_has(0);
  void clearChannel() => clearField(1);

  Int64 get limboBalance => $_getI64(1);
  set limboBalance(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasLimboBalance() => $_has(1);
  void clearLimboBalance() => clearField(2);
}

class PendingChannelsResponse_ClosedChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'PendingChannelsResponse.ClosedChannel',
      package: const $pb.PackageName('lnrpc'),
      createEmptyInstance: create)
    ..a<PendingChannelsResponse_PendingChannel>(
        1, 'channel', $pb.PbFieldType.OM,
        defaultOrMaker: PendingChannelsResponse_PendingChannel.getDefault,
        subBuilder: PendingChannelsResponse_PendingChannel.create)
    ..aOS(2, 'closing_txid')
    ..hasRequiredFields = false;

  PendingChannelsResponse_ClosedChannel._() : super();
  factory PendingChannelsResponse_ClosedChannel() => create();
  factory PendingChannelsResponse_ClosedChannel.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse_ClosedChannel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PendingChannelsResponse_ClosedChannel clone() =>
      PendingChannelsResponse_ClosedChannel()..mergeFromMessage(this);
  PendingChannelsResponse_ClosedChannel copyWith(
          void Function(PendingChannelsResponse_ClosedChannel) updates) =>
      super.copyWith((message) =>
          updates(message as PendingChannelsResponse_ClosedChannel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_ClosedChannel create() =>
      PendingChannelsResponse_ClosedChannel._();
  PendingChannelsResponse_ClosedChannel createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse_ClosedChannel> createRepeated() =>
      $pb.PbList<PendingChannelsResponse_ClosedChannel>();
  static PendingChannelsResponse_ClosedChannel getDefault() =>
      _defaultInstance ??= create()..freeze();
  static PendingChannelsResponse_ClosedChannel _defaultInstance;

  PendingChannelsResponse_PendingChannel get channel => $_getN(0);
  set channel(PendingChannelsResponse_PendingChannel v) {
    setField(1, v);
  }

  $core.bool hasChannel() => $_has(0);
  void clearChannel() => clearField(1);

  $core.String get closingTxid => $_getS(1, '');
  set closingTxid($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasClosingTxid() => $_has(1);
  void clearClosingTxid() => clearField(2);
}

class PendingChannelsResponse_ForceClosedChannel extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'PendingChannelsResponse.ForceClosedChannel',
      package: const $pb.PackageName('lnrpc'),
      createEmptyInstance: create)
    ..a<PendingChannelsResponse_PendingChannel>(
        1, 'channel', $pb.PbFieldType.OM,
        defaultOrMaker: PendingChannelsResponse_PendingChannel.getDefault,
        subBuilder: PendingChannelsResponse_PendingChannel.create)
    ..aOS(2, 'closing_txid')
    ..aInt64(3, 'limbo_balance')
    ..a<$core.int>(4, 'maturity_height', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'blocks_til_maturity', $pb.PbFieldType.O3)
    ..aInt64(6, 'recovered_balance')
    ..pc<PendingHTLC>(8, 'pending_htlcs', $pb.PbFieldType.PM,
        subBuilder: PendingHTLC.create)
    ..hasRequiredFields = false;

  PendingChannelsResponse_ForceClosedChannel._() : super();
  factory PendingChannelsResponse_ForceClosedChannel() => create();
  factory PendingChannelsResponse_ForceClosedChannel.fromBuffer(
          $core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse_ForceClosedChannel.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PendingChannelsResponse_ForceClosedChannel clone() =>
      PendingChannelsResponse_ForceClosedChannel()..mergeFromMessage(this);
  PendingChannelsResponse_ForceClosedChannel copyWith(
          void Function(PendingChannelsResponse_ForceClosedChannel) updates) =>
      super.copyWith((message) =>
          updates(message as PendingChannelsResponse_ForceClosedChannel));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse_ForceClosedChannel create() =>
      PendingChannelsResponse_ForceClosedChannel._();
  PendingChannelsResponse_ForceClosedChannel createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse_ForceClosedChannel>
      createRepeated() =>
          $pb.PbList<PendingChannelsResponse_ForceClosedChannel>();
  static PendingChannelsResponse_ForceClosedChannel getDefault() =>
      _defaultInstance ??= create()..freeze();
  static PendingChannelsResponse_ForceClosedChannel _defaultInstance;

  PendingChannelsResponse_PendingChannel get channel => $_getN(0);
  set channel(PendingChannelsResponse_PendingChannel v) {
    setField(1, v);
  }

  $core.bool hasChannel() => $_has(0);
  void clearChannel() => clearField(1);

  $core.String get closingTxid => $_getS(1, '');
  set closingTxid($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasClosingTxid() => $_has(1);
  void clearClosingTxid() => clearField(2);

  Int64 get limboBalance => $_getI64(2);
  set limboBalance(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasLimboBalance() => $_has(2);
  void clearLimboBalance() => clearField(3);

  $core.int get maturityHeight => $_get(3, 0);
  set maturityHeight($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  $core.bool hasMaturityHeight() => $_has(3);
  void clearMaturityHeight() => clearField(4);

  $core.int get blocksTilMaturity => $_get(4, 0);
  set blocksTilMaturity($core.int v) {
    $_setSignedInt32(4, v);
  }

  $core.bool hasBlocksTilMaturity() => $_has(4);
  void clearBlocksTilMaturity() => clearField(5);

  Int64 get recoveredBalance => $_getI64(5);
  set recoveredBalance(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasRecoveredBalance() => $_has(5);
  void clearRecoveredBalance() => clearField(6);

  $core.List<PendingHTLC> get pendingHtlcs => $_getList(6);
}

class PendingChannelsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PendingChannelsResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aInt64(1, 'total_limbo_balance')
    ..pc<PendingChannelsResponse_PendingOpenChannel>(
        2, 'pending_open_channels', $pb.PbFieldType.PM,
        subBuilder: PendingChannelsResponse_PendingOpenChannel.create)
    ..pc<PendingChannelsResponse_ClosedChannel>(
        3, 'pending_closing_channels', $pb.PbFieldType.PM,
        subBuilder: PendingChannelsResponse_ClosedChannel.create)
    ..pc<PendingChannelsResponse_ForceClosedChannel>(
        4, 'pending_force_closing_channels', $pb.PbFieldType.PM,
        subBuilder: PendingChannelsResponse_ForceClosedChannel.create)
    ..pc<PendingChannelsResponse_WaitingCloseChannel>(
        5, 'waiting_close_channels', $pb.PbFieldType.PM,
        subBuilder: PendingChannelsResponse_WaitingCloseChannel.create)
    ..hasRequiredFields = false;

  PendingChannelsResponse._() : super();
  factory PendingChannelsResponse() => create();
  factory PendingChannelsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PendingChannelsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PendingChannelsResponse clone() =>
      PendingChannelsResponse()..mergeFromMessage(this);
  PendingChannelsResponse copyWith(
          void Function(PendingChannelsResponse) updates) =>
      super.copyWith((message) => updates(message as PendingChannelsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PendingChannelsResponse create() => PendingChannelsResponse._();
  PendingChannelsResponse createEmptyInstance() => create();
  static $pb.PbList<PendingChannelsResponse> createRepeated() =>
      $pb.PbList<PendingChannelsResponse>();
  static PendingChannelsResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static PendingChannelsResponse _defaultInstance;

  Int64 get totalLimboBalance => $_getI64(0);
  set totalLimboBalance(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasTotalLimboBalance() => $_has(0);
  void clearTotalLimboBalance() => clearField(1);

  $core.List<PendingChannelsResponse_PendingOpenChannel>
      get pendingOpenChannels => $_getList(1);

  $core.List<PendingChannelsResponse_ClosedChannel>
      get pendingClosingChannels => $_getList(2);

  $core.List<PendingChannelsResponse_ForceClosedChannel>
      get pendingForceClosingChannels => $_getList(3);

  $core.List<PendingChannelsResponse_WaitingCloseChannel>
      get waitingCloseChannels => $_getList(4);
}

class ChannelEventSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelEventSubscription',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  ChannelEventSubscription._() : super();
  factory ChannelEventSubscription() => create();
  factory ChannelEventSubscription.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelEventSubscription.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelEventSubscription clone() =>
      ChannelEventSubscription()..mergeFromMessage(this);
  ChannelEventSubscription copyWith(
          void Function(ChannelEventSubscription) updates) =>
      super.copyWith((message) => updates(message as ChannelEventSubscription));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelEventSubscription create() => ChannelEventSubscription._();
  ChannelEventSubscription createEmptyInstance() => create();
  static $pb.PbList<ChannelEventSubscription> createRepeated() =>
      $pb.PbList<ChannelEventSubscription>();
  static ChannelEventSubscription getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelEventSubscription _defaultInstance;
}

enum ChannelEventUpdate_Channel {
  openChannel,
  closedChannel,
  activeChannel,
  inactiveChannel,
  notSet
}

class ChannelEventUpdate extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, ChannelEventUpdate_Channel>
      _ChannelEventUpdate_ChannelByTag = {
    1: ChannelEventUpdate_Channel.openChannel,
    2: ChannelEventUpdate_Channel.closedChannel,
    3: ChannelEventUpdate_Channel.activeChannel,
    4: ChannelEventUpdate_Channel.inactiveChannel,
    0: ChannelEventUpdate_Channel.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelEventUpdate',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2, 3, 4])
    ..a<Channel>(1, 'open_channel', $pb.PbFieldType.OM,
        defaultOrMaker: Channel.getDefault, subBuilder: Channel.create)
    ..a<ChannelCloseSummary>(2, 'closed_channel', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelCloseSummary.getDefault,
        subBuilder: ChannelCloseSummary.create)
    ..a<ChannelPoint>(3, 'active_channel', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelPoint.getDefault,
        subBuilder: ChannelPoint.create)
    ..a<ChannelPoint>(4, 'inactive_channel', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelPoint.getDefault,
        subBuilder: ChannelPoint.create)
    ..e<ChannelEventUpdate_UpdateType>(5, 'type', $pb.PbFieldType.OE,
        defaultOrMaker: ChannelEventUpdate_UpdateType.OPEN_CHANNEL,
        valueOf: ChannelEventUpdate_UpdateType.valueOf,
        enumValues: ChannelEventUpdate_UpdateType.values)
    ..hasRequiredFields = false;

  ChannelEventUpdate._() : super();
  factory ChannelEventUpdate() => create();
  factory ChannelEventUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelEventUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelEventUpdate clone() => ChannelEventUpdate()..mergeFromMessage(this);
  ChannelEventUpdate copyWith(void Function(ChannelEventUpdate) updates) =>
      super.copyWith((message) => updates(message as ChannelEventUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelEventUpdate create() => ChannelEventUpdate._();
  ChannelEventUpdate createEmptyInstance() => create();
  static $pb.PbList<ChannelEventUpdate> createRepeated() =>
      $pb.PbList<ChannelEventUpdate>();
  static ChannelEventUpdate getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelEventUpdate _defaultInstance;

  ChannelEventUpdate_Channel whichChannel() =>
      _ChannelEventUpdate_ChannelByTag[$_whichOneof(0)];
  void clearChannel() => clearField($_whichOneof(0));

  Channel get openChannel => $_getN(0);
  set openChannel(Channel v) {
    setField(1, v);
  }

  $core.bool hasOpenChannel() => $_has(0);
  void clearOpenChannel() => clearField(1);

  ChannelCloseSummary get closedChannel => $_getN(1);
  set closedChannel(ChannelCloseSummary v) {
    setField(2, v);
  }

  $core.bool hasClosedChannel() => $_has(1);
  void clearClosedChannel() => clearField(2);

  ChannelPoint get activeChannel => $_getN(2);
  set activeChannel(ChannelPoint v) {
    setField(3, v);
  }

  $core.bool hasActiveChannel() => $_has(2);
  void clearActiveChannel() => clearField(3);

  ChannelPoint get inactiveChannel => $_getN(3);
  set inactiveChannel(ChannelPoint v) {
    setField(4, v);
  }

  $core.bool hasInactiveChannel() => $_has(3);
  void clearInactiveChannel() => clearField(4);

  ChannelEventUpdate_UpdateType get type => $_getN(4);
  set type(ChannelEventUpdate_UpdateType v) {
    setField(5, v);
  }

  $core.bool hasType() => $_has(4);
  void clearType() => clearField(5);
}

class WalletBalanceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WalletBalanceRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  WalletBalanceRequest._() : super();
  factory WalletBalanceRequest() => create();
  factory WalletBalanceRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WalletBalanceRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  WalletBalanceRequest clone() =>
      WalletBalanceRequest()..mergeFromMessage(this);
  WalletBalanceRequest copyWith(void Function(WalletBalanceRequest) updates) =>
      super.copyWith((message) => updates(message as WalletBalanceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletBalanceRequest create() => WalletBalanceRequest._();
  WalletBalanceRequest createEmptyInstance() => create();
  static $pb.PbList<WalletBalanceRequest> createRepeated() =>
      $pb.PbList<WalletBalanceRequest>();
  static WalletBalanceRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static WalletBalanceRequest _defaultInstance;
}

class WalletBalanceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('WalletBalanceResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aInt64(1, 'total_balance')
    ..aInt64(2, 'confirmed_balance')
    ..aInt64(3, 'unconfirmed_balance')
    ..hasRequiredFields = false;

  WalletBalanceResponse._() : super();
  factory WalletBalanceResponse() => create();
  factory WalletBalanceResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory WalletBalanceResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  WalletBalanceResponse clone() =>
      WalletBalanceResponse()..mergeFromMessage(this);
  WalletBalanceResponse copyWith(
          void Function(WalletBalanceResponse) updates) =>
      super.copyWith((message) => updates(message as WalletBalanceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static WalletBalanceResponse create() => WalletBalanceResponse._();
  WalletBalanceResponse createEmptyInstance() => create();
  static $pb.PbList<WalletBalanceResponse> createRepeated() =>
      $pb.PbList<WalletBalanceResponse>();
  static WalletBalanceResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static WalletBalanceResponse _defaultInstance;

  Int64 get totalBalance => $_getI64(0);
  set totalBalance(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasTotalBalance() => $_has(0);
  void clearTotalBalance() => clearField(1);

  Int64 get confirmedBalance => $_getI64(1);
  set confirmedBalance(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasConfirmedBalance() => $_has(1);
  void clearConfirmedBalance() => clearField(2);

  Int64 get unconfirmedBalance => $_getI64(2);
  set unconfirmedBalance(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasUnconfirmedBalance() => $_has(2);
  void clearUnconfirmedBalance() => clearField(3);
}

class ChannelBalanceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelBalanceRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  ChannelBalanceRequest._() : super();
  factory ChannelBalanceRequest() => create();
  factory ChannelBalanceRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelBalanceRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelBalanceRequest clone() =>
      ChannelBalanceRequest()..mergeFromMessage(this);
  ChannelBalanceRequest copyWith(
          void Function(ChannelBalanceRequest) updates) =>
      super.copyWith((message) => updates(message as ChannelBalanceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelBalanceRequest create() => ChannelBalanceRequest._();
  ChannelBalanceRequest createEmptyInstance() => create();
  static $pb.PbList<ChannelBalanceRequest> createRepeated() =>
      $pb.PbList<ChannelBalanceRequest>();
  static ChannelBalanceRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelBalanceRequest _defaultInstance;
}

class ChannelBalanceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelBalanceResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aInt64(1, 'balance')
    ..aInt64(2, 'pending_open_balance')
    ..hasRequiredFields = false;

  ChannelBalanceResponse._() : super();
  factory ChannelBalanceResponse() => create();
  factory ChannelBalanceResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelBalanceResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelBalanceResponse clone() =>
      ChannelBalanceResponse()..mergeFromMessage(this);
  ChannelBalanceResponse copyWith(
          void Function(ChannelBalanceResponse) updates) =>
      super.copyWith((message) => updates(message as ChannelBalanceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelBalanceResponse create() => ChannelBalanceResponse._();
  ChannelBalanceResponse createEmptyInstance() => create();
  static $pb.PbList<ChannelBalanceResponse> createRepeated() =>
      $pb.PbList<ChannelBalanceResponse>();
  static ChannelBalanceResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelBalanceResponse _defaultInstance;

  Int64 get balance => $_getI64(0);
  set balance(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasBalance() => $_has(0);
  void clearBalance() => clearField(1);

  Int64 get pendingOpenBalance => $_getI64(1);
  set pendingOpenBalance(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasPendingOpenBalance() => $_has(1);
  void clearPendingOpenBalance() => clearField(2);
}

class QueryRoutesRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QueryRoutesRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'pubKey')
    ..aInt64(2, 'amt')
    ..a<$core.int>(4, 'finalCltvDelta', $pb.PbFieldType.O3)
    ..a<FeeLimit>(5, 'feeLimit', $pb.PbFieldType.OM,
        defaultOrMaker: FeeLimit.getDefault, subBuilder: FeeLimit.create)
    ..p<$core.List<$core.int>>(6, 'ignoredNodes', $pb.PbFieldType.PY)
    ..pc<EdgeLocator>(7, 'ignoredEdges', $pb.PbFieldType.PM,
        subBuilder: EdgeLocator.create)
    ..aOS(8, 'sourcePubKey')
    ..aOB(9, 'useMissionControl')
    ..pc<NodePair>(10, 'ignoredPairs', $pb.PbFieldType.PM,
        subBuilder: NodePair.create)
    ..a<$core.int>(11, 'cltvLimit', $pb.PbFieldType.OU3)
    ..aInt64(12, 'amtMsat')
    ..m<Int64, $core.List<$core.int>>(13, 'destCustomRecords',
        entryClassName: 'QueryRoutesRequest.DestCustomRecordsEntry',
        keyFieldType: $pb.PbFieldType.OU6,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('lnrpc'))
    ..hasRequiredFields = false;

  QueryRoutesRequest._() : super();
  factory QueryRoutesRequest() => create();
  factory QueryRoutesRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueryRoutesRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  QueryRoutesRequest clone() => QueryRoutesRequest()..mergeFromMessage(this);
  QueryRoutesRequest copyWith(void Function(QueryRoutesRequest) updates) =>
      super.copyWith((message) => updates(message as QueryRoutesRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryRoutesRequest create() => QueryRoutesRequest._();
  QueryRoutesRequest createEmptyInstance() => create();
  static $pb.PbList<QueryRoutesRequest> createRepeated() =>
      $pb.PbList<QueryRoutesRequest>();
  static QueryRoutesRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static QueryRoutesRequest _defaultInstance;

  $core.String get pubKey => $_getS(0, '');
  set pubKey($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasPubKey() => $_has(0);
  void clearPubKey() => clearField(1);

  Int64 get amt => $_getI64(1);
  set amt(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasAmt() => $_has(1);
  void clearAmt() => clearField(2);

  $core.int get finalCltvDelta => $_get(2, 0);
  set finalCltvDelta($core.int v) {
    $_setSignedInt32(2, v);
  }

  $core.bool hasFinalCltvDelta() => $_has(2);
  void clearFinalCltvDelta() => clearField(4);

  FeeLimit get feeLimit => $_getN(3);
  set feeLimit(FeeLimit v) {
    setField(5, v);
  }

  $core.bool hasFeeLimit() => $_has(3);
  void clearFeeLimit() => clearField(5);

  $core.List<$core.List<$core.int>> get ignoredNodes => $_getList(4);

  @$core.Deprecated('This field is deprecated.')
  $core.List<EdgeLocator> get ignoredEdges => $_getList(5);

  $core.String get sourcePubKey => $_getS(6, '');
  set sourcePubKey($core.String v) {
    $_setString(6, v);
  }

  $core.bool hasSourcePubKey() => $_has(6);
  void clearSourcePubKey() => clearField(8);

  $core.bool get useMissionControl => $_get(7, false);
  set useMissionControl($core.bool v) {
    $_setBool(7, v);
  }

  $core.bool hasUseMissionControl() => $_has(7);
  void clearUseMissionControl() => clearField(9);

  $core.List<NodePair> get ignoredPairs => $_getList(8);

  $core.int get cltvLimit => $_get(9, 0);
  set cltvLimit($core.int v) {
    $_setUnsignedInt32(9, v);
  }

  $core.bool hasCltvLimit() => $_has(9);
  void clearCltvLimit() => clearField(11);

  Int64 get amtMsat => $_getI64(10);
  set amtMsat(Int64 v) {
    $_setInt64(10, v);
  }

  $core.bool hasAmtMsat() => $_has(10);
  void clearAmtMsat() => clearField(12);

  $core.Map<Int64, $core.List<$core.int>> get destCustomRecords => $_getMap(11);
}

class NodePair extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NodePair',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'from', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(2, 'to', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  NodePair._() : super();
  factory NodePair() => create();
  factory NodePair.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NodePair.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NodePair clone() => NodePair()..mergeFromMessage(this);
  NodePair copyWith(void Function(NodePair) updates) =>
      super.copyWith((message) => updates(message as NodePair));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodePair create() => NodePair._();
  NodePair createEmptyInstance() => create();
  static $pb.PbList<NodePair> createRepeated() => $pb.PbList<NodePair>();
  static NodePair getDefault() => _defaultInstance ??= create()..freeze();
  static NodePair _defaultInstance;

  $core.List<$core.int> get from => $_getN(0);
  set from($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasFrom() => $_has(0);
  void clearFrom() => clearField(1);

  $core.List<$core.int> get to => $_getN(1);
  set to($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasTo() => $_has(1);
  void clearTo() => clearField(2);
}

class EdgeLocator extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('EdgeLocator',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<Int64>(1, 'channelId', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..aOB(2, 'directionReverse')
    ..hasRequiredFields = false;

  EdgeLocator._() : super();
  factory EdgeLocator() => create();
  factory EdgeLocator.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory EdgeLocator.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  EdgeLocator clone() => EdgeLocator()..mergeFromMessage(this);
  EdgeLocator copyWith(void Function(EdgeLocator) updates) =>
      super.copyWith((message) => updates(message as EdgeLocator));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static EdgeLocator create() => EdgeLocator._();
  EdgeLocator createEmptyInstance() => create();
  static $pb.PbList<EdgeLocator> createRepeated() => $pb.PbList<EdgeLocator>();
  static EdgeLocator getDefault() => _defaultInstance ??= create()..freeze();
  static EdgeLocator _defaultInstance;

  Int64 get channelId => $_getI64(0);
  set channelId(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasChannelId() => $_has(0);
  void clearChannelId() => clearField(1);

  $core.bool get directionReverse => $_get(1, false);
  set directionReverse($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasDirectionReverse() => $_has(1);
  void clearDirectionReverse() => clearField(2);
}

class QueryRoutesResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('QueryRoutesResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<Route>(1, 'routes', $pb.PbFieldType.PM, subBuilder: Route.create)
    ..a<$core.double>(2, 'success_prob', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  QueryRoutesResponse._() : super();
  factory QueryRoutesResponse() => create();
  factory QueryRoutesResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory QueryRoutesResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  QueryRoutesResponse clone() => QueryRoutesResponse()..mergeFromMessage(this);
  QueryRoutesResponse copyWith(void Function(QueryRoutesResponse) updates) =>
      super.copyWith((message) => updates(message as QueryRoutesResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static QueryRoutesResponse create() => QueryRoutesResponse._();
  QueryRoutesResponse createEmptyInstance() => create();
  static $pb.PbList<QueryRoutesResponse> createRepeated() =>
      $pb.PbList<QueryRoutesResponse>();
  static QueryRoutesResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static QueryRoutesResponse _defaultInstance;

  $core.List<Route> get routes => $_getList(0);

  $core.double get successProb => $_getN(1);
  set successProb($core.double v) {
    $_setDouble(1, v);
  }

  $core.bool hasSuccessProb() => $_has(1);
  void clearSuccessProb() => clearField(2);
}

class Hop extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Hop',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<Int64>(1, 'chan_id', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..aInt64(2, 'chan_capacity')
    ..aInt64(3, 'amt_to_forward')
    ..aInt64(4, 'fee')
    ..a<$core.int>(5, 'expiry', $pb.PbFieldType.OU3)
    ..aInt64(6, 'amt_to_forward_msat')
    ..aInt64(7, 'fee_msat')
    ..aOS(8, 'pub_key')
    ..aOB(9, 'tlv_payload')
    ..a<MPPRecord>(10, 'mpp_record', $pb.PbFieldType.OM,
        defaultOrMaker: MPPRecord.getDefault, subBuilder: MPPRecord.create)
    ..m<Int64, $core.List<$core.int>>(11, 'custom_records',
        entryClassName: 'Hop.CustomRecordsEntry',
        keyFieldType: $pb.PbFieldType.OU6,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('lnrpc'))
    ..hasRequiredFields = false;

  Hop._() : super();
  factory Hop() => create();
  factory Hop.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Hop.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Hop clone() => Hop()..mergeFromMessage(this);
  Hop copyWith(void Function(Hop) updates) =>
      super.copyWith((message) => updates(message as Hop));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Hop create() => Hop._();
  Hop createEmptyInstance() => create();
  static $pb.PbList<Hop> createRepeated() => $pb.PbList<Hop>();
  static Hop getDefault() => _defaultInstance ??= create()..freeze();
  static Hop _defaultInstance;

  Int64 get chanId => $_getI64(0);
  set chanId(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasChanId() => $_has(0);
  void clearChanId() => clearField(1);

  Int64 get chanCapacity => $_getI64(1);
  set chanCapacity(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasChanCapacity() => $_has(1);
  void clearChanCapacity() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  Int64 get amtToForward => $_getI64(2);
  @$core.Deprecated('This field is deprecated.')
  set amtToForward(Int64 v) {
    $_setInt64(2, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasAmtToForward() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  void clearAmtToForward() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  Int64 get fee => $_getI64(3);
  @$core.Deprecated('This field is deprecated.')
  set fee(Int64 v) {
    $_setInt64(3, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasFee() => $_has(3);
  @$core.Deprecated('This field is deprecated.')
  void clearFee() => clearField(4);

  $core.int get expiry => $_get(4, 0);
  set expiry($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  $core.bool hasExpiry() => $_has(4);
  void clearExpiry() => clearField(5);

  Int64 get amtToForwardMsat => $_getI64(5);
  set amtToForwardMsat(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasAmtToForwardMsat() => $_has(5);
  void clearAmtToForwardMsat() => clearField(6);

  Int64 get feeMsat => $_getI64(6);
  set feeMsat(Int64 v) {
    $_setInt64(6, v);
  }

  $core.bool hasFeeMsat() => $_has(6);
  void clearFeeMsat() => clearField(7);

  $core.String get pubKey => $_getS(7, '');
  set pubKey($core.String v) {
    $_setString(7, v);
  }

  $core.bool hasPubKey() => $_has(7);
  void clearPubKey() => clearField(8);

  $core.bool get tlvPayload => $_get(8, false);
  set tlvPayload($core.bool v) {
    $_setBool(8, v);
  }

  $core.bool hasTlvPayload() => $_has(8);
  void clearTlvPayload() => clearField(9);

  MPPRecord get mppRecord => $_getN(9);
  set mppRecord(MPPRecord v) {
    setField(10, v);
  }

  $core.bool hasMppRecord() => $_has(9);
  void clearMppRecord() => clearField(10);

  $core.Map<Int64, $core.List<$core.int>> get customRecords => $_getMap(10);
}

class MPPRecord extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MPPRecord',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aInt64(10, 'total_amt_msat')
    ..a<$core.List<$core.int>>(11, 'payment_addr', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  MPPRecord._() : super();
  factory MPPRecord() => create();
  factory MPPRecord.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MPPRecord.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  MPPRecord clone() => MPPRecord()..mergeFromMessage(this);
  MPPRecord copyWith(void Function(MPPRecord) updates) =>
      super.copyWith((message) => updates(message as MPPRecord));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MPPRecord create() => MPPRecord._();
  MPPRecord createEmptyInstance() => create();
  static $pb.PbList<MPPRecord> createRepeated() => $pb.PbList<MPPRecord>();
  static MPPRecord getDefault() => _defaultInstance ??= create()..freeze();
  static MPPRecord _defaultInstance;

  Int64 get totalAmtMsat => $_getI64(0);
  set totalAmtMsat(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasTotalAmtMsat() => $_has(0);
  void clearTotalAmtMsat() => clearField(10);

  $core.List<$core.int> get paymentAddr => $_getN(1);
  set paymentAddr($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasPaymentAddr() => $_has(1);
  void clearPaymentAddr() => clearField(11);
}

class Route extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Route',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, 'total_time_lock', $pb.PbFieldType.OU3)
    ..aInt64(2, 'total_fees')
    ..aInt64(3, 'total_amt')
    ..pc<Hop>(4, 'hops', $pb.PbFieldType.PM, subBuilder: Hop.create)
    ..aInt64(5, 'total_fees_msat')
    ..aInt64(6, 'total_amt_msat')
    ..hasRequiredFields = false;

  Route._() : super();
  factory Route() => create();
  factory Route.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Route.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Route clone() => Route()..mergeFromMessage(this);
  Route copyWith(void Function(Route) updates) =>
      super.copyWith((message) => updates(message as Route));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Route create() => Route._();
  Route createEmptyInstance() => create();
  static $pb.PbList<Route> createRepeated() => $pb.PbList<Route>();
  static Route getDefault() => _defaultInstance ??= create()..freeze();
  static Route _defaultInstance;

  $core.int get totalTimeLock => $_get(0, 0);
  set totalTimeLock($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  $core.bool hasTotalTimeLock() => $_has(0);
  void clearTotalTimeLock() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  Int64 get totalFees => $_getI64(1);
  @$core.Deprecated('This field is deprecated.')
  set totalFees(Int64 v) {
    $_setInt64(1, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasTotalFees() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  void clearTotalFees() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  Int64 get totalAmt => $_getI64(2);
  @$core.Deprecated('This field is deprecated.')
  set totalAmt(Int64 v) {
    $_setInt64(2, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasTotalAmt() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  void clearTotalAmt() => clearField(3);

  $core.List<Hop> get hops => $_getList(3);

  Int64 get totalFeesMsat => $_getI64(4);
  set totalFeesMsat(Int64 v) {
    $_setInt64(4, v);
  }

  $core.bool hasTotalFeesMsat() => $_has(4);
  void clearTotalFeesMsat() => clearField(5);

  Int64 get totalAmtMsat => $_getI64(5);
  set totalAmtMsat(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasTotalAmtMsat() => $_has(5);
  void clearTotalAmtMsat() => clearField(6);
}

class NodeInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NodeInfoRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'pubKey')
    ..aOB(2, 'includeChannels')
    ..hasRequiredFields = false;

  NodeInfoRequest._() : super();
  factory NodeInfoRequest() => create();
  factory NodeInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NodeInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NodeInfoRequest clone() => NodeInfoRequest()..mergeFromMessage(this);
  NodeInfoRequest copyWith(void Function(NodeInfoRequest) updates) =>
      super.copyWith((message) => updates(message as NodeInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeInfoRequest create() => NodeInfoRequest._();
  NodeInfoRequest createEmptyInstance() => create();
  static $pb.PbList<NodeInfoRequest> createRepeated() =>
      $pb.PbList<NodeInfoRequest>();
  static NodeInfoRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static NodeInfoRequest _defaultInstance;

  $core.String get pubKey => $_getS(0, '');
  set pubKey($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasPubKey() => $_has(0);
  void clearPubKey() => clearField(1);

  $core.bool get includeChannels => $_get(1, false);
  set includeChannels($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasIncludeChannels() => $_has(1);
  void clearIncludeChannels() => clearField(2);
}

class NodeInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NodeInfo',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<LightningNode>(1, 'node', $pb.PbFieldType.OM,
        defaultOrMaker: LightningNode.getDefault,
        subBuilder: LightningNode.create)
    ..a<$core.int>(2, 'num_channels', $pb.PbFieldType.OU3)
    ..aInt64(3, 'total_capacity')
    ..pc<ChannelEdge>(4, 'channels', $pb.PbFieldType.PM,
        subBuilder: ChannelEdge.create)
    ..hasRequiredFields = false;

  NodeInfo._() : super();
  factory NodeInfo() => create();
  factory NodeInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NodeInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NodeInfo clone() => NodeInfo()..mergeFromMessage(this);
  NodeInfo copyWith(void Function(NodeInfo) updates) =>
      super.copyWith((message) => updates(message as NodeInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeInfo create() => NodeInfo._();
  NodeInfo createEmptyInstance() => create();
  static $pb.PbList<NodeInfo> createRepeated() => $pb.PbList<NodeInfo>();
  static NodeInfo getDefault() => _defaultInstance ??= create()..freeze();
  static NodeInfo _defaultInstance;

  LightningNode get node => $_getN(0);
  set node(LightningNode v) {
    setField(1, v);
  }

  $core.bool hasNode() => $_has(0);
  void clearNode() => clearField(1);

  $core.int get numChannels => $_get(1, 0);
  set numChannels($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  $core.bool hasNumChannels() => $_has(1);
  void clearNumChannels() => clearField(2);

  Int64 get totalCapacity => $_getI64(2);
  set totalCapacity(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasTotalCapacity() => $_has(2);
  void clearTotalCapacity() => clearField(3);

  $core.List<ChannelEdge> get channels => $_getList(3);
}

class LightningNode extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('LightningNode',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, 'last_update', $pb.PbFieldType.OU3)
    ..aOS(2, 'pub_key')
    ..aOS(3, 'alias')
    ..pc<NodeAddress>(4, 'addresses', $pb.PbFieldType.PM,
        subBuilder: NodeAddress.create)
    ..aOS(5, 'color')
    ..m<$core.int, Feature>(6, 'features',
        entryClassName: 'LightningNode.FeaturesEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Feature.create,
        packageName: const $pb.PackageName('lnrpc'))
    ..hasRequiredFields = false;

  LightningNode._() : super();
  factory LightningNode() => create();
  factory LightningNode.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory LightningNode.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  LightningNode clone() => LightningNode()..mergeFromMessage(this);
  LightningNode copyWith(void Function(LightningNode) updates) =>
      super.copyWith((message) => updates(message as LightningNode));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static LightningNode create() => LightningNode._();
  LightningNode createEmptyInstance() => create();
  static $pb.PbList<LightningNode> createRepeated() =>
      $pb.PbList<LightningNode>();
  static LightningNode getDefault() => _defaultInstance ??= create()..freeze();
  static LightningNode _defaultInstance;

  $core.int get lastUpdate => $_get(0, 0);
  set lastUpdate($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  $core.bool hasLastUpdate() => $_has(0);
  void clearLastUpdate() => clearField(1);

  $core.String get pubKey => $_getS(1, '');
  set pubKey($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasPubKey() => $_has(1);
  void clearPubKey() => clearField(2);

  $core.String get alias => $_getS(2, '');
  set alias($core.String v) {
    $_setString(2, v);
  }

  $core.bool hasAlias() => $_has(2);
  void clearAlias() => clearField(3);

  $core.List<NodeAddress> get addresses => $_getList(3);

  $core.String get color => $_getS(4, '');
  set color($core.String v) {
    $_setString(4, v);
  }

  $core.bool hasColor() => $_has(4);
  void clearColor() => clearField(5);

  $core.Map<$core.int, Feature> get features => $_getMap(5);
}

class NodeAddress extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NodeAddress',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'network')
    ..aOS(2, 'addr')
    ..hasRequiredFields = false;

  NodeAddress._() : super();
  factory NodeAddress() => create();
  factory NodeAddress.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NodeAddress.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NodeAddress clone() => NodeAddress()..mergeFromMessage(this);
  NodeAddress copyWith(void Function(NodeAddress) updates) =>
      super.copyWith((message) => updates(message as NodeAddress));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeAddress create() => NodeAddress._();
  NodeAddress createEmptyInstance() => create();
  static $pb.PbList<NodeAddress> createRepeated() => $pb.PbList<NodeAddress>();
  static NodeAddress getDefault() => _defaultInstance ??= create()..freeze();
  static NodeAddress _defaultInstance;

  $core.String get network => $_getS(0, '');
  set network($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasNetwork() => $_has(0);
  void clearNetwork() => clearField(1);

  $core.String get addr => $_getS(1, '');
  set addr($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasAddr() => $_has(1);
  void clearAddr() => clearField(2);
}

class RoutingPolicy extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RoutingPolicy',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, 'time_lock_delta', $pb.PbFieldType.OU3)
    ..aInt64(2, 'min_htlc')
    ..aInt64(3, 'fee_base_msat')
    ..aInt64(4, 'fee_rate_milli_msat')
    ..aOB(5, 'disabled')
    ..a<Int64>(6, 'max_htlc_msat', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<$core.int>(7, 'last_update', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  RoutingPolicy._() : super();
  factory RoutingPolicy() => create();
  factory RoutingPolicy.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RoutingPolicy.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  RoutingPolicy clone() => RoutingPolicy()..mergeFromMessage(this);
  RoutingPolicy copyWith(void Function(RoutingPolicy) updates) =>
      super.copyWith((message) => updates(message as RoutingPolicy));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RoutingPolicy create() => RoutingPolicy._();
  RoutingPolicy createEmptyInstance() => create();
  static $pb.PbList<RoutingPolicy> createRepeated() =>
      $pb.PbList<RoutingPolicy>();
  static RoutingPolicy getDefault() => _defaultInstance ??= create()..freeze();
  static RoutingPolicy _defaultInstance;

  $core.int get timeLockDelta => $_get(0, 0);
  set timeLockDelta($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  $core.bool hasTimeLockDelta() => $_has(0);
  void clearTimeLockDelta() => clearField(1);

  Int64 get minHtlc => $_getI64(1);
  set minHtlc(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasMinHtlc() => $_has(1);
  void clearMinHtlc() => clearField(2);

  Int64 get feeBaseMsat => $_getI64(2);
  set feeBaseMsat(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasFeeBaseMsat() => $_has(2);
  void clearFeeBaseMsat() => clearField(3);

  Int64 get feeRateMilliMsat => $_getI64(3);
  set feeRateMilliMsat(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasFeeRateMilliMsat() => $_has(3);
  void clearFeeRateMilliMsat() => clearField(4);

  $core.bool get disabled => $_get(4, false);
  set disabled($core.bool v) {
    $_setBool(4, v);
  }

  $core.bool hasDisabled() => $_has(4);
  void clearDisabled() => clearField(5);

  Int64 get maxHtlcMsat => $_getI64(5);
  set maxHtlcMsat(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasMaxHtlcMsat() => $_has(5);
  void clearMaxHtlcMsat() => clearField(6);

  $core.int get lastUpdate => $_get(6, 0);
  set lastUpdate($core.int v) {
    $_setUnsignedInt32(6, v);
  }

  $core.bool hasLastUpdate() => $_has(6);
  void clearLastUpdate() => clearField(7);
}

class ChannelEdge extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelEdge',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<Int64>(1, 'channel_id', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..aOS(2, 'chan_point')
    ..a<$core.int>(3, 'last_update', $pb.PbFieldType.OU3)
    ..aOS(4, 'node1_pub')
    ..aOS(5, 'node2_pub')
    ..aInt64(6, 'capacity')
    ..a<RoutingPolicy>(7, 'node1_policy', $pb.PbFieldType.OM,
        defaultOrMaker: RoutingPolicy.getDefault,
        subBuilder: RoutingPolicy.create)
    ..a<RoutingPolicy>(8, 'node2_policy', $pb.PbFieldType.OM,
        defaultOrMaker: RoutingPolicy.getDefault,
        subBuilder: RoutingPolicy.create)
    ..hasRequiredFields = false;

  ChannelEdge._() : super();
  factory ChannelEdge() => create();
  factory ChannelEdge.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelEdge.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelEdge clone() => ChannelEdge()..mergeFromMessage(this);
  ChannelEdge copyWith(void Function(ChannelEdge) updates) =>
      super.copyWith((message) => updates(message as ChannelEdge));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelEdge create() => ChannelEdge._();
  ChannelEdge createEmptyInstance() => create();
  static $pb.PbList<ChannelEdge> createRepeated() => $pb.PbList<ChannelEdge>();
  static ChannelEdge getDefault() => _defaultInstance ??= create()..freeze();
  static ChannelEdge _defaultInstance;

  Int64 get channelId => $_getI64(0);
  set channelId(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasChannelId() => $_has(0);
  void clearChannelId() => clearField(1);

  $core.String get chanPoint => $_getS(1, '');
  set chanPoint($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasChanPoint() => $_has(1);
  void clearChanPoint() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  $core.int get lastUpdate => $_get(2, 0);
  @$core.Deprecated('This field is deprecated.')
  set lastUpdate($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasLastUpdate() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  void clearLastUpdate() => clearField(3);

  $core.String get node1Pub => $_getS(3, '');
  set node1Pub($core.String v) {
    $_setString(3, v);
  }

  $core.bool hasNode1Pub() => $_has(3);
  void clearNode1Pub() => clearField(4);

  $core.String get node2Pub => $_getS(4, '');
  set node2Pub($core.String v) {
    $_setString(4, v);
  }

  $core.bool hasNode2Pub() => $_has(4);
  void clearNode2Pub() => clearField(5);

  Int64 get capacity => $_getI64(5);
  set capacity(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasCapacity() => $_has(5);
  void clearCapacity() => clearField(6);

  RoutingPolicy get node1Policy => $_getN(6);
  set node1Policy(RoutingPolicy v) {
    setField(7, v);
  }

  $core.bool hasNode1Policy() => $_has(6);
  void clearNode1Policy() => clearField(7);

  RoutingPolicy get node2Policy => $_getN(7);
  set node2Policy(RoutingPolicy v) {
    setField(8, v);
  }

  $core.bool hasNode2Policy() => $_has(7);
  void clearNode2Policy() => clearField(8);
}

class ChannelGraphRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelGraphRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOB(1, 'include_unannounced')
    ..hasRequiredFields = false;

  ChannelGraphRequest._() : super();
  factory ChannelGraphRequest() => create();
  factory ChannelGraphRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelGraphRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelGraphRequest clone() => ChannelGraphRequest()..mergeFromMessage(this);
  ChannelGraphRequest copyWith(void Function(ChannelGraphRequest) updates) =>
      super.copyWith((message) => updates(message as ChannelGraphRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelGraphRequest create() => ChannelGraphRequest._();
  ChannelGraphRequest createEmptyInstance() => create();
  static $pb.PbList<ChannelGraphRequest> createRepeated() =>
      $pb.PbList<ChannelGraphRequest>();
  static ChannelGraphRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelGraphRequest _defaultInstance;

  $core.bool get includeUnannounced => $_get(0, false);
  set includeUnannounced($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasIncludeUnannounced() => $_has(0);
  void clearIncludeUnannounced() => clearField(1);
}

class ChannelGraph extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelGraph',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<LightningNode>(1, 'nodes', $pb.PbFieldType.PM,
        subBuilder: LightningNode.create)
    ..pc<ChannelEdge>(2, 'edges', $pb.PbFieldType.PM,
        subBuilder: ChannelEdge.create)
    ..hasRequiredFields = false;

  ChannelGraph._() : super();
  factory ChannelGraph() => create();
  factory ChannelGraph.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelGraph.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelGraph clone() => ChannelGraph()..mergeFromMessage(this);
  ChannelGraph copyWith(void Function(ChannelGraph) updates) =>
      super.copyWith((message) => updates(message as ChannelGraph));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelGraph create() => ChannelGraph._();
  ChannelGraph createEmptyInstance() => create();
  static $pb.PbList<ChannelGraph> createRepeated() =>
      $pb.PbList<ChannelGraph>();
  static ChannelGraph getDefault() => _defaultInstance ??= create()..freeze();
  static ChannelGraph _defaultInstance;

  $core.List<LightningNode> get nodes => $_getList(0);

  $core.List<ChannelEdge> get edges => $_getList(1);
}

class ChanInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChanInfoRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<Int64>(1, 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..hasRequiredFields = false;

  ChanInfoRequest._() : super();
  factory ChanInfoRequest() => create();
  factory ChanInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChanInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChanInfoRequest clone() => ChanInfoRequest()..mergeFromMessage(this);
  ChanInfoRequest copyWith(void Function(ChanInfoRequest) updates) =>
      super.copyWith((message) => updates(message as ChanInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChanInfoRequest create() => ChanInfoRequest._();
  ChanInfoRequest createEmptyInstance() => create();
  static $pb.PbList<ChanInfoRequest> createRepeated() =>
      $pb.PbList<ChanInfoRequest>();
  static ChanInfoRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChanInfoRequest _defaultInstance;

  Int64 get chanId => $_getI64(0);
  set chanId(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasChanId() => $_has(0);
  void clearChanId() => clearField(1);
}

class NetworkInfoRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NetworkInfoRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  NetworkInfoRequest._() : super();
  factory NetworkInfoRequest() => create();
  factory NetworkInfoRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NetworkInfoRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NetworkInfoRequest clone() => NetworkInfoRequest()..mergeFromMessage(this);
  NetworkInfoRequest copyWith(void Function(NetworkInfoRequest) updates) =>
      super.copyWith((message) => updates(message as NetworkInfoRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NetworkInfoRequest create() => NetworkInfoRequest._();
  NetworkInfoRequest createEmptyInstance() => create();
  static $pb.PbList<NetworkInfoRequest> createRepeated() =>
      $pb.PbList<NetworkInfoRequest>();
  static NetworkInfoRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static NetworkInfoRequest _defaultInstance;
}

class NetworkInfo extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NetworkInfo',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.int>(1, 'graph_diameter', $pb.PbFieldType.OU3)
    ..a<$core.double>(2, 'avg_out_degree', $pb.PbFieldType.OD)
    ..a<$core.int>(3, 'max_out_degree', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'num_nodes', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'num_channels', $pb.PbFieldType.OU3)
    ..aInt64(6, 'total_network_capacity')
    ..a<$core.double>(7, 'avg_channel_size', $pb.PbFieldType.OD)
    ..aInt64(8, 'min_channel_size')
    ..aInt64(9, 'max_channel_size')
    ..aInt64(10, 'median_channel_size_sat')
    ..a<Int64>(11, 'num_zombie_chans', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..hasRequiredFields = false;

  NetworkInfo._() : super();
  factory NetworkInfo() => create();
  factory NetworkInfo.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NetworkInfo.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NetworkInfo clone() => NetworkInfo()..mergeFromMessage(this);
  NetworkInfo copyWith(void Function(NetworkInfo) updates) =>
      super.copyWith((message) => updates(message as NetworkInfo));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NetworkInfo create() => NetworkInfo._();
  NetworkInfo createEmptyInstance() => create();
  static $pb.PbList<NetworkInfo> createRepeated() => $pb.PbList<NetworkInfo>();
  static NetworkInfo getDefault() => _defaultInstance ??= create()..freeze();
  static NetworkInfo _defaultInstance;

  $core.int get graphDiameter => $_get(0, 0);
  set graphDiameter($core.int v) {
    $_setUnsignedInt32(0, v);
  }

  $core.bool hasGraphDiameter() => $_has(0);
  void clearGraphDiameter() => clearField(1);

  $core.double get avgOutDegree => $_getN(1);
  set avgOutDegree($core.double v) {
    $_setDouble(1, v);
  }

  $core.bool hasAvgOutDegree() => $_has(1);
  void clearAvgOutDegree() => clearField(2);

  $core.int get maxOutDegree => $_get(2, 0);
  set maxOutDegree($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  $core.bool hasMaxOutDegree() => $_has(2);
  void clearMaxOutDegree() => clearField(3);

  $core.int get numNodes => $_get(3, 0);
  set numNodes($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  $core.bool hasNumNodes() => $_has(3);
  void clearNumNodes() => clearField(4);

  $core.int get numChannels => $_get(4, 0);
  set numChannels($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  $core.bool hasNumChannels() => $_has(4);
  void clearNumChannels() => clearField(5);

  Int64 get totalNetworkCapacity => $_getI64(5);
  set totalNetworkCapacity(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasTotalNetworkCapacity() => $_has(5);
  void clearTotalNetworkCapacity() => clearField(6);

  $core.double get avgChannelSize => $_getN(6);
  set avgChannelSize($core.double v) {
    $_setDouble(6, v);
  }

  $core.bool hasAvgChannelSize() => $_has(6);
  void clearAvgChannelSize() => clearField(7);

  Int64 get minChannelSize => $_getI64(7);
  set minChannelSize(Int64 v) {
    $_setInt64(7, v);
  }

  $core.bool hasMinChannelSize() => $_has(7);
  void clearMinChannelSize() => clearField(8);

  Int64 get maxChannelSize => $_getI64(8);
  set maxChannelSize(Int64 v) {
    $_setInt64(8, v);
  }

  $core.bool hasMaxChannelSize() => $_has(8);
  void clearMaxChannelSize() => clearField(9);

  Int64 get medianChannelSizeSat => $_getI64(9);
  set medianChannelSizeSat(Int64 v) {
    $_setInt64(9, v);
  }

  $core.bool hasMedianChannelSizeSat() => $_has(9);
  void clearMedianChannelSizeSat() => clearField(10);

  Int64 get numZombieChans => $_getI64(10);
  set numZombieChans(Int64 v) {
    $_setInt64(10, v);
  }

  $core.bool hasNumZombieChans() => $_has(10);
  void clearNumZombieChans() => clearField(11);
}

class StopRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StopRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  StopRequest._() : super();
  factory StopRequest() => create();
  factory StopRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StopRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StopRequest clone() => StopRequest()..mergeFromMessage(this);
  StopRequest copyWith(void Function(StopRequest) updates) =>
      super.copyWith((message) => updates(message as StopRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StopRequest create() => StopRequest._();
  StopRequest createEmptyInstance() => create();
  static $pb.PbList<StopRequest> createRepeated() => $pb.PbList<StopRequest>();
  static StopRequest getDefault() => _defaultInstance ??= create()..freeze();
  static StopRequest _defaultInstance;
}

class StopResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('StopResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  StopResponse._() : super();
  factory StopResponse() => create();
  factory StopResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory StopResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  StopResponse clone() => StopResponse()..mergeFromMessage(this);
  StopResponse copyWith(void Function(StopResponse) updates) =>
      super.copyWith((message) => updates(message as StopResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static StopResponse create() => StopResponse._();
  StopResponse createEmptyInstance() => create();
  static $pb.PbList<StopResponse> createRepeated() =>
      $pb.PbList<StopResponse>();
  static StopResponse getDefault() => _defaultInstance ??= create()..freeze();
  static StopResponse _defaultInstance;
}

class GraphTopologySubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GraphTopologySubscription',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  GraphTopologySubscription._() : super();
  factory GraphTopologySubscription() => create();
  factory GraphTopologySubscription.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GraphTopologySubscription.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GraphTopologySubscription clone() =>
      GraphTopologySubscription()..mergeFromMessage(this);
  GraphTopologySubscription copyWith(
          void Function(GraphTopologySubscription) updates) =>
      super
          .copyWith((message) => updates(message as GraphTopologySubscription));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GraphTopologySubscription create() => GraphTopologySubscription._();
  GraphTopologySubscription createEmptyInstance() => create();
  static $pb.PbList<GraphTopologySubscription> createRepeated() =>
      $pb.PbList<GraphTopologySubscription>();
  static GraphTopologySubscription getDefault() =>
      _defaultInstance ??= create()..freeze();
  static GraphTopologySubscription _defaultInstance;
}

class GraphTopologyUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('GraphTopologyUpdate',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<NodeUpdate>(1, 'nodeUpdates', $pb.PbFieldType.PM,
        subBuilder: NodeUpdate.create)
    ..pc<ChannelEdgeUpdate>(2, 'channelUpdates', $pb.PbFieldType.PM,
        subBuilder: ChannelEdgeUpdate.create)
    ..pc<ClosedChannelUpdate>(3, 'closedChans', $pb.PbFieldType.PM,
        subBuilder: ClosedChannelUpdate.create)
    ..hasRequiredFields = false;

  GraphTopologyUpdate._() : super();
  factory GraphTopologyUpdate() => create();
  factory GraphTopologyUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory GraphTopologyUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  GraphTopologyUpdate clone() => GraphTopologyUpdate()..mergeFromMessage(this);
  GraphTopologyUpdate copyWith(void Function(GraphTopologyUpdate) updates) =>
      super.copyWith((message) => updates(message as GraphTopologyUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static GraphTopologyUpdate create() => GraphTopologyUpdate._();
  GraphTopologyUpdate createEmptyInstance() => create();
  static $pb.PbList<GraphTopologyUpdate> createRepeated() =>
      $pb.PbList<GraphTopologyUpdate>();
  static GraphTopologyUpdate getDefault() =>
      _defaultInstance ??= create()..freeze();
  static GraphTopologyUpdate _defaultInstance;

  $core.List<NodeUpdate> get nodeUpdates => $_getList(0);

  $core.List<ChannelEdgeUpdate> get channelUpdates => $_getList(1);

  $core.List<ClosedChannelUpdate> get closedChans => $_getList(2);
}

class NodeUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('NodeUpdate',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pPS(1, 'addresses')
    ..aOS(2, 'identityKey')
    ..a<$core.List<$core.int>>(3, 'globalFeatures', $pb.PbFieldType.OY)
    ..aOS(4, 'alias')
    ..aOS(5, 'color')
    ..hasRequiredFields = false;

  NodeUpdate._() : super();
  factory NodeUpdate() => create();
  factory NodeUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory NodeUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  NodeUpdate clone() => NodeUpdate()..mergeFromMessage(this);
  NodeUpdate copyWith(void Function(NodeUpdate) updates) =>
      super.copyWith((message) => updates(message as NodeUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static NodeUpdate create() => NodeUpdate._();
  NodeUpdate createEmptyInstance() => create();
  static $pb.PbList<NodeUpdate> createRepeated() => $pb.PbList<NodeUpdate>();
  static NodeUpdate getDefault() => _defaultInstance ??= create()..freeze();
  static NodeUpdate _defaultInstance;

  $core.List<$core.String> get addresses => $_getList(0);

  $core.String get identityKey => $_getS(1, '');
  set identityKey($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasIdentityKey() => $_has(1);
  void clearIdentityKey() => clearField(2);

  $core.List<$core.int> get globalFeatures => $_getN(2);
  set globalFeatures($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  $core.bool hasGlobalFeatures() => $_has(2);
  void clearGlobalFeatures() => clearField(3);

  $core.String get alias => $_getS(3, '');
  set alias($core.String v) {
    $_setString(3, v);
  }

  $core.bool hasAlias() => $_has(3);
  void clearAlias() => clearField(4);

  $core.String get color => $_getS(4, '');
  set color($core.String v) {
    $_setString(4, v);
  }

  $core.bool hasColor() => $_has(4);
  void clearColor() => clearField(5);
}

class ChannelEdgeUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelEdgeUpdate',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<Int64>(1, 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<ChannelPoint>(2, 'chanPoint', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelPoint.getDefault,
        subBuilder: ChannelPoint.create)
    ..aInt64(3, 'capacity')
    ..a<RoutingPolicy>(4, 'routingPolicy', $pb.PbFieldType.OM,
        defaultOrMaker: RoutingPolicy.getDefault,
        subBuilder: RoutingPolicy.create)
    ..aOS(5, 'advertisingNode')
    ..aOS(6, 'connectingNode')
    ..hasRequiredFields = false;

  ChannelEdgeUpdate._() : super();
  factory ChannelEdgeUpdate() => create();
  factory ChannelEdgeUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelEdgeUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelEdgeUpdate clone() => ChannelEdgeUpdate()..mergeFromMessage(this);
  ChannelEdgeUpdate copyWith(void Function(ChannelEdgeUpdate) updates) =>
      super.copyWith((message) => updates(message as ChannelEdgeUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelEdgeUpdate create() => ChannelEdgeUpdate._();
  ChannelEdgeUpdate createEmptyInstance() => create();
  static $pb.PbList<ChannelEdgeUpdate> createRepeated() =>
      $pb.PbList<ChannelEdgeUpdate>();
  static ChannelEdgeUpdate getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelEdgeUpdate _defaultInstance;

  Int64 get chanId => $_getI64(0);
  set chanId(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasChanId() => $_has(0);
  void clearChanId() => clearField(1);

  ChannelPoint get chanPoint => $_getN(1);
  set chanPoint(ChannelPoint v) {
    setField(2, v);
  }

  $core.bool hasChanPoint() => $_has(1);
  void clearChanPoint() => clearField(2);

  Int64 get capacity => $_getI64(2);
  set capacity(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasCapacity() => $_has(2);
  void clearCapacity() => clearField(3);

  RoutingPolicy get routingPolicy => $_getN(3);
  set routingPolicy(RoutingPolicy v) {
    setField(4, v);
  }

  $core.bool hasRoutingPolicy() => $_has(3);
  void clearRoutingPolicy() => clearField(4);

  $core.String get advertisingNode => $_getS(4, '');
  set advertisingNode($core.String v) {
    $_setString(4, v);
  }

  $core.bool hasAdvertisingNode() => $_has(4);
  void clearAdvertisingNode() => clearField(5);

  $core.String get connectingNode => $_getS(5, '');
  set connectingNode($core.String v) {
    $_setString(5, v);
  }

  $core.bool hasConnectingNode() => $_has(5);
  void clearConnectingNode() => clearField(6);
}

class ClosedChannelUpdate extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ClosedChannelUpdate',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<Int64>(1, 'chanId', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..aInt64(2, 'capacity')
    ..a<$core.int>(3, 'closedHeight', $pb.PbFieldType.OU3)
    ..a<ChannelPoint>(4, 'chanPoint', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelPoint.getDefault,
        subBuilder: ChannelPoint.create)
    ..hasRequiredFields = false;

  ClosedChannelUpdate._() : super();
  factory ClosedChannelUpdate() => create();
  factory ClosedChannelUpdate.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ClosedChannelUpdate.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ClosedChannelUpdate clone() => ClosedChannelUpdate()..mergeFromMessage(this);
  ClosedChannelUpdate copyWith(void Function(ClosedChannelUpdate) updates) =>
      super.copyWith((message) => updates(message as ClosedChannelUpdate));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ClosedChannelUpdate create() => ClosedChannelUpdate._();
  ClosedChannelUpdate createEmptyInstance() => create();
  static $pb.PbList<ClosedChannelUpdate> createRepeated() =>
      $pb.PbList<ClosedChannelUpdate>();
  static ClosedChannelUpdate getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ClosedChannelUpdate _defaultInstance;

  Int64 get chanId => $_getI64(0);
  set chanId(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasChanId() => $_has(0);
  void clearChanId() => clearField(1);

  Int64 get capacity => $_getI64(1);
  set capacity(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasCapacity() => $_has(1);
  void clearCapacity() => clearField(2);

  $core.int get closedHeight => $_get(2, 0);
  set closedHeight($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  $core.bool hasClosedHeight() => $_has(2);
  void clearClosedHeight() => clearField(3);

  ChannelPoint get chanPoint => $_getN(3);
  set chanPoint(ChannelPoint v) {
    setField(4, v);
  }

  $core.bool hasChanPoint() => $_has(3);
  void clearChanPoint() => clearField(4);
}

class HopHint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HopHint',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'node_id')
    ..a<Int64>(2, 'chan_id', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<$core.int>(3, 'fee_base_msat', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'fee_proportional_millionths', $pb.PbFieldType.OU3)
    ..a<$core.int>(5, 'cltv_expiry_delta', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  HopHint._() : super();
  factory HopHint() => create();
  factory HopHint.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HopHint.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  HopHint clone() => HopHint()..mergeFromMessage(this);
  HopHint copyWith(void Function(HopHint) updates) =>
      super.copyWith((message) => updates(message as HopHint));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HopHint create() => HopHint._();
  HopHint createEmptyInstance() => create();
  static $pb.PbList<HopHint> createRepeated() => $pb.PbList<HopHint>();
  static HopHint getDefault() => _defaultInstance ??= create()..freeze();
  static HopHint _defaultInstance;

  $core.String get nodeId => $_getS(0, '');
  set nodeId($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasNodeId() => $_has(0);
  void clearNodeId() => clearField(1);

  Int64 get chanId => $_getI64(1);
  set chanId(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasChanId() => $_has(1);
  void clearChanId() => clearField(2);

  $core.int get feeBaseMsat => $_get(2, 0);
  set feeBaseMsat($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  $core.bool hasFeeBaseMsat() => $_has(2);
  void clearFeeBaseMsat() => clearField(3);

  $core.int get feeProportionalMillionths => $_get(3, 0);
  set feeProportionalMillionths($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  $core.bool hasFeeProportionalMillionths() => $_has(3);
  void clearFeeProportionalMillionths() => clearField(4);

  $core.int get cltvExpiryDelta => $_get(4, 0);
  set cltvExpiryDelta($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  $core.bool hasCltvExpiryDelta() => $_has(4);
  void clearCltvExpiryDelta() => clearField(5);
}

class RouteHint extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RouteHint',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<HopHint>(1, 'hop_hints', $pb.PbFieldType.PM,
        subBuilder: HopHint.create)
    ..hasRequiredFields = false;

  RouteHint._() : super();
  factory RouteHint() => create();
  factory RouteHint.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RouteHint.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  RouteHint clone() => RouteHint()..mergeFromMessage(this);
  RouteHint copyWith(void Function(RouteHint) updates) =>
      super.copyWith((message) => updates(message as RouteHint));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RouteHint create() => RouteHint._();
  RouteHint createEmptyInstance() => create();
  static $pb.PbList<RouteHint> createRepeated() => $pb.PbList<RouteHint>();
  static RouteHint getDefault() => _defaultInstance ??= create()..freeze();
  static RouteHint _defaultInstance;

  $core.List<HopHint> get hopHints => $_getList(0);
}

class Invoice extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Invoice',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'memo')
    ..a<$core.List<$core.int>>(3, 'r_preimage', $pb.PbFieldType.OY)
    ..a<$core.List<$core.int>>(4, 'r_hash', $pb.PbFieldType.OY)
    ..aInt64(5, 'value')
    ..aOB(6, 'settled')
    ..aInt64(7, 'creation_date')
    ..aInt64(8, 'settle_date')
    ..aOS(9, 'payment_request')
    ..a<$core.List<$core.int>>(10, 'description_hash', $pb.PbFieldType.OY)
    ..aInt64(11, 'expiry')
    ..aOS(12, 'fallback_addr')
    ..a<Int64>(13, 'cltv_expiry', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..pc<RouteHint>(14, 'route_hints', $pb.PbFieldType.PM,
        subBuilder: RouteHint.create)
    ..aOB(15, 'private')
    ..a<Int64>(16, 'add_index', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(17, 'settle_index', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..aInt64(18, 'amt_paid')
    ..aInt64(19, 'amt_paid_sat')
    ..aInt64(20, 'amt_paid_msat')
    ..e<Invoice_InvoiceState>(21, 'state', $pb.PbFieldType.OE,
        defaultOrMaker: Invoice_InvoiceState.OPEN,
        valueOf: Invoice_InvoiceState.valueOf,
        enumValues: Invoice_InvoiceState.values)
    ..pc<InvoiceHTLC>(22, 'htlcs', $pb.PbFieldType.PM,
        subBuilder: InvoiceHTLC.create)
    ..aInt64(23, 'value_msat')
    ..m<$core.int, Feature>(24, 'features',
        entryClassName: 'Invoice.FeaturesEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Feature.create,
        packageName: const $pb.PackageName('lnrpc'))
    ..aOB(25, 'is_key_send')
    ..hasRequiredFields = false;

  Invoice._() : super();
  factory Invoice() => create();
  factory Invoice.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Invoice.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Invoice clone() => Invoice()..mergeFromMessage(this);
  Invoice copyWith(void Function(Invoice) updates) =>
      super.copyWith((message) => updates(message as Invoice));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Invoice create() => Invoice._();
  Invoice createEmptyInstance() => create();
  static $pb.PbList<Invoice> createRepeated() => $pb.PbList<Invoice>();
  static Invoice getDefault() => _defaultInstance ??= create()..freeze();
  static Invoice _defaultInstance;

  $core.String get memo => $_getS(0, '');
  set memo($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasMemo() => $_has(0);
  void clearMemo() => clearField(1);

  $core.List<$core.int> get rPreimage => $_getN(1);
  set rPreimage($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasRPreimage() => $_has(1);
  void clearRPreimage() => clearField(3);

  $core.List<$core.int> get rHash => $_getN(2);
  set rHash($core.List<$core.int> v) {
    $_setBytes(2, v);
  }

  $core.bool hasRHash() => $_has(2);
  void clearRHash() => clearField(4);

  Int64 get value => $_getI64(3);
  set value(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasValue() => $_has(3);
  void clearValue() => clearField(5);

  @$core.Deprecated('This field is deprecated.')
  $core.bool get settled => $_get(4, false);
  @$core.Deprecated('This field is deprecated.')
  set settled($core.bool v) {
    $_setBool(4, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasSettled() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  void clearSettled() => clearField(6);

  Int64 get creationDate => $_getI64(5);
  set creationDate(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasCreationDate() => $_has(5);
  void clearCreationDate() => clearField(7);

  Int64 get settleDate => $_getI64(6);
  set settleDate(Int64 v) {
    $_setInt64(6, v);
  }

  $core.bool hasSettleDate() => $_has(6);
  void clearSettleDate() => clearField(8);

  $core.String get paymentRequest => $_getS(7, '');
  set paymentRequest($core.String v) {
    $_setString(7, v);
  }

  $core.bool hasPaymentRequest() => $_has(7);
  void clearPaymentRequest() => clearField(9);

  $core.List<$core.int> get descriptionHash => $_getN(8);
  set descriptionHash($core.List<$core.int> v) {
    $_setBytes(8, v);
  }

  $core.bool hasDescriptionHash() => $_has(8);
  void clearDescriptionHash() => clearField(10);

  Int64 get expiry => $_getI64(9);
  set expiry(Int64 v) {
    $_setInt64(9, v);
  }

  $core.bool hasExpiry() => $_has(9);
  void clearExpiry() => clearField(11);

  $core.String get fallbackAddr => $_getS(10, '');
  set fallbackAddr($core.String v) {
    $_setString(10, v);
  }

  $core.bool hasFallbackAddr() => $_has(10);
  void clearFallbackAddr() => clearField(12);

  Int64 get cltvExpiry => $_getI64(11);
  set cltvExpiry(Int64 v) {
    $_setInt64(11, v);
  }

  $core.bool hasCltvExpiry() => $_has(11);
  void clearCltvExpiry() => clearField(13);

  $core.List<RouteHint> get routeHints => $_getList(12);

  $core.bool get private => $_get(13, false);
  set private($core.bool v) {
    $_setBool(13, v);
  }

  $core.bool hasPrivate() => $_has(13);
  void clearPrivate() => clearField(15);

  Int64 get addIndex => $_getI64(14);
  set addIndex(Int64 v) {
    $_setInt64(14, v);
  }

  $core.bool hasAddIndex() => $_has(14);
  void clearAddIndex() => clearField(16);

  Int64 get settleIndex => $_getI64(15);
  set settleIndex(Int64 v) {
    $_setInt64(15, v);
  }

  $core.bool hasSettleIndex() => $_has(15);
  void clearSettleIndex() => clearField(17);

  @$core.Deprecated('This field is deprecated.')
  Int64 get amtPaid => $_getI64(16);
  @$core.Deprecated('This field is deprecated.')
  set amtPaid(Int64 v) {
    $_setInt64(16, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasAmtPaid() => $_has(16);
  @$core.Deprecated('This field is deprecated.')
  void clearAmtPaid() => clearField(18);

  Int64 get amtPaidSat => $_getI64(17);
  set amtPaidSat(Int64 v) {
    $_setInt64(17, v);
  }

  $core.bool hasAmtPaidSat() => $_has(17);
  void clearAmtPaidSat() => clearField(19);

  Int64 get amtPaidMsat => $_getI64(18);
  set amtPaidMsat(Int64 v) {
    $_setInt64(18, v);
  }

  $core.bool hasAmtPaidMsat() => $_has(18);
  void clearAmtPaidMsat() => clearField(20);

  Invoice_InvoiceState get state => $_getN(19);
  set state(Invoice_InvoiceState v) {
    setField(21, v);
  }

  $core.bool hasState() => $_has(19);
  void clearState() => clearField(21);

  $core.List<InvoiceHTLC> get htlcs => $_getList(20);

  Int64 get valueMsat => $_getI64(21);
  set valueMsat(Int64 v) {
    $_setInt64(21, v);
  }

  $core.bool hasValueMsat() => $_has(21);
  void clearValueMsat() => clearField(23);

  $core.Map<$core.int, Feature> get features => $_getMap(22);

  $core.bool get isKeySend => $_get(23, false);
  set isKeySend($core.bool v) {
    $_setBool(23, v);
  }

  $core.bool hasIsKeySend() => $_has(23);
  void clearIsKeySend() => clearField(25);
}

class InvoiceHTLC extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InvoiceHTLC',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<Int64>(1, 'chan_id', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(2, 'htlc_index', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(3, 'amt_msat', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<$core.int>(4, 'accept_height', $pb.PbFieldType.O3)
    ..aInt64(5, 'accept_time')
    ..aInt64(6, 'resolve_time')
    ..a<$core.int>(7, 'expiry_height', $pb.PbFieldType.O3)
    ..e<InvoiceHTLCState>(8, 'state', $pb.PbFieldType.OE,
        defaultOrMaker: InvoiceHTLCState.ACCEPTED,
        valueOf: InvoiceHTLCState.valueOf,
        enumValues: InvoiceHTLCState.values)
    ..m<Int64, $core.List<$core.int>>(9, 'custom_records',
        entryClassName: 'InvoiceHTLC.CustomRecordsEntry',
        keyFieldType: $pb.PbFieldType.OU6,
        valueFieldType: $pb.PbFieldType.OY,
        packageName: const $pb.PackageName('lnrpc'))
    ..a<Int64>(10, 'mpp_total_amt_msat', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..hasRequiredFields = false;

  InvoiceHTLC._() : super();
  factory InvoiceHTLC() => create();
  factory InvoiceHTLC.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvoiceHTLC.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  InvoiceHTLC clone() => InvoiceHTLC()..mergeFromMessage(this);
  InvoiceHTLC copyWith(void Function(InvoiceHTLC) updates) =>
      super.copyWith((message) => updates(message as InvoiceHTLC));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvoiceHTLC create() => InvoiceHTLC._();
  InvoiceHTLC createEmptyInstance() => create();
  static $pb.PbList<InvoiceHTLC> createRepeated() => $pb.PbList<InvoiceHTLC>();
  static InvoiceHTLC getDefault() => _defaultInstance ??= create()..freeze();
  static InvoiceHTLC _defaultInstance;

  Int64 get chanId => $_getI64(0);
  set chanId(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasChanId() => $_has(0);
  void clearChanId() => clearField(1);

  Int64 get htlcIndex => $_getI64(1);
  set htlcIndex(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasHtlcIndex() => $_has(1);
  void clearHtlcIndex() => clearField(2);

  Int64 get amtMsat => $_getI64(2);
  set amtMsat(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasAmtMsat() => $_has(2);
  void clearAmtMsat() => clearField(3);

  $core.int get acceptHeight => $_get(3, 0);
  set acceptHeight($core.int v) {
    $_setSignedInt32(3, v);
  }

  $core.bool hasAcceptHeight() => $_has(3);
  void clearAcceptHeight() => clearField(4);

  Int64 get acceptTime => $_getI64(4);
  set acceptTime(Int64 v) {
    $_setInt64(4, v);
  }

  $core.bool hasAcceptTime() => $_has(4);
  void clearAcceptTime() => clearField(5);

  Int64 get resolveTime => $_getI64(5);
  set resolveTime(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasResolveTime() => $_has(5);
  void clearResolveTime() => clearField(6);

  $core.int get expiryHeight => $_get(6, 0);
  set expiryHeight($core.int v) {
    $_setSignedInt32(6, v);
  }

  $core.bool hasExpiryHeight() => $_has(6);
  void clearExpiryHeight() => clearField(7);

  InvoiceHTLCState get state => $_getN(7);
  set state(InvoiceHTLCState v) {
    setField(8, v);
  }

  $core.bool hasState() => $_has(7);
  void clearState() => clearField(8);

  $core.Map<Int64, $core.List<$core.int>> get customRecords => $_getMap(8);

  Int64 get mppTotalAmtMsat => $_getI64(9);
  set mppTotalAmtMsat(Int64 v) {
    $_setInt64(9, v);
  }

  $core.bool hasMppTotalAmtMsat() => $_has(9);
  void clearMppTotalAmtMsat() => clearField(10);
}

class AddInvoiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AddInvoiceResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, 'r_hash', $pb.PbFieldType.OY)
    ..aOS(2, 'payment_request')
    ..a<Int64>(16, 'add_index', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..hasRequiredFields = false;

  AddInvoiceResponse._() : super();
  factory AddInvoiceResponse() => create();
  factory AddInvoiceResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AddInvoiceResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AddInvoiceResponse clone() => AddInvoiceResponse()..mergeFromMessage(this);
  AddInvoiceResponse copyWith(void Function(AddInvoiceResponse) updates) =>
      super.copyWith((message) => updates(message as AddInvoiceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AddInvoiceResponse create() => AddInvoiceResponse._();
  AddInvoiceResponse createEmptyInstance() => create();
  static $pb.PbList<AddInvoiceResponse> createRepeated() =>
      $pb.PbList<AddInvoiceResponse>();
  static AddInvoiceResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static AddInvoiceResponse _defaultInstance;

  $core.List<$core.int> get rHash => $_getN(0);
  set rHash($core.List<$core.int> v) {
    $_setBytes(0, v);
  }

  $core.bool hasRHash() => $_has(0);
  void clearRHash() => clearField(1);

  $core.String get paymentRequest => $_getS(1, '');
  set paymentRequest($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasPaymentRequest() => $_has(1);
  void clearPaymentRequest() => clearField(2);

  Int64 get addIndex => $_getI64(2);
  set addIndex(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasAddIndex() => $_has(2);
  void clearAddIndex() => clearField(16);
}

class PaymentHash extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PaymentHash',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'r_hash_str')
    ..a<$core.List<$core.int>>(2, 'r_hash', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  PaymentHash._() : super();
  factory PaymentHash() => create();
  factory PaymentHash.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PaymentHash.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PaymentHash clone() => PaymentHash()..mergeFromMessage(this);
  PaymentHash copyWith(void Function(PaymentHash) updates) =>
      super.copyWith((message) => updates(message as PaymentHash));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PaymentHash create() => PaymentHash._();
  PaymentHash createEmptyInstance() => create();
  static $pb.PbList<PaymentHash> createRepeated() => $pb.PbList<PaymentHash>();
  static PaymentHash getDefault() => _defaultInstance ??= create()..freeze();
  static PaymentHash _defaultInstance;

  @$core.Deprecated('This field is deprecated.')
  $core.String get rHashStr => $_getS(0, '');
  @$core.Deprecated('This field is deprecated.')
  set rHashStr($core.String v) {
    $_setString(0, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasRHashStr() => $_has(0);
  @$core.Deprecated('This field is deprecated.')
  void clearRHashStr() => clearField(1);

  $core.List<$core.int> get rHash => $_getN(1);
  set rHash($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasRHash() => $_has(1);
  void clearRHash() => clearField(2);
}

class ListInvoiceRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListInvoiceRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOB(1, 'pending_only')
    ..a<Int64>(4, 'index_offset', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<Int64>(5, 'num_max_invoices', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..aOB(6, 'reversed')
    ..hasRequiredFields = false;

  ListInvoiceRequest._() : super();
  factory ListInvoiceRequest() => create();
  factory ListInvoiceRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListInvoiceRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListInvoiceRequest clone() => ListInvoiceRequest()..mergeFromMessage(this);
  ListInvoiceRequest copyWith(void Function(ListInvoiceRequest) updates) =>
      super.copyWith((message) => updates(message as ListInvoiceRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInvoiceRequest create() => ListInvoiceRequest._();
  ListInvoiceRequest createEmptyInstance() => create();
  static $pb.PbList<ListInvoiceRequest> createRepeated() =>
      $pb.PbList<ListInvoiceRequest>();
  static ListInvoiceRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ListInvoiceRequest _defaultInstance;

  $core.bool get pendingOnly => $_get(0, false);
  set pendingOnly($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasPendingOnly() => $_has(0);
  void clearPendingOnly() => clearField(1);

  Int64 get indexOffset => $_getI64(1);
  set indexOffset(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasIndexOffset() => $_has(1);
  void clearIndexOffset() => clearField(4);

  Int64 get numMaxInvoices => $_getI64(2);
  set numMaxInvoices(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasNumMaxInvoices() => $_has(2);
  void clearNumMaxInvoices() => clearField(5);

  $core.bool get reversed => $_get(3, false);
  set reversed($core.bool v) {
    $_setBool(3, v);
  }

  $core.bool hasReversed() => $_has(3);
  void clearReversed() => clearField(6);
}

class ListInvoiceResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListInvoiceResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<Invoice>(1, 'invoices', $pb.PbFieldType.PM, subBuilder: Invoice.create)
    ..a<Int64>(2, 'last_index_offset', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<Int64>(3, 'first_index_offset', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..hasRequiredFields = false;

  ListInvoiceResponse._() : super();
  factory ListInvoiceResponse() => create();
  factory ListInvoiceResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListInvoiceResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListInvoiceResponse clone() => ListInvoiceResponse()..mergeFromMessage(this);
  ListInvoiceResponse copyWith(void Function(ListInvoiceResponse) updates) =>
      super.copyWith((message) => updates(message as ListInvoiceResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListInvoiceResponse create() => ListInvoiceResponse._();
  ListInvoiceResponse createEmptyInstance() => create();
  static $pb.PbList<ListInvoiceResponse> createRepeated() =>
      $pb.PbList<ListInvoiceResponse>();
  static ListInvoiceResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ListInvoiceResponse _defaultInstance;

  $core.List<Invoice> get invoices => $_getList(0);

  Int64 get lastIndexOffset => $_getI64(1);
  set lastIndexOffset(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasLastIndexOffset() => $_has(1);
  void clearLastIndexOffset() => clearField(2);

  Int64 get firstIndexOffset => $_getI64(2);
  set firstIndexOffset(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasFirstIndexOffset() => $_has(2);
  void clearFirstIndexOffset() => clearField(3);
}

class InvoiceSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('InvoiceSubscription',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<Int64>(1, 'add_index', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(2, 'settle_index', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..hasRequiredFields = false;

  InvoiceSubscription._() : super();
  factory InvoiceSubscription() => create();
  factory InvoiceSubscription.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory InvoiceSubscription.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  InvoiceSubscription clone() => InvoiceSubscription()..mergeFromMessage(this);
  InvoiceSubscription copyWith(void Function(InvoiceSubscription) updates) =>
      super.copyWith((message) => updates(message as InvoiceSubscription));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static InvoiceSubscription create() => InvoiceSubscription._();
  InvoiceSubscription createEmptyInstance() => create();
  static $pb.PbList<InvoiceSubscription> createRepeated() =>
      $pb.PbList<InvoiceSubscription>();
  static InvoiceSubscription getDefault() =>
      _defaultInstance ??= create()..freeze();
  static InvoiceSubscription _defaultInstance;

  Int64 get addIndex => $_getI64(0);
  set addIndex(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasAddIndex() => $_has(0);
  void clearAddIndex() => clearField(1);

  Int64 get settleIndex => $_getI64(1);
  set settleIndex(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasSettleIndex() => $_has(1);
  void clearSettleIndex() => clearField(2);
}

class Payment extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Payment',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'payment_hash')
    ..aInt64(2, 'value')
    ..aInt64(3, 'creation_date')
    ..pPS(4, 'path')
    ..aInt64(5, 'fee')
    ..aOS(6, 'payment_preimage')
    ..aInt64(7, 'value_sat')
    ..aInt64(8, 'value_msat')
    ..aOS(9, 'payment_request')
    ..e<Payment_PaymentStatus>(10, 'status', $pb.PbFieldType.OE,
        defaultOrMaker: Payment_PaymentStatus.UNKNOWN,
        valueOf: Payment_PaymentStatus.valueOf,
        enumValues: Payment_PaymentStatus.values)
    ..aInt64(11, 'fee_sat')
    ..aInt64(12, 'fee_msat')
    ..aInt64(13, 'creation_time_ns')
    ..pc<HTLCAttempt>(14, 'htlcs', $pb.PbFieldType.PM,
        subBuilder: HTLCAttempt.create)
    ..hasRequiredFields = false;

  Payment._() : super();
  factory Payment() => create();
  factory Payment.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Payment.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Payment clone() => Payment()..mergeFromMessage(this);
  Payment copyWith(void Function(Payment) updates) =>
      super.copyWith((message) => updates(message as Payment));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Payment create() => Payment._();
  Payment createEmptyInstance() => create();
  static $pb.PbList<Payment> createRepeated() => $pb.PbList<Payment>();
  static Payment getDefault() => _defaultInstance ??= create()..freeze();
  static Payment _defaultInstance;

  $core.String get paymentHash => $_getS(0, '');
  set paymentHash($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasPaymentHash() => $_has(0);
  void clearPaymentHash() => clearField(1);

  @$core.Deprecated('This field is deprecated.')
  Int64 get value => $_getI64(1);
  @$core.Deprecated('This field is deprecated.')
  set value(Int64 v) {
    $_setInt64(1, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasValue() => $_has(1);
  @$core.Deprecated('This field is deprecated.')
  void clearValue() => clearField(2);

  @$core.Deprecated('This field is deprecated.')
  Int64 get creationDate => $_getI64(2);
  @$core.Deprecated('This field is deprecated.')
  set creationDate(Int64 v) {
    $_setInt64(2, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasCreationDate() => $_has(2);
  @$core.Deprecated('This field is deprecated.')
  void clearCreationDate() => clearField(3);

  @$core.Deprecated('This field is deprecated.')
  $core.List<$core.String> get path => $_getList(3);

  @$core.Deprecated('This field is deprecated.')
  Int64 get fee => $_getI64(4);
  @$core.Deprecated('This field is deprecated.')
  set fee(Int64 v) {
    $_setInt64(4, v);
  }

  @$core.Deprecated('This field is deprecated.')
  $core.bool hasFee() => $_has(4);
  @$core.Deprecated('This field is deprecated.')
  void clearFee() => clearField(5);

  $core.String get paymentPreimage => $_getS(5, '');
  set paymentPreimage($core.String v) {
    $_setString(5, v);
  }

  $core.bool hasPaymentPreimage() => $_has(5);
  void clearPaymentPreimage() => clearField(6);

  Int64 get valueSat => $_getI64(6);
  set valueSat(Int64 v) {
    $_setInt64(6, v);
  }

  $core.bool hasValueSat() => $_has(6);
  void clearValueSat() => clearField(7);

  Int64 get valueMsat => $_getI64(7);
  set valueMsat(Int64 v) {
    $_setInt64(7, v);
  }

  $core.bool hasValueMsat() => $_has(7);
  void clearValueMsat() => clearField(8);

  $core.String get paymentRequest => $_getS(8, '');
  set paymentRequest($core.String v) {
    $_setString(8, v);
  }

  $core.bool hasPaymentRequest() => $_has(8);
  void clearPaymentRequest() => clearField(9);

  Payment_PaymentStatus get status => $_getN(9);
  set status(Payment_PaymentStatus v) {
    setField(10, v);
  }

  $core.bool hasStatus() => $_has(9);
  void clearStatus() => clearField(10);

  Int64 get feeSat => $_getI64(10);
  set feeSat(Int64 v) {
    $_setInt64(10, v);
  }

  $core.bool hasFeeSat() => $_has(10);
  void clearFeeSat() => clearField(11);

  Int64 get feeMsat => $_getI64(11);
  set feeMsat(Int64 v) {
    $_setInt64(11, v);
  }

  $core.bool hasFeeMsat() => $_has(11);
  void clearFeeMsat() => clearField(12);

  Int64 get creationTimeNs => $_getI64(12);
  set creationTimeNs(Int64 v) {
    $_setInt64(12, v);
  }

  $core.bool hasCreationTimeNs() => $_has(12);
  void clearCreationTimeNs() => clearField(13);

  $core.List<HTLCAttempt> get htlcs => $_getList(13);
}

class HTLCAttempt extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('HTLCAttempt',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..e<HTLCAttempt_HTLCStatus>(1, 'status', $pb.PbFieldType.OE,
        defaultOrMaker: HTLCAttempt_HTLCStatus.IN_FLIGHT,
        valueOf: HTLCAttempt_HTLCStatus.valueOf,
        enumValues: HTLCAttempt_HTLCStatus.values)
    ..a<Route>(2, 'route', $pb.PbFieldType.OM,
        defaultOrMaker: Route.getDefault, subBuilder: Route.create)
    ..aInt64(3, 'attempt_time_ns')
    ..aInt64(4, 'resolve_time_ns')
    ..hasRequiredFields = false;

  HTLCAttempt._() : super();
  factory HTLCAttempt() => create();
  factory HTLCAttempt.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory HTLCAttempt.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  HTLCAttempt clone() => HTLCAttempt()..mergeFromMessage(this);
  HTLCAttempt copyWith(void Function(HTLCAttempt) updates) =>
      super.copyWith((message) => updates(message as HTLCAttempt));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static HTLCAttempt create() => HTLCAttempt._();
  HTLCAttempt createEmptyInstance() => create();
  static $pb.PbList<HTLCAttempt> createRepeated() => $pb.PbList<HTLCAttempt>();
  static HTLCAttempt getDefault() => _defaultInstance ??= create()..freeze();
  static HTLCAttempt _defaultInstance;

  HTLCAttempt_HTLCStatus get status => $_getN(0);
  set status(HTLCAttempt_HTLCStatus v) {
    setField(1, v);
  }

  $core.bool hasStatus() => $_has(0);
  void clearStatus() => clearField(1);

  Route get route => $_getN(1);
  set route(Route v) {
    setField(2, v);
  }

  $core.bool hasRoute() => $_has(1);
  void clearRoute() => clearField(2);

  Int64 get attemptTimeNs => $_getI64(2);
  set attemptTimeNs(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasAttemptTimeNs() => $_has(2);
  void clearAttemptTimeNs() => clearField(3);

  Int64 get resolveTimeNs => $_getI64(3);
  set resolveTimeNs(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasResolveTimeNs() => $_has(3);
  void clearResolveTimeNs() => clearField(4);
}

class ListPaymentsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListPaymentsRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOB(1, 'includeIncomplete')
    ..hasRequiredFields = false;

  ListPaymentsRequest._() : super();
  factory ListPaymentsRequest() => create();
  factory ListPaymentsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPaymentsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListPaymentsRequest clone() => ListPaymentsRequest()..mergeFromMessage(this);
  ListPaymentsRequest copyWith(void Function(ListPaymentsRequest) updates) =>
      super.copyWith((message) => updates(message as ListPaymentsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPaymentsRequest create() => ListPaymentsRequest._();
  ListPaymentsRequest createEmptyInstance() => create();
  static $pb.PbList<ListPaymentsRequest> createRepeated() =>
      $pb.PbList<ListPaymentsRequest>();
  static ListPaymentsRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ListPaymentsRequest _defaultInstance;

  $core.bool get includeIncomplete => $_get(0, false);
  set includeIncomplete($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasIncludeIncomplete() => $_has(0);
  void clearIncludeIncomplete() => clearField(1);
}

class ListPaymentsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ListPaymentsResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<Payment>(1, 'payments', $pb.PbFieldType.PM, subBuilder: Payment.create)
    ..hasRequiredFields = false;

  ListPaymentsResponse._() : super();
  factory ListPaymentsResponse() => create();
  factory ListPaymentsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ListPaymentsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ListPaymentsResponse clone() =>
      ListPaymentsResponse()..mergeFromMessage(this);
  ListPaymentsResponse copyWith(void Function(ListPaymentsResponse) updates) =>
      super.copyWith((message) => updates(message as ListPaymentsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ListPaymentsResponse create() => ListPaymentsResponse._();
  ListPaymentsResponse createEmptyInstance() => create();
  static $pb.PbList<ListPaymentsResponse> createRepeated() =>
      $pb.PbList<ListPaymentsResponse>();
  static ListPaymentsResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ListPaymentsResponse _defaultInstance;

  $core.List<Payment> get payments => $_getList(0);
}

class DeleteAllPaymentsRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteAllPaymentsRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  DeleteAllPaymentsRequest._() : super();
  factory DeleteAllPaymentsRequest() => create();
  factory DeleteAllPaymentsRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteAllPaymentsRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteAllPaymentsRequest clone() =>
      DeleteAllPaymentsRequest()..mergeFromMessage(this);
  DeleteAllPaymentsRequest copyWith(
          void Function(DeleteAllPaymentsRequest) updates) =>
      super.copyWith((message) => updates(message as DeleteAllPaymentsRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAllPaymentsRequest create() => DeleteAllPaymentsRequest._();
  DeleteAllPaymentsRequest createEmptyInstance() => create();
  static $pb.PbList<DeleteAllPaymentsRequest> createRepeated() =>
      $pb.PbList<DeleteAllPaymentsRequest>();
  static DeleteAllPaymentsRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DeleteAllPaymentsRequest _defaultInstance;
}

class DeleteAllPaymentsResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DeleteAllPaymentsResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  DeleteAllPaymentsResponse._() : super();
  factory DeleteAllPaymentsResponse() => create();
  factory DeleteAllPaymentsResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DeleteAllPaymentsResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DeleteAllPaymentsResponse clone() =>
      DeleteAllPaymentsResponse()..mergeFromMessage(this);
  DeleteAllPaymentsResponse copyWith(
          void Function(DeleteAllPaymentsResponse) updates) =>
      super
          .copyWith((message) => updates(message as DeleteAllPaymentsResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DeleteAllPaymentsResponse create() => DeleteAllPaymentsResponse._();
  DeleteAllPaymentsResponse createEmptyInstance() => create();
  static $pb.PbList<DeleteAllPaymentsResponse> createRepeated() =>
      $pb.PbList<DeleteAllPaymentsResponse>();
  static DeleteAllPaymentsResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DeleteAllPaymentsResponse _defaultInstance;
}

class AbandonChannelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AbandonChannelRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<ChannelPoint>(1, 'channelPoint', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelPoint.getDefault,
        subBuilder: ChannelPoint.create)
    ..hasRequiredFields = false;

  AbandonChannelRequest._() : super();
  factory AbandonChannelRequest() => create();
  factory AbandonChannelRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AbandonChannelRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AbandonChannelRequest clone() =>
      AbandonChannelRequest()..mergeFromMessage(this);
  AbandonChannelRequest copyWith(
          void Function(AbandonChannelRequest) updates) =>
      super.copyWith((message) => updates(message as AbandonChannelRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AbandonChannelRequest create() => AbandonChannelRequest._();
  AbandonChannelRequest createEmptyInstance() => create();
  static $pb.PbList<AbandonChannelRequest> createRepeated() =>
      $pb.PbList<AbandonChannelRequest>();
  static AbandonChannelRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static AbandonChannelRequest _defaultInstance;

  ChannelPoint get channelPoint => $_getN(0);
  set channelPoint(ChannelPoint v) {
    setField(1, v);
  }

  $core.bool hasChannelPoint() => $_has(0);
  void clearChannelPoint() => clearField(1);
}

class AbandonChannelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('AbandonChannelResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  AbandonChannelResponse._() : super();
  factory AbandonChannelResponse() => create();
  factory AbandonChannelResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory AbandonChannelResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  AbandonChannelResponse clone() =>
      AbandonChannelResponse()..mergeFromMessage(this);
  AbandonChannelResponse copyWith(
          void Function(AbandonChannelResponse) updates) =>
      super.copyWith((message) => updates(message as AbandonChannelResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static AbandonChannelResponse create() => AbandonChannelResponse._();
  AbandonChannelResponse createEmptyInstance() => create();
  static $pb.PbList<AbandonChannelResponse> createRepeated() =>
      $pb.PbList<AbandonChannelResponse>();
  static AbandonChannelResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static AbandonChannelResponse _defaultInstance;
}

class DebugLevelRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DebugLevelRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOB(1, 'show')
    ..aOS(2, 'levelSpec')
    ..hasRequiredFields = false;

  DebugLevelRequest._() : super();
  factory DebugLevelRequest() => create();
  factory DebugLevelRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DebugLevelRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DebugLevelRequest clone() => DebugLevelRequest()..mergeFromMessage(this);
  DebugLevelRequest copyWith(void Function(DebugLevelRequest) updates) =>
      super.copyWith((message) => updates(message as DebugLevelRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DebugLevelRequest create() => DebugLevelRequest._();
  DebugLevelRequest createEmptyInstance() => create();
  static $pb.PbList<DebugLevelRequest> createRepeated() =>
      $pb.PbList<DebugLevelRequest>();
  static DebugLevelRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DebugLevelRequest _defaultInstance;

  $core.bool get show => $_get(0, false);
  set show($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasShow() => $_has(0);
  void clearShow() => clearField(1);

  $core.String get levelSpec => $_getS(1, '');
  set levelSpec($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasLevelSpec() => $_has(1);
  void clearLevelSpec() => clearField(2);
}

class DebugLevelResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('DebugLevelResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'sub_systems')
    ..hasRequiredFields = false;

  DebugLevelResponse._() : super();
  factory DebugLevelResponse() => create();
  factory DebugLevelResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory DebugLevelResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  DebugLevelResponse clone() => DebugLevelResponse()..mergeFromMessage(this);
  DebugLevelResponse copyWith(void Function(DebugLevelResponse) updates) =>
      super.copyWith((message) => updates(message as DebugLevelResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static DebugLevelResponse create() => DebugLevelResponse._();
  DebugLevelResponse createEmptyInstance() => create();
  static $pb.PbList<DebugLevelResponse> createRepeated() =>
      $pb.PbList<DebugLevelResponse>();
  static DebugLevelResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static DebugLevelResponse _defaultInstance;

  $core.String get subSystems => $_getS(0, '');
  set subSystems($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasSubSystems() => $_has(0);
  void clearSubSystems() => clearField(1);
}

class PayReqString extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PayReqString',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'payReq')
    ..hasRequiredFields = false;

  PayReqString._() : super();
  factory PayReqString() => create();
  factory PayReqString.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PayReqString.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PayReqString clone() => PayReqString()..mergeFromMessage(this);
  PayReqString copyWith(void Function(PayReqString) updates) =>
      super.copyWith((message) => updates(message as PayReqString));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PayReqString create() => PayReqString._();
  PayReqString createEmptyInstance() => create();
  static $pb.PbList<PayReqString> createRepeated() =>
      $pb.PbList<PayReqString>();
  static PayReqString getDefault() => _defaultInstance ??= create()..freeze();
  static PayReqString _defaultInstance;

  $core.String get payReq => $_getS(0, '');
  set payReq($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasPayReq() => $_has(0);
  void clearPayReq() => clearField(1);
}

class PayReq extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PayReq',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'destination')
    ..aOS(2, 'payment_hash')
    ..aInt64(3, 'num_satoshis')
    ..aInt64(4, 'timestamp')
    ..aInt64(5, 'expiry')
    ..aOS(6, 'description')
    ..aOS(7, 'description_hash')
    ..aOS(8, 'fallback_addr')
    ..aInt64(9, 'cltv_expiry')
    ..pc<RouteHint>(10, 'route_hints', $pb.PbFieldType.PM,
        subBuilder: RouteHint.create)
    ..a<$core.List<$core.int>>(11, 'payment_addr', $pb.PbFieldType.OY)
    ..aInt64(12, 'num_msat')
    ..m<$core.int, Feature>(13, 'features',
        entryClassName: 'PayReq.FeaturesEntry',
        keyFieldType: $pb.PbFieldType.OU3,
        valueFieldType: $pb.PbFieldType.OM,
        valueCreator: Feature.create,
        packageName: const $pb.PackageName('lnrpc'))
    ..hasRequiredFields = false;

  PayReq._() : super();
  factory PayReq() => create();
  factory PayReq.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PayReq.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PayReq clone() => PayReq()..mergeFromMessage(this);
  PayReq copyWith(void Function(PayReq) updates) =>
      super.copyWith((message) => updates(message as PayReq));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PayReq create() => PayReq._();
  PayReq createEmptyInstance() => create();
  static $pb.PbList<PayReq> createRepeated() => $pb.PbList<PayReq>();
  static PayReq getDefault() => _defaultInstance ??= create()..freeze();
  static PayReq _defaultInstance;

  $core.String get destination => $_getS(0, '');
  set destination($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasDestination() => $_has(0);
  void clearDestination() => clearField(1);

  $core.String get paymentHash => $_getS(1, '');
  set paymentHash($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasPaymentHash() => $_has(1);
  void clearPaymentHash() => clearField(2);

  Int64 get numSatoshis => $_getI64(2);
  set numSatoshis(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasNumSatoshis() => $_has(2);
  void clearNumSatoshis() => clearField(3);

  Int64 get timestamp => $_getI64(3);
  set timestamp(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasTimestamp() => $_has(3);
  void clearTimestamp() => clearField(4);

  Int64 get expiry => $_getI64(4);
  set expiry(Int64 v) {
    $_setInt64(4, v);
  }

  $core.bool hasExpiry() => $_has(4);
  void clearExpiry() => clearField(5);

  $core.String get description => $_getS(5, '');
  set description($core.String v) {
    $_setString(5, v);
  }

  $core.bool hasDescription() => $_has(5);
  void clearDescription() => clearField(6);

  $core.String get descriptionHash => $_getS(6, '');
  set descriptionHash($core.String v) {
    $_setString(6, v);
  }

  $core.bool hasDescriptionHash() => $_has(6);
  void clearDescriptionHash() => clearField(7);

  $core.String get fallbackAddr => $_getS(7, '');
  set fallbackAddr($core.String v) {
    $_setString(7, v);
  }

  $core.bool hasFallbackAddr() => $_has(7);
  void clearFallbackAddr() => clearField(8);

  Int64 get cltvExpiry => $_getI64(8);
  set cltvExpiry(Int64 v) {
    $_setInt64(8, v);
  }

  $core.bool hasCltvExpiry() => $_has(8);
  void clearCltvExpiry() => clearField(9);

  $core.List<RouteHint> get routeHints => $_getList(9);

  $core.List<$core.int> get paymentAddr => $_getN(10);
  set paymentAddr($core.List<$core.int> v) {
    $_setBytes(10, v);
  }

  $core.bool hasPaymentAddr() => $_has(10);
  void clearPaymentAddr() => clearField(11);

  Int64 get numMsat => $_getI64(11);
  set numMsat(Int64 v) {
    $_setInt64(11, v);
  }

  $core.bool hasNumMsat() => $_has(11);
  void clearNumMsat() => clearField(12);

  $core.Map<$core.int, Feature> get features => $_getMap(12);
}

class Feature extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('Feature',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(2, 'name')
    ..aOB(3, 'is_required')
    ..aOB(4, 'is_known')
    ..hasRequiredFields = false;

  Feature._() : super();
  factory Feature() => create();
  factory Feature.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory Feature.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  Feature clone() => Feature()..mergeFromMessage(this);
  Feature copyWith(void Function(Feature) updates) =>
      super.copyWith((message) => updates(message as Feature));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static Feature create() => Feature._();
  Feature createEmptyInstance() => create();
  static $pb.PbList<Feature> createRepeated() => $pb.PbList<Feature>();
  static Feature getDefault() => _defaultInstance ??= create()..freeze();
  static Feature _defaultInstance;

  $core.String get name => $_getS(0, '');
  set name($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasName() => $_has(0);
  void clearName() => clearField(2);

  $core.bool get isRequired => $_get(1, false);
  set isRequired($core.bool v) {
    $_setBool(1, v);
  }

  $core.bool hasIsRequired() => $_has(1);
  void clearIsRequired() => clearField(3);

  $core.bool get isKnown => $_get(2, false);
  set isKnown($core.bool v) {
    $_setBool(2, v);
  }

  $core.bool hasIsKnown() => $_has(2);
  void clearIsKnown() => clearField(4);
}

class FeeReportRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FeeReportRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  FeeReportRequest._() : super();
  factory FeeReportRequest() => create();
  factory FeeReportRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FeeReportRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FeeReportRequest clone() => FeeReportRequest()..mergeFromMessage(this);
  FeeReportRequest copyWith(void Function(FeeReportRequest) updates) =>
      super.copyWith((message) => updates(message as FeeReportRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeeReportRequest create() => FeeReportRequest._();
  FeeReportRequest createEmptyInstance() => create();
  static $pb.PbList<FeeReportRequest> createRepeated() =>
      $pb.PbList<FeeReportRequest>();
  static FeeReportRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static FeeReportRequest _defaultInstance;
}

class ChannelFeeReport extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelFeeReport',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'channel_point', protoName: 'chan_point')
    ..aInt64(2, 'base_fee_msat')
    ..aInt64(3, 'fee_per_mil')
    ..a<$core.double>(4, 'fee_rate', $pb.PbFieldType.OD)
    ..hasRequiredFields = false;

  ChannelFeeReport._() : super();
  factory ChannelFeeReport() => create();
  factory ChannelFeeReport.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelFeeReport.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelFeeReport clone() => ChannelFeeReport()..mergeFromMessage(this);
  ChannelFeeReport copyWith(void Function(ChannelFeeReport) updates) =>
      super.copyWith((message) => updates(message as ChannelFeeReport));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelFeeReport create() => ChannelFeeReport._();
  ChannelFeeReport createEmptyInstance() => create();
  static $pb.PbList<ChannelFeeReport> createRepeated() =>
      $pb.PbList<ChannelFeeReport>();
  static ChannelFeeReport getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelFeeReport _defaultInstance;

  $core.String get chanPoint => $_getS(0, '');
  set chanPoint($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasChanPoint() => $_has(0);
  void clearChanPoint() => clearField(1);

  Int64 get baseFeeMsat => $_getI64(1);
  set baseFeeMsat(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasBaseFeeMsat() => $_has(1);
  void clearBaseFeeMsat() => clearField(2);

  Int64 get feePerMil => $_getI64(2);
  set feePerMil(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasFeePerMil() => $_has(2);
  void clearFeePerMil() => clearField(3);

  $core.double get feeRate => $_getN(3);
  set feeRate($core.double v) {
    $_setDouble(3, v);
  }

  $core.bool hasFeeRate() => $_has(3);
  void clearFeeRate() => clearField(4);
}

class FeeReportResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('FeeReportResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<ChannelFeeReport>(1, 'channel_fees', $pb.PbFieldType.PM,
        subBuilder: ChannelFeeReport.create)
    ..a<Int64>(2, 'day_fee_sum', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<Int64>(3, 'week_fee_sum', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<Int64>(4, 'month_fee_sum', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..hasRequiredFields = false;

  FeeReportResponse._() : super();
  factory FeeReportResponse() => create();
  factory FeeReportResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory FeeReportResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  FeeReportResponse clone() => FeeReportResponse()..mergeFromMessage(this);
  FeeReportResponse copyWith(void Function(FeeReportResponse) updates) =>
      super.copyWith((message) => updates(message as FeeReportResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static FeeReportResponse create() => FeeReportResponse._();
  FeeReportResponse createEmptyInstance() => create();
  static $pb.PbList<FeeReportResponse> createRepeated() =>
      $pb.PbList<FeeReportResponse>();
  static FeeReportResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static FeeReportResponse _defaultInstance;

  $core.List<ChannelFeeReport> get channelFees => $_getList(0);

  Int64 get dayFeeSum => $_getI64(1);
  set dayFeeSum(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasDayFeeSum() => $_has(1);
  void clearDayFeeSum() => clearField(2);

  Int64 get weekFeeSum => $_getI64(2);
  set weekFeeSum(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasWeekFeeSum() => $_has(2);
  void clearWeekFeeSum() => clearField(3);

  Int64 get monthFeeSum => $_getI64(3);
  set monthFeeSum(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasMonthFeeSum() => $_has(3);
  void clearMonthFeeSum() => clearField(4);
}

enum PolicyUpdateRequest_Scope { global, chanPoint, notSet }

class PolicyUpdateRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, PolicyUpdateRequest_Scope>
      _PolicyUpdateRequest_ScopeByTag = {
    1: PolicyUpdateRequest_Scope.global,
    2: PolicyUpdateRequest_Scope.chanPoint,
    0: PolicyUpdateRequest_Scope.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PolicyUpdateRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..aOB(1, 'global')
    ..a<ChannelPoint>(2, 'chan_point', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelPoint.getDefault,
        subBuilder: ChannelPoint.create)
    ..aInt64(3, 'base_fee_msat')
    ..a<$core.double>(4, 'fee_rate', $pb.PbFieldType.OD)
    ..a<$core.int>(5, 'time_lock_delta', $pb.PbFieldType.OU3)
    ..a<Int64>(6, 'max_htlc_msat', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<Int64>(7, 'min_htlc_msat', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..aOB(8, 'set_min_htlc_msat', protoName: 'min_htlc_msat_specified')
    ..hasRequiredFields = false;

  PolicyUpdateRequest._() : super();
  factory PolicyUpdateRequest() => create();
  factory PolicyUpdateRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PolicyUpdateRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PolicyUpdateRequest clone() => PolicyUpdateRequest()..mergeFromMessage(this);
  PolicyUpdateRequest copyWith(void Function(PolicyUpdateRequest) updates) =>
      super.copyWith((message) => updates(message as PolicyUpdateRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PolicyUpdateRequest create() => PolicyUpdateRequest._();
  PolicyUpdateRequest createEmptyInstance() => create();
  static $pb.PbList<PolicyUpdateRequest> createRepeated() =>
      $pb.PbList<PolicyUpdateRequest>();
  static PolicyUpdateRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static PolicyUpdateRequest _defaultInstance;

  PolicyUpdateRequest_Scope whichScope() =>
      _PolicyUpdateRequest_ScopeByTag[$_whichOneof(0)];
  void clearScope() => clearField($_whichOneof(0));

  $core.bool get global => $_get(0, false);
  set global($core.bool v) {
    $_setBool(0, v);
  }

  $core.bool hasGlobal() => $_has(0);
  void clearGlobal() => clearField(1);

  ChannelPoint get chanPoint => $_getN(1);
  set chanPoint(ChannelPoint v) {
    setField(2, v);
  }

  $core.bool hasChanPoint() => $_has(1);
  void clearChanPoint() => clearField(2);

  Int64 get baseFeeMsat => $_getI64(2);
  set baseFeeMsat(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasBaseFeeMsat() => $_has(2);
  void clearBaseFeeMsat() => clearField(3);

  $core.double get feeRate => $_getN(3);
  set feeRate($core.double v) {
    $_setDouble(3, v);
  }

  $core.bool hasFeeRate() => $_has(3);
  void clearFeeRate() => clearField(4);

  $core.int get timeLockDelta => $_get(4, 0);
  set timeLockDelta($core.int v) {
    $_setUnsignedInt32(4, v);
  }

  $core.bool hasTimeLockDelta() => $_has(4);
  void clearTimeLockDelta() => clearField(5);

  Int64 get maxHtlcMsat => $_getI64(5);
  set maxHtlcMsat(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasMaxHtlcMsat() => $_has(5);
  void clearMaxHtlcMsat() => clearField(6);

  Int64 get minHtlcMsat => $_getI64(6);
  set minHtlcMsat(Int64 v) {
    $_setInt64(6, v);
  }

  $core.bool hasMinHtlcMsat() => $_has(6);
  void clearMinHtlcMsat() => clearField(7);

  $core.bool get minHtlcMsatSpecified => $_get(7, false);
  set minHtlcMsatSpecified($core.bool v) {
    $_setBool(7, v);
  }

  $core.bool hasMinHtlcMsatSpecified() => $_has(7);
  void clearMinHtlcMsatSpecified() => clearField(8);
}

class PolicyUpdateResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('PolicyUpdateResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  PolicyUpdateResponse._() : super();
  factory PolicyUpdateResponse() => create();
  factory PolicyUpdateResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory PolicyUpdateResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  PolicyUpdateResponse clone() =>
      PolicyUpdateResponse()..mergeFromMessage(this);
  PolicyUpdateResponse copyWith(void Function(PolicyUpdateResponse) updates) =>
      super.copyWith((message) => updates(message as PolicyUpdateResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static PolicyUpdateResponse create() => PolicyUpdateResponse._();
  PolicyUpdateResponse createEmptyInstance() => create();
  static $pb.PbList<PolicyUpdateResponse> createRepeated() =>
      $pb.PbList<PolicyUpdateResponse>();
  static PolicyUpdateResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static PolicyUpdateResponse _defaultInstance;
}

class ForwardingHistoryRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ForwardingHistoryRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<Int64>(1, 'start_time', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(2, 'end_time', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<$core.int>(3, 'index_offset', $pb.PbFieldType.OU3)
    ..a<$core.int>(4, 'num_max_events', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  ForwardingHistoryRequest._() : super();
  factory ForwardingHistoryRequest() => create();
  factory ForwardingHistoryRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ForwardingHistoryRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ForwardingHistoryRequest clone() =>
      ForwardingHistoryRequest()..mergeFromMessage(this);
  ForwardingHistoryRequest copyWith(
          void Function(ForwardingHistoryRequest) updates) =>
      super.copyWith((message) => updates(message as ForwardingHistoryRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForwardingHistoryRequest create() => ForwardingHistoryRequest._();
  ForwardingHistoryRequest createEmptyInstance() => create();
  static $pb.PbList<ForwardingHistoryRequest> createRepeated() =>
      $pb.PbList<ForwardingHistoryRequest>();
  static ForwardingHistoryRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ForwardingHistoryRequest _defaultInstance;

  Int64 get startTime => $_getI64(0);
  set startTime(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasStartTime() => $_has(0);
  void clearStartTime() => clearField(1);

  Int64 get endTime => $_getI64(1);
  set endTime(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasEndTime() => $_has(1);
  void clearEndTime() => clearField(2);

  $core.int get indexOffset => $_get(2, 0);
  set indexOffset($core.int v) {
    $_setUnsignedInt32(2, v);
  }

  $core.bool hasIndexOffset() => $_has(2);
  void clearIndexOffset() => clearField(3);

  $core.int get numMaxEvents => $_get(3, 0);
  set numMaxEvents($core.int v) {
    $_setUnsignedInt32(3, v);
  }

  $core.bool hasNumMaxEvents() => $_has(3);
  void clearNumMaxEvents() => clearField(4);
}

class ForwardingEvent extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ForwardingEvent',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<Int64>(1, 'timestamp', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(2, 'chan_id_in', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(4, 'chan_id_out', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<Int64>(5, 'amt_in', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(6, 'amt_out', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(7, 'fee', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(8, 'fee_msat', $pb.PbFieldType.OU6, defaultOrMaker: Int64.ZERO)
    ..a<Int64>(9, 'amt_in_msat', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..a<Int64>(10, 'amt_out_msat', $pb.PbFieldType.OU6,
        defaultOrMaker: Int64.ZERO)
    ..hasRequiredFields = false;

  ForwardingEvent._() : super();
  factory ForwardingEvent() => create();
  factory ForwardingEvent.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ForwardingEvent.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ForwardingEvent clone() => ForwardingEvent()..mergeFromMessage(this);
  ForwardingEvent copyWith(void Function(ForwardingEvent) updates) =>
      super.copyWith((message) => updates(message as ForwardingEvent));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForwardingEvent create() => ForwardingEvent._();
  ForwardingEvent createEmptyInstance() => create();
  static $pb.PbList<ForwardingEvent> createRepeated() =>
      $pb.PbList<ForwardingEvent>();
  static ForwardingEvent getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ForwardingEvent _defaultInstance;

  Int64 get timestamp => $_getI64(0);
  set timestamp(Int64 v) {
    $_setInt64(0, v);
  }

  $core.bool hasTimestamp() => $_has(0);
  void clearTimestamp() => clearField(1);

  Int64 get chanIdIn => $_getI64(1);
  set chanIdIn(Int64 v) {
    $_setInt64(1, v);
  }

  $core.bool hasChanIdIn() => $_has(1);
  void clearChanIdIn() => clearField(2);

  Int64 get chanIdOut => $_getI64(2);
  set chanIdOut(Int64 v) {
    $_setInt64(2, v);
  }

  $core.bool hasChanIdOut() => $_has(2);
  void clearChanIdOut() => clearField(4);

  Int64 get amtIn => $_getI64(3);
  set amtIn(Int64 v) {
    $_setInt64(3, v);
  }

  $core.bool hasAmtIn() => $_has(3);
  void clearAmtIn() => clearField(5);

  Int64 get amtOut => $_getI64(4);
  set amtOut(Int64 v) {
    $_setInt64(4, v);
  }

  $core.bool hasAmtOut() => $_has(4);
  void clearAmtOut() => clearField(6);

  Int64 get fee => $_getI64(5);
  set fee(Int64 v) {
    $_setInt64(5, v);
  }

  $core.bool hasFee() => $_has(5);
  void clearFee() => clearField(7);

  Int64 get feeMsat => $_getI64(6);
  set feeMsat(Int64 v) {
    $_setInt64(6, v);
  }

  $core.bool hasFeeMsat() => $_has(6);
  void clearFeeMsat() => clearField(8);

  Int64 get amtInMsat => $_getI64(7);
  set amtInMsat(Int64 v) {
    $_setInt64(7, v);
  }

  $core.bool hasAmtInMsat() => $_has(7);
  void clearAmtInMsat() => clearField(9);

  Int64 get amtOutMsat => $_getI64(8);
  set amtOutMsat(Int64 v) {
    $_setInt64(8, v);
  }

  $core.bool hasAmtOutMsat() => $_has(8);
  void clearAmtOutMsat() => clearField(10);
}

class ForwardingHistoryResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ForwardingHistoryResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<ForwardingEvent>(1, 'forwarding_events', $pb.PbFieldType.PM,
        subBuilder: ForwardingEvent.create)
    ..a<$core.int>(2, 'last_offset_index', $pb.PbFieldType.OU3)
    ..hasRequiredFields = false;

  ForwardingHistoryResponse._() : super();
  factory ForwardingHistoryResponse() => create();
  factory ForwardingHistoryResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ForwardingHistoryResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ForwardingHistoryResponse clone() =>
      ForwardingHistoryResponse()..mergeFromMessage(this);
  ForwardingHistoryResponse copyWith(
          void Function(ForwardingHistoryResponse) updates) =>
      super
          .copyWith((message) => updates(message as ForwardingHistoryResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ForwardingHistoryResponse create() => ForwardingHistoryResponse._();
  ForwardingHistoryResponse createEmptyInstance() => create();
  static $pb.PbList<ForwardingHistoryResponse> createRepeated() =>
      $pb.PbList<ForwardingHistoryResponse>();
  static ForwardingHistoryResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ForwardingHistoryResponse _defaultInstance;

  $core.List<ForwardingEvent> get forwardingEvents => $_getList(0);

  $core.int get lastOffsetIndex => $_get(1, 0);
  set lastOffsetIndex($core.int v) {
    $_setUnsignedInt32(1, v);
  }

  $core.bool hasLastOffsetIndex() => $_has(1);
  void clearLastOffsetIndex() => clearField(2);
}

class ExportChannelBackupRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo(
      'ExportChannelBackupRequest',
      package: const $pb.PackageName('lnrpc'),
      createEmptyInstance: create)
    ..a<ChannelPoint>(1, 'chanPoint', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelPoint.getDefault,
        subBuilder: ChannelPoint.create)
    ..hasRequiredFields = false;

  ExportChannelBackupRequest._() : super();
  factory ExportChannelBackupRequest() => create();
  factory ExportChannelBackupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ExportChannelBackupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ExportChannelBackupRequest clone() =>
      ExportChannelBackupRequest()..mergeFromMessage(this);
  ExportChannelBackupRequest copyWith(
          void Function(ExportChannelBackupRequest) updates) =>
      super.copyWith(
          (message) => updates(message as ExportChannelBackupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ExportChannelBackupRequest create() => ExportChannelBackupRequest._();
  ExportChannelBackupRequest createEmptyInstance() => create();
  static $pb.PbList<ExportChannelBackupRequest> createRepeated() =>
      $pb.PbList<ExportChannelBackupRequest>();
  static ExportChannelBackupRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ExportChannelBackupRequest _defaultInstance;

  ChannelPoint get chanPoint => $_getN(0);
  set chanPoint(ChannelPoint v) {
    setField(1, v);
  }

  $core.bool hasChanPoint() => $_has(0);
  void clearChanPoint() => clearField(1);
}

class ChannelBackup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelBackup',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<ChannelPoint>(1, 'chan_point', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelPoint.getDefault,
        subBuilder: ChannelPoint.create)
    ..a<$core.List<$core.int>>(2, 'chan_backup', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  ChannelBackup._() : super();
  factory ChannelBackup() => create();
  factory ChannelBackup.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelBackup.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelBackup clone() => ChannelBackup()..mergeFromMessage(this);
  ChannelBackup copyWith(void Function(ChannelBackup) updates) =>
      super.copyWith((message) => updates(message as ChannelBackup));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelBackup create() => ChannelBackup._();
  ChannelBackup createEmptyInstance() => create();
  static $pb.PbList<ChannelBackup> createRepeated() =>
      $pb.PbList<ChannelBackup>();
  static ChannelBackup getDefault() => _defaultInstance ??= create()..freeze();
  static ChannelBackup _defaultInstance;

  ChannelPoint get chanPoint => $_getN(0);
  set chanPoint(ChannelPoint v) {
    setField(1, v);
  }

  $core.bool hasChanPoint() => $_has(0);
  void clearChanPoint() => clearField(1);

  $core.List<$core.int> get chanBackup => $_getN(1);
  set chanBackup($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasChanBackup() => $_has(1);
  void clearChanBackup() => clearField(2);
}

class MultiChanBackup extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MultiChanBackup',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<ChannelPoint>(1, 'chan_points', $pb.PbFieldType.PM,
        subBuilder: ChannelPoint.create)
    ..a<$core.List<$core.int>>(2, 'multi_chan_backup', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  MultiChanBackup._() : super();
  factory MultiChanBackup() => create();
  factory MultiChanBackup.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MultiChanBackup.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  MultiChanBackup clone() => MultiChanBackup()..mergeFromMessage(this);
  MultiChanBackup copyWith(void Function(MultiChanBackup) updates) =>
      super.copyWith((message) => updates(message as MultiChanBackup));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MultiChanBackup create() => MultiChanBackup._();
  MultiChanBackup createEmptyInstance() => create();
  static $pb.PbList<MultiChanBackup> createRepeated() =>
      $pb.PbList<MultiChanBackup>();
  static MultiChanBackup getDefault() =>
      _defaultInstance ??= create()..freeze();
  static MultiChanBackup _defaultInstance;

  $core.List<ChannelPoint> get chanPoints => $_getList(0);

  $core.List<$core.int> get multiChanBackup => $_getN(1);
  set multiChanBackup($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasMultiChanBackup() => $_has(1);
  void clearMultiChanBackup() => clearField(2);
}

class ChanBackupExportRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChanBackupExportRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  ChanBackupExportRequest._() : super();
  factory ChanBackupExportRequest() => create();
  factory ChanBackupExportRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChanBackupExportRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChanBackupExportRequest clone() =>
      ChanBackupExportRequest()..mergeFromMessage(this);
  ChanBackupExportRequest copyWith(
          void Function(ChanBackupExportRequest) updates) =>
      super.copyWith((message) => updates(message as ChanBackupExportRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChanBackupExportRequest create() => ChanBackupExportRequest._();
  ChanBackupExportRequest createEmptyInstance() => create();
  static $pb.PbList<ChanBackupExportRequest> createRepeated() =>
      $pb.PbList<ChanBackupExportRequest>();
  static ChanBackupExportRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChanBackupExportRequest _defaultInstance;
}

class ChanBackupSnapshot extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChanBackupSnapshot',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..a<ChannelBackups>(1, 'single_chan_backups', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelBackups.getDefault,
        subBuilder: ChannelBackups.create)
    ..a<MultiChanBackup>(2, 'multi_chan_backup', $pb.PbFieldType.OM,
        defaultOrMaker: MultiChanBackup.getDefault,
        subBuilder: MultiChanBackup.create)
    ..hasRequiredFields = false;

  ChanBackupSnapshot._() : super();
  factory ChanBackupSnapshot() => create();
  factory ChanBackupSnapshot.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChanBackupSnapshot.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChanBackupSnapshot clone() => ChanBackupSnapshot()..mergeFromMessage(this);
  ChanBackupSnapshot copyWith(void Function(ChanBackupSnapshot) updates) =>
      super.copyWith((message) => updates(message as ChanBackupSnapshot));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChanBackupSnapshot create() => ChanBackupSnapshot._();
  ChanBackupSnapshot createEmptyInstance() => create();
  static $pb.PbList<ChanBackupSnapshot> createRepeated() =>
      $pb.PbList<ChanBackupSnapshot>();
  static ChanBackupSnapshot getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChanBackupSnapshot _defaultInstance;

  ChannelBackups get singleChanBackups => $_getN(0);
  set singleChanBackups(ChannelBackups v) {
    setField(1, v);
  }

  $core.bool hasSingleChanBackups() => $_has(0);
  void clearSingleChanBackups() => clearField(1);

  MultiChanBackup get multiChanBackup => $_getN(1);
  set multiChanBackup(MultiChanBackup v) {
    setField(2, v);
  }

  $core.bool hasMultiChanBackup() => $_has(1);
  void clearMultiChanBackup() => clearField(2);
}

class ChannelBackups extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelBackups',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<ChannelBackup>(1, 'chan_backups', $pb.PbFieldType.PM,
        subBuilder: ChannelBackup.create)
    ..hasRequiredFields = false;

  ChannelBackups._() : super();
  factory ChannelBackups() => create();
  factory ChannelBackups.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelBackups.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelBackups clone() => ChannelBackups()..mergeFromMessage(this);
  ChannelBackups copyWith(void Function(ChannelBackups) updates) =>
      super.copyWith((message) => updates(message as ChannelBackups));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelBackups create() => ChannelBackups._();
  ChannelBackups createEmptyInstance() => create();
  static $pb.PbList<ChannelBackups> createRepeated() =>
      $pb.PbList<ChannelBackups>();
  static ChannelBackups getDefault() => _defaultInstance ??= create()..freeze();
  static ChannelBackups _defaultInstance;

  $core.List<ChannelBackup> get chanBackups => $_getList(0);
}

enum RestoreChanBackupRequest_Backup { chanBackups, multiChanBackup, notSet }

class RestoreChanBackupRequest extends $pb.GeneratedMessage {
  static const $core.Map<$core.int, RestoreChanBackupRequest_Backup>
      _RestoreChanBackupRequest_BackupByTag = {
    1: RestoreChanBackupRequest_Backup.chanBackups,
    2: RestoreChanBackupRequest_Backup.multiChanBackup,
    0: RestoreChanBackupRequest_Backup.notSet
  };
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RestoreChanBackupRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..oo(0, [1, 2])
    ..a<ChannelBackups>(1, 'chan_backups', $pb.PbFieldType.OM,
        defaultOrMaker: ChannelBackups.getDefault,
        subBuilder: ChannelBackups.create)
    ..a<$core.List<$core.int>>(2, 'multi_chan_backup', $pb.PbFieldType.OY)
    ..hasRequiredFields = false;

  RestoreChanBackupRequest._() : super();
  factory RestoreChanBackupRequest() => create();
  factory RestoreChanBackupRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RestoreChanBackupRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  RestoreChanBackupRequest clone() =>
      RestoreChanBackupRequest()..mergeFromMessage(this);
  RestoreChanBackupRequest copyWith(
          void Function(RestoreChanBackupRequest) updates) =>
      super.copyWith((message) => updates(message as RestoreChanBackupRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RestoreChanBackupRequest create() => RestoreChanBackupRequest._();
  RestoreChanBackupRequest createEmptyInstance() => create();
  static $pb.PbList<RestoreChanBackupRequest> createRepeated() =>
      $pb.PbList<RestoreChanBackupRequest>();
  static RestoreChanBackupRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static RestoreChanBackupRequest _defaultInstance;

  RestoreChanBackupRequest_Backup whichBackup() =>
      _RestoreChanBackupRequest_BackupByTag[$_whichOneof(0)];
  void clearBackup() => clearField($_whichOneof(0));

  ChannelBackups get chanBackups => $_getN(0);
  set chanBackups(ChannelBackups v) {
    setField(1, v);
  }

  $core.bool hasChanBackups() => $_has(0);
  void clearChanBackups() => clearField(1);

  $core.List<$core.int> get multiChanBackup => $_getN(1);
  set multiChanBackup($core.List<$core.int> v) {
    $_setBytes(1, v);
  }

  $core.bool hasMultiChanBackup() => $_has(1);
  void clearMultiChanBackup() => clearField(2);
}

class RestoreBackupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('RestoreBackupResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  RestoreBackupResponse._() : super();
  factory RestoreBackupResponse() => create();
  factory RestoreBackupResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory RestoreBackupResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  RestoreBackupResponse clone() =>
      RestoreBackupResponse()..mergeFromMessage(this);
  RestoreBackupResponse copyWith(
          void Function(RestoreBackupResponse) updates) =>
      super.copyWith((message) => updates(message as RestoreBackupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static RestoreBackupResponse create() => RestoreBackupResponse._();
  RestoreBackupResponse createEmptyInstance() => create();
  static $pb.PbList<RestoreBackupResponse> createRepeated() =>
      $pb.PbList<RestoreBackupResponse>();
  static RestoreBackupResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static RestoreBackupResponse _defaultInstance;
}

class ChannelBackupSubscription extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('ChannelBackupSubscription',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  ChannelBackupSubscription._() : super();
  factory ChannelBackupSubscription() => create();
  factory ChannelBackupSubscription.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory ChannelBackupSubscription.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  ChannelBackupSubscription clone() =>
      ChannelBackupSubscription()..mergeFromMessage(this);
  ChannelBackupSubscription copyWith(
          void Function(ChannelBackupSubscription) updates) =>
      super
          .copyWith((message) => updates(message as ChannelBackupSubscription));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static ChannelBackupSubscription create() => ChannelBackupSubscription._();
  ChannelBackupSubscription createEmptyInstance() => create();
  static $pb.PbList<ChannelBackupSubscription> createRepeated() =>
      $pb.PbList<ChannelBackupSubscription>();
  static ChannelBackupSubscription getDefault() =>
      _defaultInstance ??= create()..freeze();
  static ChannelBackupSubscription _defaultInstance;
}

class VerifyChanBackupResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('VerifyChanBackupResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..hasRequiredFields = false;

  VerifyChanBackupResponse._() : super();
  factory VerifyChanBackupResponse() => create();
  factory VerifyChanBackupResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory VerifyChanBackupResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  VerifyChanBackupResponse clone() =>
      VerifyChanBackupResponse()..mergeFromMessage(this);
  VerifyChanBackupResponse copyWith(
          void Function(VerifyChanBackupResponse) updates) =>
      super.copyWith((message) => updates(message as VerifyChanBackupResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static VerifyChanBackupResponse create() => VerifyChanBackupResponse._();
  VerifyChanBackupResponse createEmptyInstance() => create();
  static $pb.PbList<VerifyChanBackupResponse> createRepeated() =>
      $pb.PbList<VerifyChanBackupResponse>();
  static VerifyChanBackupResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static VerifyChanBackupResponse _defaultInstance;
}

class MacaroonPermission extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('MacaroonPermission',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'entity')
    ..aOS(2, 'action')
    ..hasRequiredFields = false;

  MacaroonPermission._() : super();
  factory MacaroonPermission() => create();
  factory MacaroonPermission.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory MacaroonPermission.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  MacaroonPermission clone() => MacaroonPermission()..mergeFromMessage(this);
  MacaroonPermission copyWith(void Function(MacaroonPermission) updates) =>
      super.copyWith((message) => updates(message as MacaroonPermission));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static MacaroonPermission create() => MacaroonPermission._();
  MacaroonPermission createEmptyInstance() => create();
  static $pb.PbList<MacaroonPermission> createRepeated() =>
      $pb.PbList<MacaroonPermission>();
  static MacaroonPermission getDefault() =>
      _defaultInstance ??= create()..freeze();
  static MacaroonPermission _defaultInstance;

  $core.String get entity => $_getS(0, '');
  set entity($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasEntity() => $_has(0);
  void clearEntity() => clearField(1);

  $core.String get action => $_getS(1, '');
  set action($core.String v) {
    $_setString(1, v);
  }

  $core.bool hasAction() => $_has(1);
  void clearAction() => clearField(2);
}

class BakeMacaroonRequest extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BakeMacaroonRequest',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..pc<MacaroonPermission>(1, 'permissions', $pb.PbFieldType.PM,
        subBuilder: MacaroonPermission.create)
    ..hasRequiredFields = false;

  BakeMacaroonRequest._() : super();
  factory BakeMacaroonRequest() => create();
  factory BakeMacaroonRequest.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BakeMacaroonRequest.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  BakeMacaroonRequest clone() => BakeMacaroonRequest()..mergeFromMessage(this);
  BakeMacaroonRequest copyWith(void Function(BakeMacaroonRequest) updates) =>
      super.copyWith((message) => updates(message as BakeMacaroonRequest));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BakeMacaroonRequest create() => BakeMacaroonRequest._();
  BakeMacaroonRequest createEmptyInstance() => create();
  static $pb.PbList<BakeMacaroonRequest> createRepeated() =>
      $pb.PbList<BakeMacaroonRequest>();
  static BakeMacaroonRequest getDefault() =>
      _defaultInstance ??= create()..freeze();
  static BakeMacaroonRequest _defaultInstance;

  $core.List<MacaroonPermission> get permissions => $_getList(0);
}

class BakeMacaroonResponse extends $pb.GeneratedMessage {
  static final $pb.BuilderInfo _i = $pb.BuilderInfo('BakeMacaroonResponse',
      package: const $pb.PackageName('lnrpc'), createEmptyInstance: create)
    ..aOS(1, 'macaroon')
    ..hasRequiredFields = false;

  BakeMacaroonResponse._() : super();
  factory BakeMacaroonResponse() => create();
  factory BakeMacaroonResponse.fromBuffer($core.List<$core.int> i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromBuffer(i, r);
  factory BakeMacaroonResponse.fromJson($core.String i,
          [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) =>
      create()..mergeFromJson(i, r);
  BakeMacaroonResponse clone() =>
      BakeMacaroonResponse()..mergeFromMessage(this);
  BakeMacaroonResponse copyWith(void Function(BakeMacaroonResponse) updates) =>
      super.copyWith((message) => updates(message as BakeMacaroonResponse));
  $pb.BuilderInfo get info_ => _i;
  @$core.pragma('dart2js:noInline')
  static BakeMacaroonResponse create() => BakeMacaroonResponse._();
  BakeMacaroonResponse createEmptyInstance() => create();
  static $pb.PbList<BakeMacaroonResponse> createRepeated() =>
      $pb.PbList<BakeMacaroonResponse>();
  static BakeMacaroonResponse getDefault() =>
      _defaultInstance ??= create()..freeze();
  static BakeMacaroonResponse _defaultInstance;

  $core.String get macaroon => $_getS(0, '');
  set macaroon($core.String v) {
    $_setString(0, v);
  }

  $core.bool hasMacaroon() => $_has(0);
  void clearMacaroon() => clearField(1);
}
