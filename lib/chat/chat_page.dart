import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../common/blocs/get_remote_node_info/bloc.dart';
import '../common/constants.dart';
import '../common/models/models.dart';
import 'list_messages/bloc.dart';
import 'models/message_item.dart';

class ChatPage extends StatefulWidget {
  /// The public key of the chat partner node
  final String peer;

  ChatPage(this.peer);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final GetRemoteNodeInfoBloc _getRemoteNodeInfoBloc = GetRemoteNodeInfoBloc();
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final List<MessageItem> _messages = [];
  final TextEditingController _controller = TextEditingController();
  RemoteNodeInfo _nodeInfo;
  ListMessagesBloc _listMsgBloc;
  StreamSubscription<ListMessagesBaseState> _msgBlockSub;
  StreamSubscription<GetRemoteNodeInfoState> _remoteNodeInfoBlockSub;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _getRemoteNodeInfoBloc,
      builder: (BuildContext context, GetRemoteNodeInfoState state) {
        var title = 'Chat';
        Widget body;

        if (state is InitialGetRemoteNodeInfoState ||
            state is RemoteNodeInfoLoadingState) {
          body = Center(
            child: SpinKitRipple(color: sendManyBlue200, size: 150),
          );
        } else if (state is RemoteNodeInfoLoadedState) {
          _nodeInfo = state.nodeInfo;
          title = 'Chat with ${_nodeInfo.node.alias}';

          body = Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(bottom: 40.0),
                child: Container(
                  color: sendManyBackgroundCard,
                  child: AnimatedList(
                    key: _listKey,
                    initialItemCount: _messages.length,
                    reverse: true,
                    itemBuilder:
                        (BuildContext context, int index, Animation animation) {
                      return SizeTransition(
                        sizeFactor: animation,
                        child: _buildListTile(index),
                      );
                    },
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: _buildChatInputBox(),
              ),
            ],
          );
        } else if (state is RemoteNodeInfoErrorState) {
          body = Center(
            child: Text('Error: ${state.error}, PubKey: ${state.pubKey}'),
          );
        } else {
          body = Center(child: Text('Error: unknown state: $state'));
        }

        return Scaffold(
          appBar: AppBar(title: Text(title, overflow: TextOverflow.fade)),
          body: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: body,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _msgBlockSub?.cancel();
    _getRemoteNodeInfoBloc.close();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _getRemoteNodeInfoBloc.add(GetRemoteNodeInfoEvent(widget.peer));

    _controller.addListener(() => setState(() {}));

    _remoteNodeInfoBlockSub = _getRemoteNodeInfoBloc.listen((niState) {
      if (niState is RemoteNodeInfoLoadedState && _listMsgBloc == null) {
        _nodeInfo = niState.nodeInfo;
        _listMsgBloc = BlocProvider.of<ListMessagesBloc>(context);
        _msgBlockSub = _listMsgBloc.listen((state) {
          if (state is MessageListLoadedState) {
            if (state.messages.containsKey(niState.nodeInfo.node.pubKey)) {
              setState(() {
                _messages.addAll(
                  state.messages[niState.nodeInfo.node.pubKey].reversed,
                );
              });
            }
          } else if (state is NewMessageAddedState) {
            if (state.message.peer != _nodeInfo.node.pubKey) return;

            print('new message added');
            if (_messages.isNotEmpty) {
              _messages.first.belowIsSame =
                  _messages.first.isMe == state.message.isMe;
            }

            _messages.insert(0, state.message);
            _listKey.currentState.insertItem(
              0,
              duration: Duration(milliseconds: 350),
            );
          }
        });
        _remoteNodeInfoBlockSub.cancel();
        _remoteNodeInfoBlockSub = null;
      }
    });

    super.initState();
  }

  Container _buildChatInputBox() {
    return Container(
      height: 40.0,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextField(
                controller: _controller,
              ),
            ),
            IconButton(
              icon: Icon(Icons.send, color: sendManyBlue700),
              onPressed: _controller.text.isNotEmpty
                  ? () {
                      setState(
                        () {
                          // TODO: Handle sending the message
                          _controller.text = '';
                        },
                      );
                    }
                  : null,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(int i) {
    if (_messages.length == i) {
      // reached the end of the list
      return null;
    }

    var m = _messages[i];

    return Padding(
      padding: _getPadding(m),
      child: Container(
        decoration: _getBoxDeco(m),
        child: m.isMe ? _buildMeTile(m) : _buildPeerTile(m),
      ),
    );
  }

  EdgeInsets _getPadding(MessageItem m) {
    return EdgeInsets.only(
      left: 8.0,
      right: 8.0,
      bottom: m.belowIsSame ? 0.0 : 4.0,
    );
  }

  Decoration _getBoxDeco(MessageItem m) {
    final baseRadius = Radius.circular(10.0);
    BorderRadiusGeometry geo;
    if (!m.aboveIsSame && !m.belowIsSame) {
      geo = BorderRadius.all(baseRadius);
    } else if (m.aboveIsSame && !m.belowIsSame) {
      geo = BorderRadius.only(
        bottomLeft: baseRadius,
        bottomRight: baseRadius,
      );
    } else if (!m.aboveIsSame && m.belowIsSame) {
      geo = BorderRadius.only(
        topLeft: baseRadius,
        topRight: baseRadius,
      );
    }

    return BoxDecoration(
      color: m.isMe ? Colors.blueGrey[700] : Colors.blueGrey[900],
      borderRadius: geo,
    );
  }

  Widget _buildMeTile(MessageItem m) {
    if (m.aboveIsSame) {
      return Padding(
        padding: const EdgeInsets.only(right: 58.0),
        child: ListTile(
          dense: true,
          title: Text(m.text, textAlign: TextAlign.end),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(timeago.format(m.date)),
              SizedBox(width: defaultHorizontalWhiteSpace),
              Text('by me'),
              SizedBox(width: 8.0),
              Icon(
                Icons.check,
                size: 15.0,
                color: m.delivered ? Colors.blue : Colors.amberAccent,
              )
            ],
          ),
        ),
      );
    } else {
      return ListTile(
        dense: true,
        title: Text(m.text, textAlign: TextAlign.end),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(timeago.format(m.date)),
            SizedBox(width: defaultHorizontalWhiteSpace),
            Text('by me'),
            SizedBox(width: 8.0),
            Icon(
              Icons.check,
              size: 15.0,
              color: m.delivered ? Colors.blue : Colors.amberAccent,
            )
          ],
        ),
        trailing: CircleAvatar(child: Icon(Icons.account_circle)),
      );
    }
  }

  Widget _buildPeerTile(MessageItem m) {
    if (m.aboveIsSame) {
      return Padding(
        padding: const EdgeInsets.only(left: 58.0),
        child: ListTile(
          dense: true,
          title: Text(m.text, textAlign: TextAlign.start),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(timeago.format(m.date)),
              SizedBox(width: defaultHorizontalWhiteSpace),
              Text('by ${_nodeInfo.node.alias}'),
            ],
          ),
        ),
      );
    } else {
      return ListTile(
        dense: true,
        title: Text(m.text, textAlign: TextAlign.start),
        leading: CircleAvatar(child: Icon(Icons.account_circle)),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(timeago.format(m.date)),
            SizedBox(width: defaultHorizontalWhiteSpace),
            Text('by ${_nodeInfo.node.alias}'),
          ],
        ),
      );
    }
  }
}
