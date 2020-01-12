import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import 'list_channels_state.dart';
import 'list_channels_event.dart';
import 'package:sendmany/common/models/models.dart';

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
      var req = grpc.ListChannelsRequest();
      var resp = await client.listChannels(req);
      var channels = <Channel>[];
      for (var c in resp.channels) {
        var req = grpc.NodeInfoRequest();
        req.pubKey = c.remotePubkey;
        req.includeChannels = false;

        try {
          var nodeInfoResp = await client.getNodeInfo(req);
          var ni = NodeInfo.fromGRPC(nodeInfoResp);
          channels.add(EstablishedChannel.fromGRPC(c, ni));
        } on GrpcError catch (e) {
          print(e.toString());
        }
      }

      yield ChannelsLoadedState(channels);
    }
  }
}
