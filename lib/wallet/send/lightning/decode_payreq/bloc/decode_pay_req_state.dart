import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../../../common/connection/lnd_rpc/rpc.pbgrpc.dart';

@immutable
abstract class DecodePayReqState extends Equatable {}

class InitialDecodePayReqBlocState extends DecodePayReqState {
  @override
  List<Object> get props => const [];
}

class DecodingPayReqState extends DecodePayReqState {
  final String payReq;

  DecodingPayReqState(this.payReq);

  @override
  List<Object> get props => [payReq];
}

class DecodedPayReqState extends DecodePayReqState {
  final PayReq req;
  final String reqString;

  DecodedPayReqState(this.req, this.reqString);

  @override
  List<Object> get props => [req, reqString];
}

class DecodingPayReqErrorState extends DecodePayReqState {
  final String payReq;
  final String message;

  DecodingPayReqErrorState(this.payReq, this.message);

  @override
  List<Object> get props => [payReq, message];
}
