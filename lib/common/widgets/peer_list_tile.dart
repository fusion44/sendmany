import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendmany/chat/chat_page.dart';
import 'package:sendmany/chat/list_messages/bloc.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/node/peers/bloc/bloc.dart';
import 'package:sendmany/wallet/balance/bloc/bloc.dart';

class PeerListTile extends StatelessWidget {
  final bool chatActive;
  final LoadedPeer p;

  const PeerListTile({Key key, this.p, this.chatActive = false})
      : super(key: key);

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
        trailing: chatActive
            ? IconButton(
                icon: Icon(Icons.chat),
                onPressed: () {
                  var prov = MultiBlocProvider(
                    providers: [
                      BlocProvider<LnInfoBloc>.value(
                        value: BlocProvider.of<LnInfoBloc>(context),
                      ),
                      BlocProvider<ListMessagesBloc>.value(
                        value: BlocProvider.of<ListMessagesBloc>(context),
                      ),
                    ],
                    child: ChatPage(p.peer.pubKey),
                  );
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => prov),
                  );
                },
              )
            : null,
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
