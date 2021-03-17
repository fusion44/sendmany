///
//  Generated code. Do not modify.
//  source: chainrpc/chainnotifier.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'chainnotifier.pb.dart' as $0;
export 'chainnotifier.pb.dart';

class ChainNotifierClient extends $grpc.Client {
  static final _$registerConfirmationsNtfn =
      $grpc.ClientMethod<$0.ConfRequest, $0.ConfEvent>(
          '/chainrpc.ChainNotifier/RegisterConfirmationsNtfn',
          ($0.ConfRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ConfEvent.fromBuffer(value));
  static final _$registerSpendNtfn =
      $grpc.ClientMethod<$0.SpendRequest, $0.SpendEvent>(
          '/chainrpc.ChainNotifier/RegisterSpendNtfn',
          ($0.SpendRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SpendEvent.fromBuffer(value));
  static final _$registerBlockEpochNtfn =
      $grpc.ClientMethod<$0.BlockEpoch, $0.BlockEpoch>(
          '/chainrpc.ChainNotifier/RegisterBlockEpochNtfn',
          ($0.BlockEpoch value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.BlockEpoch.fromBuffer(value));

  ChainNotifierClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.ConfEvent> registerConfirmationsNtfn(
      $0.ConfRequest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$registerConfirmationsNtfn, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.SpendEvent> registerSpendNtfn($0.SpendRequest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$registerSpendNtfn, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseStream<$0.BlockEpoch> registerBlockEpochNtfn(
      $0.BlockEpoch request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$registerBlockEpochNtfn, $async.Stream.fromIterable([request]),
        options: options);
  }
}

abstract class ChainNotifierServiceBase extends $grpc.Service {
  $core.String get $name => 'chainrpc.ChainNotifier';

  ChainNotifierServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.ConfRequest, $0.ConfEvent>(
        'RegisterConfirmationsNtfn',
        registerConfirmationsNtfn_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.ConfRequest.fromBuffer(value),
        ($0.ConfEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SpendRequest, $0.SpendEvent>(
        'RegisterSpendNtfn',
        registerSpendNtfn_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.SpendRequest.fromBuffer(value),
        ($0.SpendEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.BlockEpoch, $0.BlockEpoch>(
        'RegisterBlockEpochNtfn',
        registerBlockEpochNtfn_Pre,
        false,
        true,
        ($core.List<$core.int> value) => $0.BlockEpoch.fromBuffer(value),
        ($0.BlockEpoch value) => value.writeToBuffer()));
  }

  $async.Stream<$0.ConfEvent> registerConfirmationsNtfn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ConfRequest> request) async* {
    yield* registerConfirmationsNtfn(call, await request);
  }

  $async.Stream<$0.SpendEvent> registerSpendNtfn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SpendRequest> request) async* {
    yield* registerSpendNtfn(call, await request);
  }

  $async.Stream<$0.BlockEpoch> registerBlockEpochNtfn_Pre(
      $grpc.ServiceCall call, $async.Future<$0.BlockEpoch> request) async* {
    yield* registerBlockEpochNtfn(call, await request);
  }

  $async.Stream<$0.ConfEvent> registerConfirmationsNtfn(
      $grpc.ServiceCall call, $0.ConfRequest request);
  $async.Stream<$0.SpendEvent> registerSpendNtfn(
      $grpc.ServiceCall call, $0.SpendRequest request);
  $async.Stream<$0.BlockEpoch> registerBlockEpochNtfn(
      $grpc.ServiceCall call, $0.BlockEpoch request);
}
