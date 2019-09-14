import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/models.dart';

@immutable
abstract class AddInvoiceState extends Equatable {
  AddInvoiceState([List props = const <dynamic>[]]) : super(props);
}

class InitialAddinvoiceState extends AddInvoiceState {}

class AddedInvoiceState extends AddInvoiceState {
  final Invoice invoice;

  AddedInvoiceState(
    this.invoice, [
    List props = const <dynamic>[],
  ]) : super(props);
}
