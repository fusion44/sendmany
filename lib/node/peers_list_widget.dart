import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/widgets.dart';
import 'package:sendmany/node/peers/bloc/bloc.dart';

class PeerListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      cubit: BlocProvider.of<ListPeersBloc>(context),
      builder: (BuildContext context, ListPeersState state) {
        if (state is PeersLoadedState) {
          var peers = <Widget>[];
          var errorPeers = <Widget>[];

          state.peers.forEach((k, peer) {
            if (peer.error == null) {
              peers.add(PeerListTile(peer));
            } else {
              errorPeers.add(PeerListTile(peer));
            }
          });

          return SendManyCard(tr(context, 'node.peers'), [
            ...peers,
            Divider(),
            ...errorPeers,
          ]);
        } else {
          return SendManyCard(
            tr(context, 'node.peers'),
            [SpinKitRipple(color: sendManyBlue200, size: 150)],
          );
        }
      },
    );
  }
}
