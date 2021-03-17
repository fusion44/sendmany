import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../common/models/models.dart';

@immutable
abstract class ListChannelsState extends Equatable {}

class InitialListChannelsState extends ListChannelsState {
  @override
  List<Object> get props => const [];
}

class ChannelsLoadingState extends ListChannelsState {
  @override
  List<Object> get props => const [];
}

class ChannelsLoadedState extends ListChannelsState {
  final List<Channel> channels;

  ChannelsLoadedState(this.channels);

  @override
  List<Object> get props => [channels];
}
