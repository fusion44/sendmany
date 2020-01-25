import 'package:flutter/material.dart';

import '../../node/peers/bloc/bloc.dart';
import '../utils.dart';

class PeerListTile extends StatelessWidget {
  final LoadedPeer p;

  const PeerListTile(this.p, {Key key}) : super(key: key);

  void _onTap(BuildContext context) {
    // TODO: implement me
    showSnackbar(context, 'Tapped ${p.nodeInfo.node.alias}');
  }

  @override
  Widget build(BuildContext context) {
    if (p.error == null) {
      return ListTile(
        onTap: () => _onTap(context),
        leading: CircleAvatar(backgroundColor: p.nodeInfo.node.color),
        dense: true,
        title: Text(p.nodeInfo.node.alias, overflow: TextOverflow.ellipsis),
        subtitle: Text(p.peer.pubKey, overflow: TextOverflow.ellipsis),
      );
    } else {
      return ListTile(
        dense: true,
        title: Text(p.error.message),
        subtitle: Text(p.peer.pubKey, overflow: TextOverflow.ellipsis),
      );
    }
  }
}
