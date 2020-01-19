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
