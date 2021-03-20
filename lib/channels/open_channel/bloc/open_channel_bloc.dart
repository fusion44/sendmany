import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:convert/convert.dart';
import 'package:grpc/grpc.dart';

import '../../../common/connection/connection_manager/bloc.dart';
import '../../../common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../../../common/models/models.dart';
import 'bloc.dart';

class OpenChannelBloc extends Bloc<OpenChannelEvent, OpenChannelState> {
  OpenChannelBloc() : super(InitialOpenChannelState());

  @override
  Stream<OpenChannelState> mapEventToState(OpenChannelEvent e) async* {
    yield InitiateOpenChannelState();
    var client = LnConnectionDataProvider().lightningClient;

    var connectReq = grpc.ConnectPeerRequest();
    connectReq.addr = e.address.toGRPC();
    connectReq.perm = false;

    try {
      await client.connectPeer(connectReq);
    } on GrpcError catch (e) {
      if (!e.message.startsWith('already connected to peer')) {
        print(e);
        yield OpenChannelErrorState(e.message);
        return;
      }
    }

    var req = grpc.OpenChannelRequest();
    req.nodePubkey = hex.decode(e.address.pubkey);
    req.localFundingAmount = e.localFundingAmount;
    if (e.pushSat != null) req.pushSat = e.pushSat;
    if (e.targetConf != null) req.targetConf = e.targetConf;
    if (e.satPerByte != null) req.satPerByte = e.satPerByte;
    if (e.private != null) req.private = e.private;
    if (e.minHtlcMsat != null) req.minHtlcMsat = e.minHtlcMsat;
    if (e.remoteCsvDelay != null) req.remoteCsvDelay = e.remoteCsvDelay;
    if (e.minConfs != null) req.minConfs = e.minConfs;
    if (e.spendUnconfirmed != null) req.spendUnconfirmed = e.spendUnconfirmed;

    try {
      var cp = await client.openChannelSync(req);
      yield OpenChannelInitiatedState(ChannelPoint.fromGRPC(cp));
    } on GrpcError catch (e) {
      print(e);
      yield OpenChannelErrorState(e.message);
    }
  }
}
