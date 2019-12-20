import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart';
import 'list_channels_state.dart';
import 'list_channels_event.dart';

class ListChannelsBloc extends Bloc<ListChannelsEvent, ListChannelsState> {
  @override
  ListChannelsState get initialState => InitialListChannelsState();

  @override
  Stream<ListChannelsState> mapEventToState(
    ListChannelsEvent event,
  ) async* {
    if (event is LoadChannelList) {
      var client = LnConnectionDataProvider().lightningClient;
      yield ChannelsLoadingState();
      var req = ListChannelsRequest();
      var resp = await client.listChannels(req);
      yield ChannelsLoadedState(resp);
    }
  }
}
