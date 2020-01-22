import 'package:meta/meta.dart';

@immutable
abstract class SendMessageBaseEvent {}

class SendMessageEvent extends SendMessageBaseEvent {
  final String message;
  final String peer;

  SendMessageEvent(this.message, this.peer);
}
