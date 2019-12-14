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
      bloc: BlocProvider.of<ListPeersBloc>(context),
      builder: (BuildContext context, ListPeersState state) {
        if (state is PeersLoadedState) {
          List<Widget> peers = [];

          for (int i = 0; i < state.peers.length; i++) {
            peers.add(PeerListTile(p: state.peers[i]));
            if (i != state.peers.length - 1) peers.add(Divider());
          }

          return SendManyCard(
            tr(context, 'node.peers'),
            peers,
          );
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
