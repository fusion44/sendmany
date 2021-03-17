import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../common/constants.dart';
import '../common/models/models.dart';
import '../common/models/node_info/remote_node_info.dart';
import '../common/utils.dart';
import 'list_messages/bloc.dart';
import 'models/message_item.dart';

class MessageListWidget extends StatefulWidget {
  final RemoteNodeInfo nodeInfo;

  MessageListWidget(this.nodeInfo);

  @override
  _MessageListWidgetState createState() => _MessageListWidgetState();
}

class _MessageListWidgetState extends State<MessageListWidget> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  final List<MessageItem> _messages = [];
  StreamSubscription<ListMessagesBaseState> _msgBlockSub;

  ListMessagesBloc _listMsgBloc;

  @override
  Widget build(BuildContext context) {
    if (_messages.isEmpty) {
      return Container(
        color: sendManyBackgroundCard,
      );
    }
    return Padding(
      padding: const EdgeInsets.only(bottom: 40.0),
      child: Container(
        color: sendManyBackgroundCard,
        child: AnimatedList(
          key: _listKey,
          initialItemCount: _messages.length,
          reverse: true,
          itemBuilder: (BuildContext context, int index, Animation animation) {
            return SizeTransition(
              sizeFactor: animation,
              child: _buildListTile(index),
            );
          },
        ),
      ),
    );
  }

  @override
  void initState() {
    _listMsgBloc = BlocProvider.of<ListMessagesBloc>(context);

    _updateState(_listMsgBloc.state);
    _msgBlockSub = _listMsgBloc.listen((state) {
      _updateState(state);
    });

    super.initState();
  }

  void _updateState(ListMessagesBaseState state) {
    if (state is MessageListLoadedState) {
      if (state.messages.containsKey(widget.nodeInfo.node.pubKey)) {
        _messages.clear();
        setState(() {
          _messages.addAll(
            state.messages[widget.nodeInfo.node.pubKey].reversed,
          );
        });
      }
    } else if (state is NewMessageAddedState) {
      if (state.message.peer != widget.nodeInfo.node.pubKey) return;

      if (_messages.isNotEmpty) {
        _messages.first.belowIsSame =
            _messages.first.isMe == state.message.isMe;
      }

      _messages.insert(0, state.message);
      if (_listKey.currentState != null) {
        _listKey.currentState.insertItem(
          0,
          duration: Duration(milliseconds: 350),
        );
      }
    } else if (state is MessageUpdatedState) {
      var found = false;
      var m = state.message;
      if (state.message.peer != widget.nodeInfo.node.pubKey) return;
      if (_messages.isEmpty) return;
      if (_messages.last.id == m.id) {
        m.aboveIsSame = _messages.last.aboveIsSame;
        m.belowIsSame = _messages.last.belowIsSame;
        _messages[_messages.length - 1] = m;
        found = true;
      } else {
        for (var i = 0; i < _messages.length; i++) {
          if (_messages[i].id == m.id) {
            m.aboveIsSame = _messages[i].aboveIsSame;
            m.belowIsSame = _messages[i].belowIsSame;
            _messages[i] = m;
            found = true;
            break;
          }
        }
      }

      if (found) {
        if (m.deliveryFailure) {
          showSnackbar(context, m.errorMessage);
        }
        setState(() {});
      } else {
        print('Message not found');
      }
    }
  }

  @override
  void dispose() {
    _msgBlockSub?.cancel();
    super.dispose();
  }

  Widget _buildListTile(int i) {
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
              _getDeliveryIcon(m)
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
            _getDeliveryIcon(m),
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
              Text('by ${widget.nodeInfo.node.alias}'),
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
            Text('by ${widget.nodeInfo.node.alias}'),
          ],
        ),
      );
    }
  }

  Icon _getDeliveryIcon(MessageItem m) {
    if (m.deliveryFailure) {
      return Icon(
        Icons.error_outline,
        size: 15.0,
        color: Colors.redAccent,
      );
    } else {
      return Icon(
        Icons.check,
        size: 15.0,
        color: m.delivered ? Colors.blue : Colors.amberAccent,
      );
    }
  }
}
