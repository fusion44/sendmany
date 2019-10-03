import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/models.dart';

@immutable
abstract class WatchInvoicesState extends Equatable {}

class InitialWatchInvoicesState extends WatchInvoicesState {
  @override
  List<Object> get props => const [];
}

class InvoiceChangedState extends WatchInvoicesState {
  final Invoice invoice;

  InvoiceChangedState(this.invoice);

  @override
  List<Object> get props => [invoice];
}
