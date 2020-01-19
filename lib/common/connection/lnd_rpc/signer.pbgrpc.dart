///
//  Generated code. Do not modify.
//  source: signer.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,annotate_overrides

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'signer.pb.dart' as $0;
export 'signer.pb.dart';

class SignerClient extends $grpc.Client {
  static final _$signOutputRaw = $grpc.ClientMethod<$0.SignReq, $0.SignResp>(
      '/signrpc.Signer/SignOutputRaw',
      ($0.SignReq value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.SignResp.fromBuffer(value));
  static final _$computeInputScript =
      $grpc.ClientMethod<$0.SignReq, $0.InputScriptResp>(
          '/signrpc.Signer/ComputeInputScript',
          ($0.SignReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.InputScriptResp.fromBuffer(value));
  static final _$signMessage =
      $grpc.ClientMethod<$0.SignMessageReq, $0.SignMessageResp>(
          '/signrpc.Signer/SignMessage',
          ($0.SignMessageReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SignMessageResp.fromBuffer(value));
  static final _$verifyMessage =
      $grpc.ClientMethod<$0.VerifyMessageReq, $0.VerifyMessageResp>(
          '/signrpc.Signer/VerifyMessage',
          ($0.VerifyMessageReq value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.VerifyMessageResp.fromBuffer(value));
  static final _$deriveSharedKey =
      $grpc.ClientMethod<$0.SharedKeyRequest, $0.SharedKeyResponse>(
          '/signrpc.Signer/DeriveSharedKey',
          ($0.SharedKeyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SharedKeyResponse.fromBuffer(value));

  SignerClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.SignResp> signOutputRaw($0.SignReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$signOutputRaw, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.InputScriptResp> computeInputScript(
      $0.SignReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$computeInputScript, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SignMessageResp> signMessage(
      $0.SignMessageReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$signMessage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.VerifyMessageResp> verifyMessage(
      $0.VerifyMessageReq request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$verifyMessage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SharedKeyResponse> deriveSharedKey(
      $0.SharedKeyRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deriveSharedKey, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class SignerServiceBase extends $grpc.Service {
  $core.String get $name => 'signrpc.Signer';

  SignerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.SignReq, $0.SignResp>(
        'SignOutputRaw',
        signOutputRaw_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignReq.fromBuffer(value),
        ($0.SignResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignReq, $0.InputScriptResp>(
        'ComputeInputScript',
        computeInputScript_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignReq.fromBuffer(value),
        ($0.InputScriptResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SignMessageReq, $0.SignMessageResp>(
        'SignMessage',
        signMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SignMessageReq.fromBuffer(value),
        ($0.SignMessageResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.VerifyMessageReq, $0.VerifyMessageResp>(
        'VerifyMessage',
        verifyMessage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VerifyMessageReq.fromBuffer(value),
        ($0.VerifyMessageResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SharedKeyRequest, $0.SharedKeyResponse>(
        'DeriveSharedKey',
        deriveSharedKey_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SharedKeyRequest.fromBuffer(value),
        ($0.SharedKeyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.SignResp> signOutputRaw_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignReq> request) async {
    return signOutputRaw(call, await request);
  }

  $async.Future<$0.InputScriptResp> computeInputScript_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignReq> request) async {
    return computeInputScript(call, await request);
  }

  $async.Future<$0.SignMessageResp> signMessage_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SignMessageReq> request) async {
    return signMessage(call, await request);
  }

  $async.Future<$0.VerifyMessageResp> verifyMessage_Pre($grpc.ServiceCall call,
      $async.Future<$0.VerifyMessageReq> request) async {
    return verifyMessage(call, await request);
  }

  $async.Future<$0.SharedKeyResponse> deriveSharedKey_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.SharedKeyRequest> request) async {
    return deriveSharedKey(call, await request);
  }

  $async.Future<$0.SignResp> signOutputRaw(
      $grpc.ServiceCall call, $0.SignReq request);
  $async.Future<$0.InputScriptResp> computeInputScript(
      $grpc.ServiceCall call, $0.SignReq request);
  $async.Future<$0.SignMessageResp> signMessage(
      $grpc.ServiceCall call, $0.SignMessageReq request);
  $async.Future<$0.VerifyMessageResp> verifyMessage(
      $grpc.ServiceCall call, $0.VerifyMessageReq request);
  $async.Future<$0.SharedKeyResponse> deriveSharedKey(
      $grpc.ServiceCall call, $0.SharedKeyRequest request);
}
