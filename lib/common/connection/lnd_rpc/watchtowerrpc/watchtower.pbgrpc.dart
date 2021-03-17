///
//  Generated code. Do not modify.
//  source: watchtowerrpc/watchtower.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'watchtower.pb.dart' as $0;
export 'watchtower.pb.dart';

class WatchtowerClient extends $grpc.Client {
  static final _$getInfo =
      $grpc.ClientMethod<$0.GetInfoRequest, $0.GetInfoResponse>(
          '/watchtowerrpc.Watchtower/GetInfo',
          ($0.GetInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetInfoResponse.fromBuffer(value));

  WatchtowerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.GetInfoResponse> getInfo($0.GetInfoRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getInfo, request, options: options);
  }
}

abstract class WatchtowerServiceBase extends $grpc.Service {
  $core.String get $name => 'watchtowerrpc.Watchtower';

  WatchtowerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GetInfoRequest, $0.GetInfoResponse>(
        'GetInfo',
        getInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetInfoRequest.fromBuffer(value),
        ($0.GetInfoResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GetInfoResponse> getInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetInfoRequest> request) async {
    return getInfo(call, await request);
  }

  $async.Future<$0.GetInfoResponse> getInfo(
      $grpc.ServiceCall call, $0.GetInfoRequest request);
}
