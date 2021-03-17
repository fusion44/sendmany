import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'received_notification.dart';
part 'send_notification_event.dart';
part 'send_notification_state.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

final BehaviorSubject<ReceivedNotification> didReceiveLocalNotificationSubject =
    BehaviorSubject<ReceivedNotification>();

final BehaviorSubject<String> selectNotificationSubject =
    BehaviorSubject<String>();

NotificationAppLaunchDetails notificationAppLaunchDetails;

class SendLocalNotificationBloc extends Bloc<SendLocalNotificationBlocBaseEvent,
    SendLocalNotificationBlocBaseState> {
  SendLocalNotificationBloc() : super(SendLocalNotificationBlocInitial());

  static void initializeNotificationSystem() async {
    notificationAppLaunchDetails =
        await flutterLocalNotificationsPlugin.getNotificationAppLaunchDetails();

    var initializationSettingsAndroid =
        AndroidInitializationSettings('app_icon');
    // Note: permissions aren't requested here just to demonstrate that can be done later using the `requestPermissions()` method
    // of the `IOSFlutterLocalNotificationsPlugin` class
    var initializationSettingsIOS = IOSInitializationSettings(
        requestAlertPermission: false,
        requestBadgePermission: false,
        requestSoundPermission: false,
        onDidReceiveLocalNotification:
            (int id, String title, String body, String payload) async {
          didReceiveLocalNotificationSubject.add(ReceivedNotification(
              id: id, title: title, body: body, payload: payload));
        });
    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    await flutterLocalNotificationsPlugin.initialize(initializationSettings,
        onSelectNotification: (String payload) async {
      selectNotificationSubject.add(payload);
    });
  }

  @override
  Stream<SendLocalNotificationBlocBaseState> mapEventToState(
    SendLocalNotificationBlocBaseEvent event,
  ) async* {
    if (event is SendLocalNotificationEvent) {
      var androidPlatformChannelSpecifics = AndroidNotificationDetails(
        event.channelID,
        event.channelName,
        event.channelDescription,
        importance: event.importance,
        priority: event.priority,
        ticker: event.ticker,
      );
      var iOSPlatformChannelSpecifics = IOSNotificationDetails();
      var platformChannelSpecifics = NotificationDetails(
        android: androidPlatformChannelSpecifics,
        iOS: iOSPlatformChannelSpecifics,
      );
      await flutterLocalNotificationsPlugin.show(
        event.id,
        event.title,
        event.body,
        platformChannelSpecifics,
        payload: event.payload,
      );
    }
  }
}
