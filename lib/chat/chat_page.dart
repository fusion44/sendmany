import 'package:convert/convert.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:grpc/grpc.dart';
import 'package:nanoid/nanoid.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/router.pbgrpc.dart'
    as router;
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/models/models.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'item_not_found_exception.dart';
import 'models/message_item.dart';

class ChatPage extends StatefulWidget {
  final Peer peer;

  ChatPage(this.peer);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<MessageItem> _messages = [];
  CallOptions _opts;
  router.RouterClient _routerClient;
  Map<String, ResponseStream<router.PaymentStatus>> _sendStreams = {};
  ResponseStream<router.ChatMessage> _receiveStream;
  TextEditingController _controller = TextEditingController();
  Peer p;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Chat")),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 40.0),
              child: Container(
                color: sendManyBackgroundCard,
                child: AnimatedList(
                  key: _listKey,
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
        ),
      ),
    );
  }

  @override
  void dispose() {
    _receiveStream.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    p = widget.peer;
    _routerClient = router.RouterClient(LnConnectionDataProvider().channel);
    router.ReceiveChatMessagesRequest request =
        router.ReceiveChatMessagesRequest();
    _opts = CallOptions(
      metadata: {"macaroon": LnConnectionDataProvider().macaroon},
    );

    _receiveStream = _routerClient.receiveChatMessages(request, options: _opts);
    _receiveStream.listen((router.ChatMessage m) {
      setState(() {
        _addMessage(p.nodeInfo.node.alias, m.text);
      });
    });

    _controller.addListener(() => setState(() {}));

    super.initState();
  }

  void _addMessage(String newFrom, String text) {
    bool sameSender = false;
    if (_messages.isNotEmpty) {
      sameSender = _messages[0].from == newFrom;
      if (_messages[0].belowIsSame != sameSender) {
        _messages[0] = _messages[0].copyWith(belowIsSame: sameSender);
      }
    }

    MessageItem m = MessageItem(
      nanoid(),
      DateTime.now(),
      newFrom,
      text,
      aboveIsSame: sameSender,
      belowIsSame: false,
    );

    _messages.insert(0, m);
    _listKey.currentState.insertItem(0, duration: Duration(milliseconds: 350));

    if (newFrom == 'me') _sendPayment(m);
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
              onPressed: _controller.text.length > 0
                  ? () {
                      setState(
                        () {
                          _addMessage('me', _controller.text);
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

    MessageItem m = _messages[i];

    return Padding(
      padding: _getPadding(m),
      child: Container(
        decoration: _getBoxDeco(m),
        child: m.from == 'me' ? _buildMeTile(m) : _buildPeerTile(m),
      ),
    );
  }

  _sendPayment(MessageItem m) {
    router.SendPaymentRequest req = router.SendPaymentRequest();
    req.chatMessage = m.text;
    req.chatFree = false;
    req.amtMsat = Int64.parseInt('1000');
    req.finalCltvDelta = 40;
    req.dest = hex.decode(p.pubKey);
    req.feeLimitMsat = Int64.parseInt('10000');
    req.timeoutSeconds = 30;

    try {
      _sendStreams[m.id] = _routerClient.sendPayment(req, options: _opts);
      _sendStreams[m.id].listen((router.PaymentStatus status) {
        switch (status.state) {
          case router.PaymentState.SUCCEEDED:
          case router.PaymentState.FAILED_INCORRECT_PAYMENT_DETAILS:
            setState(() {
              int index = _messages.indexWhere(
                (MessageItem item) => item.id == m.id,
              );
              if (index < 0) {
                throw ItemNotFoundException("Item with id ${m.id} not found");
              }
              _messages[index] = _messages[index].copyWith(delivered: true);
            });
            break;
          default:
        }
      }, onDone: () {
        _sendStreams[m.id].cancel();
        _sendStreams.remove(m.id);
      }, onError: (error) {
        print('Error sending message: $error');
      });
    } on GrpcError catch (e) {
      print(e.message);
    }
  }

  EdgeInsets _getPadding(MessageItem m) {
    return EdgeInsets.only(
      left: 8.0,
      right: 8.0,
      bottom: m.belowIsSame ? 0.0 : 4.0,
    );
  }

  _getBoxDeco(MessageItem m) {
    final Radius baseRadius = Radius.circular(10.0);
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
      color: m.from == 'me' ? Colors.blueGrey[900] : Colors.blueGrey[700],
      borderRadius: geo,
    );
  }

  _buildMeTile(MessageItem m) {
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
              Text('by ${m.from}'),
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
            Text('by ${m.from}'),
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

  _buildPeerTile(MessageItem m) {
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
              Text('by ${m.from}'),
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
            Text('by ${m.from}'),
          ],
        ),
      );
    }
  }
}
