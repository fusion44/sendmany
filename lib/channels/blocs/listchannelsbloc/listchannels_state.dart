import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/lightning/lnd/lnd_rpc.dart';

@immutable
abstract class ListChannelsState extends Equatable {
  ListChannelsState([List props = const []]) : super(props);
}

class InitialListchannelsState extends ListChannelsState {}

class ChannelsLoadingState extends ListChannelsState {}

class ChannelsLoadedState extends ListChannelsState {
  final ListChannelsResponse channels;

  ChannelsLoadedState(this.channels, [List props = const []]) : super(props);
}
