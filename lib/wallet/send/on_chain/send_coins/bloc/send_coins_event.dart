import 'package:equatable/equatable.dart';
import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';

@immutable
class SendCoinsEvent extends Equatable {
  final String address;
  final Int64 amount;
  final int targetConf;
  final Int64 satPerByte;
  final bool sendAll;

  SendCoinsEvent({
    @required this.address,
    @required this.amount,
    this.targetConf = 6,
    this.satPerByte = Int64.ZERO,
    this.sendAll = false,
    List props = const [],
  }) : super(props);
}
