import 'package:flutter/material.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/node/peers/bloc/bloc.dart';

class PeerListTile extends StatelessWidget {
  final LoadedPeer p;

  const PeerListTile({Key key, this.p}) : super(key: key);

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
        dense: false,
        title: Text(p.nodeInfo.node.alias, overflow: TextOverflow.ellipsis),
        subtitle: Text(p.peer.pubKey, overflow: TextOverflow.ellipsis),
      );
    } else {
      return ListTile(
        onTap: () => _onTap(context),
        dense: false,
        title: Text(p.error.message),
        subtitle: Text(p.peer.pubKey, overflow: TextOverflow.ellipsis),
      );
    }
  }
}
