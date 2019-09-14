import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/models.dart';

@immutable
abstract class WatchInvoicesState extends Equatable {
  WatchInvoicesState([List props = const <dynamic>[]]) : super(props);
}

class InitialWatchInvoicesState extends WatchInvoicesState {}

class InvoiceChangedState extends WatchInvoicesState {
  final Invoice invoice;

  InvoiceChangedState(this.invoice) : super([invoice]);
}
