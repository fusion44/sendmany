import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class DecodePayReqBlocEvent extends Equatable {
  DecodePayReqBlocEvent([List props = const []]) : super(props);
}

class DecodePayReqEvent extends DecodePayReqBlocEvent {
  final String payReq;

  DecodePayReqEvent(this.payReq);
}

class ResetDecodePayReqEvent extends DecodePayReqBlocEvent {}
