import 'package:meta/meta.dart';

@immutable
class ListTxEvent {
  List<Object> get props => const [];
}

class LoadTxEvent extends ListTxEvent {
  @override
  List<Object> get props => const [];
}

class SetFilterTxEvent extends ListTxEvent {
  final bool includeLightningInvoices;
  final bool includeLightningPayments;
  final bool includeOnchainTx;
  final bool onlySettled;
  final bool reversed;

  SetFilterTxEvent({
    this.includeLightningInvoices = true,
    this.includeLightningPayments = true,
    this.includeOnchainTx = true,
    this.onlySettled = false,
    this.reversed = true,
  });

  @override
  List<Object> get props => [
        includeLightningInvoices,
        includeLightningPayments,
        includeOnchainTx,
        onlySettled,
        reversed,
      ];
}

class ResetFilterTxEvent extends ListTxEvent {
  @override
  List<Object> get props => [];
}

class ChangePollTxIntervalEvent extends ListTxEvent {
  // 0 turns polling off
  final int seconds;

  ChangePollTxIntervalEvent(this.seconds);

  @override
  List<Object> get props => [seconds];
}
