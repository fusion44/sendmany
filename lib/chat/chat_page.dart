import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../common/blocs/get_remote_node_info/bloc.dart';
import '../common/constants.dart';
import '../common/models/models.dart';
import '../common/utils.dart';
import 'list_messages/bloc.dart';
import 'message_list.dart';
import 'send_messages/bloc.dart';
import 'send_messages/send_message_bloc.dart';

class ChatPage extends StatefulWidget {
  /// The public key of the chat partner node
  final String peer;

  ChatPage(this.peer);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  GetRemoteNodeInfoBloc _getRemoteNodeInfoBloc;
  final TextEditingController _controller = TextEditingController();
  SendMessageBloc _sendMessageBloc;
  StreamSubscription<GetRemoteNodeInfoState> _remoteNodeInfoBlockSub;
  StreamSubscription<ListMessagesBaseState> _msgBlockSub;
  bool _messagesLoading = true;

  @override
  void initState() {
    final provider =
        RepositoryProvider.of<GetRemoteNodeInfoRepository>(context);
    _getRemoteNodeInfoBloc = GetRemoteNodeInfoBloc(provider);

    var listMsgBloc = BlocProvider.of<ListMessagesBloc>(context);

    if (!(listMsgBloc.state is InitialListMessagesState) ||
        !(listMsgBloc.state is MessageListLoadedState)) {
      listMsgBloc.add(ListMessagesEvent());
    }
    _msgBlockSub = listMsgBloc.listen((state) {
      if (state is MessageListLoadedState) {
        setState(() {
          _messagesLoading = false;
        });
      }
    });

    _controller.addListener(() => setState(() {}));
    _sendMessageBloc = SendMessageBloc(listMsgBloc);
    _getRemoteNodeInfoBloc.add(GetRemoteNodeInfoEvent([widget.peer]));
    super.initState();
  }

  @override
  void dispose() {
    _remoteNodeInfoBlockSub?.cancel();
    _msgBlockSub?.cancel();
    _getRemoteNodeInfoBloc.close();
    _controller.dispose();
    _sendMessageBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _getRemoteNodeInfoBloc,
      builder: (BuildContext context, GetRemoteNodeInfoState state) {
        var title = tr(context, 'chat.info');
        Widget body;

        if (state is InitialGetRemoteNodeInfoState ||
            state is RemoteNodeInfoLoadingState ||
            _messagesLoading) {
          body = Center(
            child: SpinKitRipple(color: sendManyBlue200, size: 150),
          );
        } else if (state is RemoteNodeInfoLoadedState) {
          var info = state.nodeInfos[widget.peer];
          title = '${tr(context, 'chat.chat_with')} ${info.node.alias}';
          body = Stack(
            children: <Widget>[
              MessageListWidget(info),
              Align(
                alignment: Alignment.bottomCenter,
                child: _buildChatInputBox(info),
              ),
            ],
          );
        } else if (state is RemoteNodeInfoErrorState) {
          body = Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  for (var e in state.errors.keys)
                    Text('Error: ${state.errors[e]}, PubKey: $e')
                ],
              ),
            ),
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

  Container _buildChatInputBox(RemoteNodeInfo nodeInfo) {
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
                      _sendMessageBloc.add(
                        SendMessageEvent(
                          _controller.text,
                          nodeInfo.node.pubKey,
                        ),
                      );
                      _controller.text = '';
                    }
                  : null,
            )
          ],
        ),
      ),
    );
  }
}
