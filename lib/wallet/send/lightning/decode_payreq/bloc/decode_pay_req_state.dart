import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/connection/lnd_rpc/rpc.pbgrpc.dart';

@immutable
abstract class DecodePayReqState extends Equatable {
  DecodePayReqState([List props = const []]) : super(props);
}

class InitialDecodePayReqBlocState extends DecodePayReqState {}

class DecodingPayReqState extends DecodePayReqState {
  final String payReq;

  DecodingPayReqState(this.payReq);
}

class DecodedPayReqState extends DecodePayReqState {
  final PayReq req;

  DecodedPayReqState(this.req);
}

class DecodingPayReqErrorState extends DecodePayReqState {
  final String payReq;
  final String message;

  DecodingPayReqErrorState(this.payReq, this.message);
}
