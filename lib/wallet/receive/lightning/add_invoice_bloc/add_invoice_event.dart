import 'package:equatable/equatable.dart';
import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';

@immutable
class AddInvoiceEvent extends Equatable {
  final String memo;
  final Int64 value;
  final bool fallbackOnchain;

  AddInvoiceEvent(
    this.memo,
    this.value, [
    this.fallbackOnchain = false,
    List props = const <dynamic>[],
  ]) : super(props);
}
