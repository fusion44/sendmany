import 'package:equatable/equatable.dart';

import '../models/message_item.dart';

abstract class ListMessagesBaseEvent extends Equatable {
  const ListMessagesBaseEvent();
}

/// Fetches all messages from the database.
class ListMessagesEvent extends ListMessagesBaseEvent {
  @override
  List<Object> get props => [];
}

/// When a new message was added.
class AddMessageEvent extends ListMessagesBaseEvent {
  /// The new [MessageItem]
  final MessageItem message;

  AddMessageEvent(this.message);

  @override
  List<Object> get props => [message.id];
}

/// When a message state changed.
class MessageUpdatedEvent extends ListMessagesBaseEvent {
  /// The changed message
  final MessageItem message;

  MessageUpdatedEvent(this.message);

  @override
  List<Object> get props => [message.id];
}
