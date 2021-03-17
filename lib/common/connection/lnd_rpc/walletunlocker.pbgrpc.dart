///
//  Generated code. Do not modify.
//  source: walletunlocker.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'walletunlocker.pb.dart' as $1;
export 'walletunlocker.pb.dart';

class WalletUnlockerClient extends $grpc.Client {
  static final _$genSeed =
      $grpc.ClientMethod<$1.GenSeedRequest, $1.GenSeedResponse>(
          '/lnrpc.WalletUnlocker/GenSeed',
          ($1.GenSeedRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.GenSeedResponse.fromBuffer(value));
  static final _$initWallet =
      $grpc.ClientMethod<$1.InitWalletRequest, $1.InitWalletResponse>(
          '/lnrpc.WalletUnlocker/InitWallet',
          ($1.InitWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.InitWalletResponse.fromBuffer(value));
  static final _$unlockWallet =
      $grpc.ClientMethod<$1.UnlockWalletRequest, $1.UnlockWalletResponse>(
          '/lnrpc.WalletUnlocker/UnlockWallet',
          ($1.UnlockWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.UnlockWalletResponse.fromBuffer(value));
  static final _$changePassword =
      $grpc.ClientMethod<$1.ChangePasswordRequest, $1.ChangePasswordResponse>(
          '/lnrpc.WalletUnlocker/ChangePassword',
          ($1.ChangePasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.ChangePasswordResponse.fromBuffer(value));

  WalletUnlockerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$1.GenSeedResponse> genSeed($1.GenSeedRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$genSeed, request, options: options);
  }

  $grpc.ResponseFuture<$1.InitWalletResponse> initWallet(
      $1.InitWalletRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$initWallet, request, options: options);
  }

  $grpc.ResponseFuture<$1.UnlockWalletResponse> unlockWallet(
      $1.UnlockWalletRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$unlockWallet, request, options: options);
  }

  $grpc.ResponseFuture<$1.ChangePasswordResponse> changePassword(
      $1.ChangePasswordRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$changePassword, request, options: options);
  }
}

abstract class WalletUnlockerServiceBase extends $grpc.Service {
  $core.String get $name => 'lnrpc.WalletUnlocker';

  WalletUnlockerServiceBase() {
    $addMethod($grpc.ServiceMethod<$1.GenSeedRequest, $1.GenSeedResponse>(
        'GenSeed',
        genSeed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.GenSeedRequest.fromBuffer(value),
        ($1.GenSeedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.InitWalletRequest, $1.InitWalletResponse>(
        'InitWallet',
        initWallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.InitWalletRequest.fromBuffer(value),
        ($1.InitWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.UnlockWalletRequest, $1.UnlockWalletResponse>(
            'UnlockWallet',
            unlockWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.UnlockWalletRequest.fromBuffer(value),
            ($1.UnlockWalletResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.ChangePasswordRequest,
            $1.ChangePasswordResponse>(
        'ChangePassword',
        changePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $1.ChangePasswordRequest.fromBuffer(value),
        ($1.ChangePasswordResponse value) => value.writeToBuffer()));
  }

  $async.Future<$1.GenSeedResponse> genSeed_Pre(
      $grpc.ServiceCall call, $async.Future<$1.GenSeedRequest> request) async {
    return genSeed(call, await request);
  }

  $async.Future<$1.InitWalletResponse> initWallet_Pre($grpc.ServiceCall call,
      $async.Future<$1.InitWalletRequest> request) async {
    return initWallet(call, await request);
  }

  $async.Future<$1.UnlockWalletResponse> unlockWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.UnlockWalletRequest> request) async {
    return unlockWallet(call, await request);
  }

  $async.Future<$1.ChangePasswordResponse> changePassword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.ChangePasswordRequest> request) async {
    return changePassword(call, await request);
  }

  $async.Future<$1.GenSeedResponse> genSeed(
      $grpc.ServiceCall call, $1.GenSeedRequest request);
  $async.Future<$1.InitWalletResponse> initWallet(
      $grpc.ServiceCall call, $1.InitWalletRequest request);
  $async.Future<$1.UnlockWalletResponse> unlockWallet(
      $grpc.ServiceCall call, $1.UnlockWalletRequest request);
  $async.Future<$1.ChangePasswordResponse> changePassword(
      $grpc.ServiceCall call, $1.ChangePasswordRequest request);
}
