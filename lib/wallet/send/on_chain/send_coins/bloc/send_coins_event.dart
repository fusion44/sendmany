import 'package:equatable/equatable.dart';
import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';

@immutable
class SendCoinsEvent extends Equatable {
  @override
  List<Object> get props => const [];
}

@immutable
class DoSendCoinsEvent extends SendCoinsEvent {
  final String address;
  final Int64 amount;
  final int targetConf;
  final Int64 satPerByte;
  final bool sendAll;

  DoSendCoinsEvent({
    @required this.address,
    @required this.amount,
    this.targetConf = 6,
    this.satPerByte = Int64.ZERO,
    this.sendAll = false,
  });

  @override
  List<Object> get props => [address, amount, targetConf, satPerByte, sendAll];
}

class ResetSendCoinsEvent extends SendCoinsEvent {
  @override
  List<Object> get props => const [];
}
