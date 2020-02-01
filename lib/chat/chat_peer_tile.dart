import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendmany/common/blocs/get_remote_node_info/bloc.dart';
import 'package:sendmany/common/models/models.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../wallet/balance/bloc/bloc.dart';
import 'chat_page.dart';
import 'list_messages/bloc.dart';
import 'models/message_item.dart';

class ChatPeerListTile extends StatelessWidget {
  final RemoteNodeInfo p;
  final MessageItem lastMessage;
  final Function(String) onTap;

  const ChatPeerListTile(
    this.p,
    this.lastMessage,
    this.onTap, {
    Key key,
  }) : super(key: key);

  void _onTap(BuildContext context) {
    var repoProvider = RepositoryProvider.value(
      value: RepositoryProvider.of<GetRemoteNodeInfoRepository>(context),
      child: ChatPage(p.node.pubKey),
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

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return ListTile(
      onTap: () => _onTap(context),
      leading: CircleAvatar(backgroundColor: p.node.color),
      title: Text(p.node.alias, overflow: TextOverflow.ellipsis),
      subtitle: Text(lastMessage.text, overflow: TextOverflow.ellipsis),
      trailing: Text(
        timeago.format(lastMessage.date, locale: 'en_short'),
        style: theme.textTheme.caption,
      ),
    );
  }
}
