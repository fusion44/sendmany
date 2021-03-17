///
//  Generated code. Do not modify.
//  source: wtclientrpc/wtclient.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'wtclient.pb.dart' as $0;
export 'wtclient.pb.dart';

class WatchtowerClient extends $grpc.Client {
  static final _$addTower =
      $grpc.ClientMethod<$0.AddTowerRequest, $0.AddTowerResponse>(
          '/wtclientrpc.WatchtowerClient/AddTower',
          ($0.AddTowerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddTowerResponse.fromBuffer(value));
  static final _$removeTower =
      $grpc.ClientMethod<$0.RemoveTowerRequest, $0.RemoveTowerResponse>(
          '/wtclientrpc.WatchtowerClient/RemoveTower',
          ($0.RemoveTowerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RemoveTowerResponse.fromBuffer(value));
  static final _$listTowers =
      $grpc.ClientMethod<$0.ListTowersRequest, $0.ListTowersResponse>(
          '/wtclientrpc.WatchtowerClient/ListTowers',
          ($0.ListTowersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListTowersResponse.fromBuffer(value));
  static final _$getTowerInfo =
      $grpc.ClientMethod<$0.GetTowerInfoRequest, $0.Tower>(
          '/wtclientrpc.WatchtowerClient/GetTowerInfo',
          ($0.GetTowerInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Tower.fromBuffer(value));
  static final _$stats = $grpc.ClientMethod<$0.StatsRequest, $0.StatsResponse>(
      '/wtclientrpc.WatchtowerClient/Stats',
      ($0.StatsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.StatsResponse.fromBuffer(value));
  static final _$policy =
      $grpc.ClientMethod<$0.PolicyRequest, $0.PolicyResponse>(
          '/wtclientrpc.WatchtowerClient/Policy',
          ($0.PolicyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.PolicyResponse.fromBuffer(value));

  WatchtowerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddTowerResponse> addTower($0.AddTowerRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$addTower, request, options: options);
  }

  $grpc.ResponseFuture<$0.RemoveTowerResponse> removeTower(
      $0.RemoveTowerRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$removeTower, request, options: options);
  }

  $grpc.ResponseFuture<$0.ListTowersResponse> listTowers(
      $0.ListTowersRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$listTowers, request, options: options);
  }

  $grpc.ResponseFuture<$0.Tower> getTowerInfo($0.GetTowerInfoRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getTowerInfo, request, options: options);
  }

  $grpc.ResponseFuture<$0.StatsResponse> stats($0.StatsRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$stats, request, options: options);
  }

  $grpc.ResponseFuture<$0.PolicyResponse> policy($0.PolicyRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$policy, request, options: options);
  }
}

abstract class WatchtowerClientServiceBase extends $grpc.Service {
  $core.String get $name => 'wtclientrpc.WatchtowerClient';

  WatchtowerClientServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddTowerRequest, $0.AddTowerResponse>(
        'AddTower',
        addTower_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddTowerRequest.fromBuffer(value),
        ($0.AddTowerResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.RemoveTowerRequest, $0.RemoveTowerResponse>(
            'RemoveTower',
            removeTower_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.RemoveTowerRequest.fromBuffer(value),
            ($0.RemoveTowerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListTowersRequest, $0.ListTowersResponse>(
        'ListTowers',
        listTowers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListTowersRequest.fromBuffer(value),
        ($0.ListTowersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTowerInfoRequest, $0.Tower>(
        'GetTowerInfo',
        getTowerInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.GetTowerInfoRequest.fromBuffer(value),
        ($0.Tower value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StatsRequest, $0.StatsResponse>(
        'Stats',
        stats_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StatsRequest.fromBuffer(value),
        ($0.StatsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PolicyRequest, $0.PolicyResponse>(
        'Policy',
        policy_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PolicyRequest.fromBuffer(value),
        ($0.PolicyResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddTowerResponse> addTower_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddTowerRequest> request) async {
    return addTower(call, await request);
  }

  $async.Future<$0.RemoveTowerResponse> removeTower_Pre($grpc.ServiceCall call,
      $async.Future<$0.RemoveTowerRequest> request) async {
    return removeTower(call, await request);
  }

  $async.Future<$0.ListTowersResponse> listTowers_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListTowersRequest> request) async {
    return listTowers(call, await request);
  }

  $async.Future<$0.Tower> getTowerInfo_Pre($grpc.ServiceCall call,
      $async.Future<$0.GetTowerInfoRequest> request) async {
    return getTowerInfo(call, await request);
  }

  $async.Future<$0.StatsResponse> stats_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StatsRequest> request) async {
    return stats(call, await request);
  }

  $async.Future<$0.PolicyResponse> policy_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PolicyRequest> request) async {
    return policy(call, await request);
  }

  $async.Future<$0.AddTowerResponse> addTower(
      $grpc.ServiceCall call, $0.AddTowerRequest request);
  $async.Future<$0.RemoveTowerResponse> removeTower(
      $grpc.ServiceCall call, $0.RemoveTowerRequest request);
  $async.Future<$0.ListTowersResponse> listTowers(
      $grpc.ServiceCall call, $0.ListTowersRequest request);
  $async.Future<$0.Tower> getTowerInfo(
      $grpc.ServiceCall call, $0.GetTowerInfoRequest request);
  $async.Future<$0.StatsResponse> stats(
      $grpc.ServiceCall call, $0.StatsRequest request);
  $async.Future<$0.PolicyResponse> policy(
      $grpc.ServiceCall call, $0.PolicyRequest request);
}
