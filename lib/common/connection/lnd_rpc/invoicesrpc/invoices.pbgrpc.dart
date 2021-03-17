///
//  Generated code. Do not modify.
//  source: invoicesrpc/invoices.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'invoices.pb.dart' as $1;
import '../rpc.pb.dart' as $0;
export 'invoices.pb.dart';

class InvoicesClient extends $grpc.Client {
  static final _$subscribeSingleInvoice =
      $grpc.ClientMethod<$1.SubscribeSingleInvoiceRequest, $0.Invoice>(
          '/invoicesrpc.Invoices/SubscribeSingleInvoice',
          ($1.SubscribeSingleInvoiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Invoice.fromBuffer(value));
  static final _$cancelInvoice =
      $grpc.ClientMethod<$1.CancelInvoiceMsg, $1.CancelInvoiceResp>(
          '/invoicesrpc.Invoices/CancelInvoice',
          ($1.CancelInvoiceMsg value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.CancelInvoiceResp.fromBuffer(value));
  static final _$addHoldInvoice =
      $grpc.ClientMethod<$1.AddHoldInvoiceRequest, $1.AddHoldInvoiceResp>(
          '/invoicesrpc.Invoices/AddHoldInvoice',
          ($1.AddHoldInvoiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.AddHoldInvoiceResp.fromBuffer(value));
  static final _$settleInvoice =
      $grpc.ClientMethod<$1.SettleInvoiceMsg, $1.SettleInvoiceResp>(
          '/invoicesrpc.Invoices/SettleInvoice',
          ($1.SettleInvoiceMsg value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $1.SettleInvoiceResp.fromBuffer(value));

  InvoicesClient($grpc.ClientChannel channel,
      {$grpc.CallOptions options,
      $core.Iterable<$grpc.ClientInterceptor> interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseStream<$0.Invoice> subscribeSingleInvoice(
      $1.SubscribeSingleInvoiceRequest request,
      {$grpc.CallOptions options}) {
    return $createStreamingCall(
        _$subscribeSingleInvoice, $async.Stream.fromIterable([request]),
        options: options);
  }

  $grpc.ResponseFuture<$1.CancelInvoiceResp> cancelInvoice(
      $1.CancelInvoiceMsg request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$cancelInvoice, request, options: options);
  }

  $grpc.ResponseFuture<$1.AddHoldInvoiceResp> addHoldInvoice(
      $1.AddHoldInvoiceRequest request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$addHoldInvoice, request, options: options);
  }

  $grpc.ResponseFuture<$1.SettleInvoiceResp> settleInvoice(
      $1.SettleInvoiceMsg request,
      {$grpc.CallOptions options}) {
    return $createUnaryCall(_$settleInvoice, request, options: options);
  }
}

abstract class InvoicesServiceBase extends $grpc.Service {
  $core.String get $name => 'invoicesrpc.Invoices';

  InvoicesServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$1.SubscribeSingleInvoiceRequest, $0.Invoice>(
            'SubscribeSingleInvoice',
            subscribeSingleInvoice_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $1.SubscribeSingleInvoiceRequest.fromBuffer(value),
            ($0.Invoice value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.CancelInvoiceMsg, $1.CancelInvoiceResp>(
        'CancelInvoice',
        cancelInvoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.CancelInvoiceMsg.fromBuffer(value),
        ($1.CancelInvoiceResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$1.AddHoldInvoiceRequest, $1.AddHoldInvoiceResp>(
            'AddHoldInvoice',
            addHoldInvoice_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $1.AddHoldInvoiceRequest.fromBuffer(value),
            ($1.AddHoldInvoiceResp value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$1.SettleInvoiceMsg, $1.SettleInvoiceResp>(
        'SettleInvoice',
        settleInvoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $1.SettleInvoiceMsg.fromBuffer(value),
        ($1.SettleInvoiceResp value) => value.writeToBuffer()));
  }

  $async.Stream<$0.Invoice> subscribeSingleInvoice_Pre($grpc.ServiceCall call,
      $async.Future<$1.SubscribeSingleInvoiceRequest> request) async* {
    yield* subscribeSingleInvoice(call, await request);
  }

  $async.Future<$1.CancelInvoiceResp> cancelInvoice_Pre($grpc.ServiceCall call,
      $async.Future<$1.CancelInvoiceMsg> request) async {
    return cancelInvoice(call, await request);
  }

  $async.Future<$1.AddHoldInvoiceResp> addHoldInvoice_Pre(
      $grpc.ServiceCall call,
      $async.Future<$1.AddHoldInvoiceRequest> request) async {
    return addHoldInvoice(call, await request);
  }

  $async.Future<$1.SettleInvoiceResp> settleInvoice_Pre($grpc.ServiceCall call,
      $async.Future<$1.SettleInvoiceMsg> request) async {
    return settleInvoice(call, await request);
  }

  $async.Stream<$0.Invoice> subscribeSingleInvoice(
      $grpc.ServiceCall call, $1.SubscribeSingleInvoiceRequest request);
  $async.Future<$1.CancelInvoiceResp> cancelInvoice(
      $grpc.ServiceCall call, $1.CancelInvoiceMsg request);
  $async.Future<$1.AddHoldInvoiceResp> addHoldInvoice(
      $grpc.ServiceCall call, $1.AddHoldInvoiceRequest request);
  $async.Future<$1.SettleInvoiceResp> settleInvoice(
      $grpc.ServiceCall call, $1.SettleInvoiceMsg request);
}
