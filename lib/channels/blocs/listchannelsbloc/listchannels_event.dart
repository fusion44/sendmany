import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ListChannelsEvent extends Equatable {
  ListChannelsEvent([List props = const []]) : super(props);
}

@immutable
class LoadChannels extends ListChannelsEvent {
  LoadChannels([List props = const []]) : super(props);
}
