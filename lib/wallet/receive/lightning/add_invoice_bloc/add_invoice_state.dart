import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/models.dart';

@immutable
abstract class AddInvoiceState extends Equatable {}

class InitialAddinvoiceState extends AddInvoiceState {
  @override
  List<Object> get props => const [];
}

class AddedInvoiceState extends AddInvoiceState {
  final Invoice invoice;

  AddedInvoiceState(this.invoice);

  @override
  List<Object> get props => [invoice];
}
