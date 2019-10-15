import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart';
import './bloc.dart';

class ListChannelsBloc extends Bloc<ListChannelsEvent, ListChannelsState> {
  @override
  ListChannelsState get initialState => InitialListchannelsState();

  @override
  Stream<ListChannelsState> mapEventToState(
    ListChannelsEvent event,
  ) async* {
    if (event is LoadChannels) {
      var client = LnConnectionDataProvider().lightningClient;
      var macaroon = LnConnectionDataProvider().macaroon;
      yield ChannelsLoadingState();
      ListChannelsRequest req = ListChannelsRequest();
      var opts = CallOptions(metadata: {
        "macaroon": macaroon,
      });
      ListChannelsResponse resp = await client.listChannels(req, options: opts);
      yield ChannelsLoadedState(resp);
    }
  }
}
