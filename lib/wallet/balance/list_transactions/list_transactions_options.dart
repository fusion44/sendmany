import 'package:equatable/equatable.dart';

class ListTxOptions extends Equatable {
  final bool includeLightningInvoices;
  final bool includeUnsettledInvoices;
  final bool includeLightningPayments;
  final bool includeFailedPayments;
  final bool includeOnchainTx;
  final bool groupTransactions;

  const ListTxOptions({
    this.includeLightningInvoices = true,
    this.includeUnsettledInvoices = true,
    this.includeLightningPayments = true,
    this.includeFailedPayments = true,
    this.includeOnchainTx = true,
    this.groupTransactions = true,
  });

  ListTxOptions.only({
    lightningInvoices = false,
    unsettledInvoices = false,
    lightningPayments = false,
    failedPayments = false,
    onchainTx = false,
    groupTransactions = false,
  })  : includeLightningInvoices = lightningInvoices,
        includeUnsettledInvoices = unsettledInvoices,
        includeLightningPayments = lightningPayments,
        includeFailedPayments = failedPayments,
        includeOnchainTx = onchainTx,
        groupTransactions = groupTransactions;

  @override
  List<Object> get props => [
        includeLightningInvoices,
        includeUnsettledInvoices,
        includeLightningPayments,
        includeFailedPayments,
        includeOnchainTx,
        groupTransactions
      ];
}
