import 'package:equatable/equatable.dart';

abstract class ListMessagesBaseEvent extends Equatable {
  const ListMessagesBaseEvent();
}

class ListMessagesEvent extends ListMessagesBaseEvent {
  @override
  List<Object> get props => [];
}
