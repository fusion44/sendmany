///
//  Generated code. Do not modify.
//  source: autopilotrpc/autopilot.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'autopilot.pb.dart' as $0;
export 'autopilot.pb.dart';

class AutopilotClient extends $grpc.Client {
  static final _$status =
      $grpc.ClientMethod<$0.StatusRequest, $0.StatusResponse>(
          '/autopilotrpc.Autopilot/Status',
          ($0.StatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.StatusResponse.fromBuffer(value));
  static final _$modifyStatus =
      $grpc.ClientMethod<$0.ModifyStatusRequest, $0.ModifyStatusResponse>(
          '/autopilotrpc.Autopilot/ModifyStatus',
          ($0.ModifyStatusRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ModifyStatusResponse.fromBuffer(value));
  static final _$queryScores =
      $grpc.ClientMethod<$0.QueryScoresRequest, $0.QueryScoresResponse>(
          '/autopilotrpc.Autopilot/QueryScores',
          ($0.QueryScoresRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryScoresResponse.fromBuffer(value));
  static final _$setScores =
      $grpc.ClientMethod<$0.SetScoresRequest, $0.SetScoresResponse>(
          '/autopilotrpc.Autopilot/SetScores',
          ($0.SetScoresRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SetScoresResponse.fromBuffer(value));

  AutopilotClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.StatusResponse> status($0.StatusRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$status, request, options: options);
  }

  $grpc.ResponseFuture<$0.ModifyStatusResponse> modifyStatus(
      $0.ModifyStatusRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$modifyStatus, request, options: options);
  }

  $grpc.ResponseFuture<$0.QueryScoresResponse> queryScores(
      $0.QueryScoresRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$queryScores, request, options: options);
  }

  $grpc.ResponseFuture<$0.SetScoresResponse> setScores(
      $0.SetScoresRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$setScores, request, options: options);
  }
}

abstract class AutopilotServiceBase extends $grpc.Service {
  $core.String get $name => 'autopilotrpc.Autopilot';

  AutopilotServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.StatusRequest, $0.StatusResponse>(
        'Status',
        status_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StatusRequest.fromBuffer(value),
        ($0.StatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ModifyStatusRequest, $0.ModifyStatusResponse>(
            'ModifyStatus',
            modifyStatus_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ModifyStatusRequest.fromBuffer(value),
            ($0.ModifyStatusResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.QueryScoresRequest, $0.QueryScoresResponse>(
            'QueryScores',
            queryScores_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryScoresRequest.fromBuffer(value),
            ($0.QueryScoresResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SetScoresRequest, $0.SetScoresResponse>(
        'SetScores',
        setScores_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SetScoresRequest.fromBuffer(value),
        ($0.SetScoresResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.StatusResponse> status_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StatusRequest> request) async {
    return status(call, await request);
  }

  $async.Future<$0.ModifyStatusResponse> modifyStatus_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ModifyStatusRequest> request) async {
    return modifyStatus(call, await request);
  }

  $async.Future<$0.QueryScoresResponse> queryScores_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryScoresRequest> request) async {
    return queryScores(call, await request);
  }

  $async.Future<$0.SetScoresResponse> setScores_Pre($grpc.ServiceCall call,
      $async.Future<$0.SetScoresRequest> request) async {
    return setScores(call, await request);
  }

  $async.Future<$0.StatusResponse> status(
      $grpc.ServiceCall call, $0.StatusRequest request);
  $async.Future<$0.ModifyStatusResponse> modifyStatus(
      $grpc.ServiceCall call, $0.ModifyStatusRequest request);
  $async.Future<$0.QueryScoresResponse> queryScores(
      $grpc.ServiceCall call, $0.QueryScoresRequest request);
  $async.Future<$0.SetScoresResponse> setScores(
      $grpc.ServiceCall call, $0.SetScoresRequest request);
}
