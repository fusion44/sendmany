import 'package:meta/meta.dart';
import 'package:sendmany/chat/models/message_item.dart';

@immutable
abstract class SendMessageBaseState {}

class InitialSendMessageState extends SendMessageBaseState {}

class SendingMessageState extends SendMessageBaseState {
  final MessageItem m;

  SendingMessageState(this.m);
}

class MessageDeliveredState extends SendMessageBaseState {
  final MessageItem m;

  MessageDeliveredState(this.m);
}

class SendMessageErrorState extends SendMessageBaseState {
  final MessageItem m;
  final String errorMessage;

  SendMessageErrorState(this.m, this.errorMessage);
}
