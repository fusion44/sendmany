import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart';

@immutable
abstract class ListChannelsState extends Equatable {}

class InitialListchannelsState extends ListChannelsState {
  @override
  List<Object> get props => const [];
}

class ChannelsLoadingState extends ListChannelsState {
  @override
  List<Object> get props => const [];
}

class ChannelsLoadedState extends ListChannelsState {
  final ListChannelsResponse channels;

  ChannelsLoadedState(this.channels);

  @override
  List<Object> get props => [channels];
}
