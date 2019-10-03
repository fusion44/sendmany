import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DecodePayReqBlocEvent extends Equatable {}

class DecodePayReqEvent extends DecodePayReqBlocEvent {
  final String payReq;

  DecodePayReqEvent(this.payReq);

  @override
  List<Object> get props => [payReq];
}

class ResetDecodePayReqEvent extends DecodePayReqBlocEvent {
  @override
  List<Object> get props => const [];
}
