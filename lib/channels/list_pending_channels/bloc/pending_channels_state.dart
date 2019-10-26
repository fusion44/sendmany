import 'package:equatable/equatable.dart';
import 'package:sendmany/common/models/models.dart';

abstract class ListPendingChannelsState extends Equatable {
  const ListPendingChannelsState();
}

class InitialListPendingChannelsState extends ListPendingChannelsState {
  @override
  List<Object> get props => [];
}

class PendingChannelsLoadingState extends ListPendingChannelsState {
  @override
  List<Object> get props => null;
}

class PendingChannelsLoadedState extends ListPendingChannelsState {
  final PendingChannels pendingChannels;

  PendingChannelsLoadedState(this.pendingChannels);

  @override
  List<Object> get props => [pendingChannels];
}

/// If there was an error during loading of the channels
class LoadPendingChannelsErrorState extends ListPendingChannelsState {
  /// The error message
  final String error;

  /// If we can recover data from last successful load,
  /// this will not be null
  final PendingChannels pendingChannels;

  LoadPendingChannelsErrorState(this.error, [this.pendingChannels]);

  @override
  List<Object> get props => [error, pendingChannels];
}
