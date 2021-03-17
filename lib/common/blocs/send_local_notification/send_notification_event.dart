part of 'send_notification_bloc.dart';

abstract class SendLocalNotificationBlocBaseEvent extends Equatable {
  const SendLocalNotificationBlocBaseEvent();

  @override
  List<Object> get props => [];
}

class SendLocalNotificationEvent extends SendLocalNotificationBlocBaseEvent {
  final String channelID;
  final String channelName;
  final String channelDescription;
  final Importance importance;
  final Priority priority;
  final int id;
  final String title;
  final String body;
  final String ticker;
  final String payload;

  SendLocalNotificationEvent(
    this.channelID,
    this.channelName,
    this.channelDescription,
    this.id,
    this.title,
    this.body, {
    this.importance = Importance.defaultImportance,
    this.priority = Priority.defaultPriority,
    this.ticker = '',
    this.payload = '',
  });

  @override
  List<Object> get props => [
        channelID,
        channelName,
        channelDescription,
        id,
        title,
        body,
        importance,
        priority,
        ticker,
        payload,
      ];
}
