import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class SendPaymentEvent extends Equatable {
  SendPaymentEvent([List props = const []]) : super(props);
}

class SendPaymentViaInvoiceEvent extends SendPaymentEvent {
  final String invoice;

  SendPaymentViaInvoiceEvent(this.invoice);
}
