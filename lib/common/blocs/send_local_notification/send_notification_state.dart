part of 'send_notification_bloc.dart';

abstract class SendLocalNotificationBlocBaseState extends Equatable {
  const SendLocalNotificationBlocBaseState();

  @override
  List<Object> get props => [];
}

class SendLocalNotificationBlocInitial extends SendLocalNotificationBlocBaseState {}
