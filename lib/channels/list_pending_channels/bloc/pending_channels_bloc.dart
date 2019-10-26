import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart';
import 'package:sendmany/common/models/models.dart';
import './bloc.dart';

class ListPendingChannelsBloc
    extends Bloc<ListPendingChannelsEvent, ListPendingChannelsState> {
  @override
  ListPendingChannelsState get initialState =>
      InitialListPendingChannelsState();

  @override
  Stream<ListPendingChannelsState> mapEventToState(
    ListPendingChannelsEvent event,
  ) async* {
    var client = LnConnectionDataProvider().lightningClient;

    yield (PendingChannelsLoadingState());

    PendingChannelsRequest req = PendingChannelsRequest();

    try {
      PendingChannelsResponse resp = await client.pendingChannels(req);
      yield PendingChannelsLoadedState(PendingChannels.fromGRPC(resp));
    } on GrpcError catch (e) {
      if (state is PendingChannelsLoadedState) {
        PendingChannelsLoadedState st = state;
        yield LoadPendingChannelsErrorState(e.toString(), st.pendingChannels);
      } else {
        yield LoadPendingChannelsErrorState(e.toString());
      }
    }
  }
}
