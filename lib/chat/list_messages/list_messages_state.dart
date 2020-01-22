import 'package:equatable/equatable.dart';
import 'package:sendmany/chat/models/message_item.dart';

abstract class ListMessagesBaseState extends Equatable {
  const ListMessagesBaseState();
}

class InitialListMessagesState extends ListMessagesBaseState {
  @override
  List<Object> get props => [];
}

class MessageListLoadedState extends ListMessagesBaseState {
  final Map<String, List<MessageItem>> messages;

  MessageListLoadedState(this.messages);

  @override
  List<Object> get props => [];
}

class NewMessageAddedState extends ListMessagesBaseState {
  final MessageItem message;

  NewMessageAddedState(this.message);

  @override
  List<Object> get props => [message.id];
}

class MessageUpdatedState extends ListMessagesBaseState {
  final MessageItem message;

  MessageUpdatedState(this.message);

  @override
  List<Object> get props => [message.id];
}
