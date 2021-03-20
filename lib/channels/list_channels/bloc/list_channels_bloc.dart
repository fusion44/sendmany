import 'dart:async';

import 'package:bloc/bloc.dart';

import '../list_channels_repository/list_channel_repository.dart';
import 'list_channels_event.dart';
import 'list_channels_state.dart';

class ListChannelsBloc extends Bloc<ListChannelsEvent, ListChannelsState> {
  final ListChannelsRepository _listChannelsRepository;

  ListChannelsBloc(this._listChannelsRepository)
      : super(InitialListChannelsState());

  @override
  Stream<ListChannelsState> mapEventToState(
    ListChannelsEvent event,
  ) async* {
    if (event is LoadChannelList) {
      yield ChannelsLoadingState();
      final channels = await _listChannelsRepository.getChannelsList(
        forceReload: event.forceReload,
      );
      yield ChannelsLoadedState(channels);
    }
  }
}
