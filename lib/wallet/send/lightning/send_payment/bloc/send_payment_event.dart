import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SendPaymentEvent extends Equatable {}

class SendPaymentViaInvoiceEvent extends SendPaymentEvent {
  final String invoice;

  SendPaymentViaInvoiceEvent(this.invoice);

  @override
  List<Object> get props => [invoice];
}
