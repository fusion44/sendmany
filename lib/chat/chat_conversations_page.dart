import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../common/blocs/get_remote_node_info/bloc.dart';
import '../common/constants.dart';
import '../wallet/balance/bloc/bloc.dart';
import 'chat_page.dart';
import 'chat_peer_tile.dart';
import 'find_peer_page.dart';
import 'list_messages/bloc.dart';
import 'list_messages/list_messages_bloc.dart';
import 'models/message_item.dart';

class _ChatPeersItem {
  final String key;
  final MessageItem lastMessage;

  _ChatPeersItem(this.key, this.lastMessage);
}

class ChatConversationsPage extends StatefulWidget {
  static final Widget fabIcon = Icon(Icons.edit);
  static final Function fabCallback = (
    context,
    LnInfoBloc lnInfoBloc,
    ListMessagesBloc listMessagesBloc,
    GetRemoteNodeInfoRepository remoteNodeInfoRepo,
  ) async {
    var result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FindPeerPage()),
    );

    if (result != null && result is String) {
      var prov = MultiBlocProvider(
        providers: [
          BlocProvider<LnInfoBloc>.value(value: lnInfoBloc),
          BlocProvider<ListMessagesBloc>.value(value: listMessagesBloc)
        ],
        child: RepositoryProvider.value(
          value: remoteNodeInfoRepo,
          child: ChatPage(result),
        ),
      );

      await Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => prov),
      );
    }
  };

  @override
  _ChatConversationsPageState createState() => _ChatConversationsPageState();
}

class _ChatConversationsPageState extends State<ChatConversationsPage> {
  final TextEditingController _searchPeerController = TextEditingController();
  StreamSubscription<ListMessagesBaseState> _sub;
  bool _messagesLoaded = false;
  List<_ChatPeersItem> _peers = [];
  List<String> _pubKeys = [];
  GetRemoteNodeInfoBloc _nodeInfoBloc;

  @override
  void initState() {
    var bloc = BlocProvider.of<ListMessagesBloc>(context);
    bloc.add(ListMessagesEvent());
    _nodeInfoBloc = BlocProvider.of<GetRemoteNodeInfoBloc>(context);

    _updateState(bloc.state);
    _sub = bloc.listen((state) {
      _updateState(state);
    });

    super.initState();
  }

  @override
  void dispose() {
    _searchPeerController?.dispose();
    _sub?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetRemoteNodeInfoBloc, GetRemoteNodeInfoState>(
      cubit: _nodeInfoBloc,
      builder: (context, niState) {
        if (_messagesLoaded && niState is RemoteNodeInfoLoadedState) {
          return ListView.separated(
            separatorBuilder: (context, i) {
              return Divider();
            },
            itemCount: _peers.length,
            itemBuilder: (context, i) {
              var key = _peers[i].key;
              if (niState.nodeInfos.containsKey(key)) {
                return _buildTile(
                  _peers[i],
                  key,
                  color: niState.nodeInfos[key].node.color,
                  alias: niState.nodeInfos[key].node.alias,
                );
              } else {
                // Use default values. The RemoteNodeInfo object is not yet loaded
                var alias =
                    niState.errors.containsKey(key) ? niState.errors[key] : '';
                return _buildTile(_peers[i], key, alias: alias);
              }
            },
          );
        } else {
          return _buildLoadingUI();
        }
      },
    );
  }

  Widget _buildLoadingUI() {
    return Center(child: SpinKitRipple(color: sendManyBlue200, size: 150));
  }

  Widget _buildTile(
    _ChatPeersItem item,
    String pubKey, {
    Color color = Colors.black,
    String alias = '',
  }) {
    return ChatPeerListTile(
      pubKey,
      item.lastMessage,
      color: color,
      alias: alias,
      onTap: (String pubKey) async {
        await Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return ChatPage(item.key);
            },
          ),
        );
      },
    );
  }

  void _updateState(ListMessagesBaseState state) {
    if (state is InitialListMessagesState && _messagesLoaded) {
      setState(() {
        _messagesLoaded = false;
      });
    } else if (state is MessageListLoadedState) {
      var l = <_ChatPeersItem>[];
      state.messages.forEach((key, messages) {
        l.add(_ChatPeersItem(key, messages.last));
      });
      l.sort((p1, p2) {
        return p2.lastMessage.date.compareTo((p1.lastMessage.date));
      });

      _pubKeys = state.messages.keys.toList();
      _nodeInfoBloc.add(GetRemoteNodeInfoEvent(_pubKeys));

      setState(() {
        _messagesLoaded = true;
        _peers = l;
      });
    } else if (state is NewMessageAddedState) {
      if (state.message.isMe || _peers == null || _peers.isEmpty) return;
      if (_peers.first.key == state.message.peer) {
        _peers.removeAt(0);
        _peers.insert(0, _ChatPeersItem(state.message.peer, state.message));
      } else {
        if (_pubKeys.contains(state.message.peer)) {
          _peers.removeWhere((p) => p.key == state.message.peer);
        } else {
          // We've got a new chat peer. Reload the RemoteNodeInfoObjects
          _pubKeys.add(state.message.peer);
          _nodeInfoBloc.add(GetRemoteNodeInfoEvent(_pubKeys));
        }

        _peers.insert(0, _ChatPeersItem(state.message.peer, state.message));
      }
      setState(() {});
    }
  }
}
