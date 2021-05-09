import 'package:meta/meta.dart';

import 'list_transactions_options.dart';

@immutable
class ListTxEvent {
  List<Object> get props => const [];
}

class LoadTxEvent extends ListTxEvent {
  /// Set to false when fetching in headless mode
  final bool updateTxPrefData;

  /// The maximum number of invoices returned
  final int numMaxInvoices;

  /// Options to control which transactions are included in the final list
  final ListTxOptions options;

  LoadTxEvent({
    this.updateTxPrefData = true,
    this.numMaxInvoices = 99999,
    this.options = const ListTxOptions(),
  });

  @override
  List<Object> get props => [updateTxPrefData, numMaxInvoices, options];
}
