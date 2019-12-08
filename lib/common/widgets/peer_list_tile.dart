import 'package:flutter/material.dart';
import 'package:sendmany/chat/chat_page.dart';
import 'package:sendmany/common/models/peer.dart';
import 'package:sendmany/common/utils.dart';

class PeerListTile extends StatelessWidget {
  final Peer peer;

  const PeerListTile({Key key, this.peer}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        // TODO: implement me
        showSnackbar(context, 'Tapped ${peer.nodeInfo.node.alias}');
      },
      leading: CircleAvatar(backgroundColor: peer.nodeInfo.node.color),
      dense: true,
      title: Text(peer.nodeInfo.node.alias, overflow: TextOverflow.ellipsis),
      subtitle: Text(peer.pubKey, overflow: TextOverflow.ellipsis),
      trailing: IconButton(
        icon: Icon(Icons.chat),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return ChatPage(peer);
              },
            ),
          );
        },
      ),
    );
  }
}
