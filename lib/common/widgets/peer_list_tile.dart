import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendmany/chat/chat_page.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/node/peers/bloc/bloc.dart';
import 'package:sendmany/wallet/balance/bloc/bloc.dart';

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
        trailing: IconButton(
          icon: Icon(Icons.chat),
          onPressed: () {
            LnInfoBloc bloc = BlocProvider.of<LnInfoBloc>(context);
            Navigator.push(context, MaterialPageRoute(
              builder: (context) {
                return BlocProvider.value(
                  value: bloc,
                  child: ChatPage(p.peer.pubKey),
                );
              },
            ));
          },
        ),
      );
    } else {
      return ListTile(
        onTap: () => _onTap(context),
        dense: false,
        title: Text(p.error.message),
        subtitle: Text(p.peer.pubKey, overflow: TextOverflow.ellipsis),
        trailing: IconButton(
          icon: Icon(Icons.chat),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return ChatPage(p.peer.pubKey);
                },
              ),
            );
          },
        ),
      );
    }
  }
}
