import 'package:equatable/equatable.dart';
import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';

@immutable
class AddInvoiceEvent extends Equatable {
  final String memo;
  final Int64 value;
  final String fallbackOnchain;

  AddInvoiceEvent(
    this.memo,
    this.value, [
    this.fallbackOnchain = "",
  ]);

  @override
  List<Object> get props => [memo, value, fallbackOnchain];
}
