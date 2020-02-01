import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../chat/chat_page.dart';
import '../../chat/list_messages/bloc.dart';
import '../../node/peers/bloc/bloc.dart';
import '../../wallet/balance/bloc/bloc.dart';
import '../blocs/get_remote_node_info/bloc.dart';

class PeerListTile extends StatelessWidget {
  final LoadedPeer p;

  const PeerListTile(this.p, {Key key}) : super(key: key);

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

  void _onTap(BuildContext context) {
    var repoProvider = RepositoryProvider.value(
      value: RepositoryProvider.of<GetRemoteNodeInfoRepository>(context),
      child: ChatPage(p.peer.pubKey),
    );
    var prov = MultiBlocProvider(
      providers: [
        BlocProvider<LnInfoBloc>.value(
          value: BlocProvider.of<LnInfoBloc>(context),
        ),
        BlocProvider<ListMessagesBloc>.value(
          value: BlocProvider.of<ListMessagesBloc>(context),
        ),
      ],
      child: repoProvider,
    );
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => prov),
    );
  }
}
