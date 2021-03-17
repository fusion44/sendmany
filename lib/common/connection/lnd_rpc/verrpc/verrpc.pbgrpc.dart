///
//  Generated code. Do not modify.
//  source: verrpc/verrpc.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'verrpc.pb.dart' as $0;
export 'verrpc.pb.dart';

class VersionerClient extends $grpc.Client {
  static final _$getVersion = $grpc.ClientMethod<$0.VersionRequest, $0.Version>(
      '/verrpc.Versioner/GetVersion',
      ($0.VersionRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Version.fromBuffer(value));

  VersionerClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.Version> getVersion($0.VersionRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$getVersion, request, options: options);
  }
}

abstract class VersionerServiceBase extends $grpc.Service {
  $core.String get $name => 'verrpc.Versioner';

  VersionerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.VersionRequest, $0.Version>(
        'GetVersion',
        getVersion_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.VersionRequest.fromBuffer(value),
        ($0.Version value) => value.writeToBuffer()));
  }

  $async.Future<$0.Version> getVersion_Pre(
      $grpc.ServiceCall call, $async.Future<$0.VersionRequest> request) async {
    return getVersion(call, await request);
  }

  $async.Future<$0.Version> getVersion(
      $grpc.ServiceCall call, $0.VersionRequest request);
}
