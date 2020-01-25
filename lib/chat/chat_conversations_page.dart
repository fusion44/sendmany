import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../common/constants.dart';
import '../node/peers/bloc/bloc.dart';
import 'chat_page.dart';
import 'chat_peer_tile.dart';
import 'list_messages/bloc.dart';
import 'list_messages/list_messages_bloc.dart';
import 'models/message_item.dart';

class _ChatPeersItem {
  final String key;
  final MessageItem lastMessage;

  _ChatPeersItem(this.key, this.lastMessage);
}

class ChatConversationsPage extends StatefulWidget {
  @override
  _ChatConversationsPageState createState() => _ChatConversationsPageState();
}

class _ChatConversationsPageState extends State<ChatConversationsPage> {
  final TextEditingController _searchPeerController = TextEditingController();
  StreamSubscription<ListMessagesBaseState> _sub;
  bool _loading = true;
  List<_ChatPeersItem> _peers;

  @override
  void initState() {
    var bloc = BlocProvider.of<ListMessagesBloc>(context);
    bloc.add(ListMessagesEvent());

    _sub = bloc.listen((state) {
      if (state is InitialListMessagesState) {
        setState(() {
          _loading = true;
        });
      } else if (state is MessageListLoadedState) {
        var l = <_ChatPeersItem>[];
        state.messages.forEach((key, messages) {
          l.add(_ChatPeersItem(key, messages.last));
        });
        l.sort((p1, p2) {
          return p2.lastMessage.date.compareTo((p1.lastMessage.date));
        });

        setState(() {
          _loading = false;
          _peers = l;
        });
      } else if (state is NewMessageAddedState) {
        if (state.message.isMe) return;
        if (_peers.first.key == state.message.peer) {
          _peers.removeAt(0);
          _peers.insert(0, _ChatPeersItem(state.message.peer, state.message));
        } else {
          _peers.removeWhere((p) => p.key == state.message.peer);
          _peers.insert(0, _ChatPeersItem(state.message.peer, state.message));
        }
        setState(() {});
      }
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
    if (_loading) {
      return _buildLoadingUI();
    } else {
      return _buildPeerList();
    }
  }

  Widget _buildLoadingUI() {
    return Center(child: SpinKitRipple(color: sendManyBlue200, size: 150));
  }

  Widget _buildPeerList() {
    return BlocBuilder<ListPeersBloc, ListPeersState>(
      builder: (context, peerState) {
        if (peerState is InitialListPeersState ||
            peerState is PeersLoadingState) {
          return _buildLoadingUI();
        } else if (peerState is PeersLoadedState) {
          return ListView.separated(
              separatorBuilder: (context, i) {
                return Divider();
              },
              itemCount: _peers.length,
              itemBuilder: (context, i) {
                return _buildTile(_peers[i], peerState.peers[_peers[i].key]);
              });
        }

        return Center(child: Text('Unknown state: $peerState'));
      },
    );
  }

  Widget _buildTile(_ChatPeersItem item, LoadedPeer p) {
    return ChatPeerListTile(p, item.lastMessage, (String pubKey) async {
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return ChatPage(item.key);
          },
        ),
      );
    });
  }
}
