import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart';

@immutable
abstract class SendPaymentState extends Equatable {}

class InitialSendPaymentState extends SendPaymentState {
  @override
  List<Object> get props => const [];
}

class SendPaymentResponseState extends SendPaymentState {
  final SendResponse response;

  SendPaymentResponseState(this.response);

  @override
  List<Object> get props => [response];
}
