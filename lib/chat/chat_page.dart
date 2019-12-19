import 'dart:convert';
import 'dart:typed_data';

import 'package:buffer/buffer.dart';
import 'package:convert/convert.dart';
import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:grpc/grpc.dart';
import 'package:nanoid/nanoid.dart';
import 'package:sendmany/chat/item_not_found_exception.dart';
import 'package:sendmany/chat/models/ln_preimage.dart';
import 'package:sendmany/common/blocs/get_remote_node_info/bloc.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as lnrpc;
import 'package:sendmany/common/connection/lnd_rpc/router.pbgrpc.dart'
    as router;
import 'package:sendmany/common/connection/lnd_rpc/signer.pbgrpc.dart'
    as signer;
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/models/models.dart';
import 'package:sendmany/wallet/balance/bloc/bloc.dart';
import 'package:sendmany/wallet/balance/bloc/ln_info_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

import 'models/message_item.dart';

class TlvRecords {
  static final Int64 msgRecord = Int64.parseInt('34349334');
  static final Int64 sigRecord = Int64.parseInt('34349337');
  static final Int64 senderRecord = Int64.parseInt('34349339');
  static final Int64 timeRecord = Int64.parseInt('34349343');
  static final Int64 keySendRecord = Int64.parseInt("5482373484");
}

class ChatPage extends StatefulWidget {
  final String peer;

  ChatPage(this.peer);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final GetRemoteNodeInfoBloc _getRemoteNodeInfoBloc = GetRemoteNodeInfoBloc();
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<MessageItem> _messages = [];
  CallOptions _opts;
  lnrpc.LightningClient _mainClient;
  router.RouterClient _routerClient;
  signer.SignerClient _signerClient;
  ResponseStream<lnrpc.Invoice> _invoiceStream;
  TextEditingController _controller = TextEditingController();
  NodeInfo _nodeInfo;

  String _selfPubkey = '';

  Map<String, ResponseStream<router.PaymentStatus>> _sendStreams = {};

  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: _getRemoteNodeInfoBloc,
      builder: (BuildContext context, GetRemoteNodeInfoState state) {
        String title = 'Chat';
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
    _getRemoteNodeInfoBloc.close();
    _invoiceStream.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _getRemoteNodeInfoBloc.add(GetRemoteNodeInfoEvent(widget.peer));

    _mainClient = LnConnectionDataProvider().lightningClient;
    _routerClient = router.RouterClient(LnConnectionDataProvider().channel);
    _signerClient = signer.SignerClient(LnConnectionDataProvider().channel);

    _opts = CallOptions(
      metadata: {"macaroon": LnConnectionDataProvider().macaroon},
    );

    if (BlocProvider.of<LnInfoBloc>(context).state
        is LnInfoStateLoadingFinished) {
      LnInfoStateLoadingFinished s = BlocProvider.of<LnInfoBloc>(context).state;
      _selfPubkey = s.infoResponse.identityPubkey;
    }

    lnrpc.InvoiceSubscription subRequest = lnrpc.InvoiceSubscription();
    _invoiceStream = _mainClient.subscribeInvoices(subRequest);
    _invoiceStream.listen((lnrpc.Invoice invoice) {
      if (invoice.state != lnrpc.Invoice_InvoiceState.SETTLED) return;

      lnrpc.InvoiceHTLC htlc = invoice.htlcs.firstWhere(
        (lnrpc.InvoiceHTLC htlc) =>
            htlc.state == lnrpc.InvoiceHTLCState.SETTLED,
      );

      if (htlc == null ||
          htlc.customRecords == null ||
          htlc.customRecords.isEmpty ||
          !htlc.customRecords.containsKey(TlvRecords.msgRecord) ||
          htlc.customRecords[TlvRecords.msgRecord] == null ||
          htlc.customRecords[TlvRecords.msgRecord].isEmpty) {
        print('No chat message found');
        return;
      }

      _handleIncomingChatHtlcs(htlc);
    });

    _controller.addListener(() => setState(() {}));

    super.initState();
  }

  void _addMessage(String senderPubkey, String text, {DateTime timestamp}) {
    bool sameSender = false;
    if (_messages.isNotEmpty) {
      sameSender = _messages[0].from == senderPubkey;
      if (_messages[0].belowIsSame != sameSender) {
        _messages[0] = _messages[0].copyWith(belowIsSame: sameSender);
      }
    }

    MessageItem m = MessageItem(
      nanoid(),
      timestamp == null ? DateTime.now() : timestamp,
      senderPubkey,
      text,
      aboveIsSame: sameSender,
      belowIsSame: false,
    );

    _messages.insert(0, m);
    _listKey.currentState.insertItem(0, duration: Duration(milliseconds: 350));

    if (senderPubkey == _selfPubkey) _sendPayment(m);
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
                          _addMessage(_selfPubkey, _controller.text);
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
        child: m.from == _selfPubkey ? _buildMeTile(m) : _buildPeerTile(m),
      ),
    );
  }

  _sendPayment(MessageItem m) async {
    ByteData bd = ByteData(8);
    bd.setInt64(0, DateTime.now().microsecondsSinceEpoch * 1000);
    signer.SignMessageReq signReq = signer.SignMessageReq();
    signReq.msg = _getSignData(
      hex.decode(_selfPubkey),
      hex.decode(_nodeInfo.node.pubKey),
      bd.buffer.asUint8List(),
      utf8.encode(m.text),
    );
    signReq.keyLoc = signer.KeyLocator()
      ..keyFamily = 6
      ..keyIndex = 0;

    signer.SignMessageResp resp = await _signerClient.signMessage(
      signReq,
      options: _opts,
    );

    Preimage preimage = Preimage();

    router.SendPaymentRequest req = router.SendPaymentRequest();
    req.paymentHash = preimage.sha256Hash.bytes;
    req.amtMsat = Int64.parseInt('1000');
    req.finalCltvDelta = 40;
    req.dest = hex.decode(_nodeInfo.node.pubKey);
    req.feeLimitMsat = Int64.parseInt('10000');
    req.timeoutSeconds = 30;
    req.destCustomRecords.clear();
    req.destCustomRecords[TlvRecords.msgRecord] = utf8.encode(m.text);
    req.destCustomRecords[TlvRecords.senderRecord] = hex.decode(_selfPubkey);
    req.destCustomRecords[TlvRecords.timeRecord] = bd.buffer.asUint8List();
    req.destCustomRecords[TlvRecords.sigRecord] = resp.signature;
    req.destCustomRecords[TlvRecords.keySendRecord] = preimage.bytes;

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
      color:
          m.from == _selfPubkey ? Colors.blueGrey[900] : Colors.blueGrey[700],
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

  Uint8List _getSignData(
    List<int> senderPubkey,
    List<int> recipientPubkey,
    List<int> timestamp,
    List<int> msg,
  ) {
    int dataLength = senderPubkey.length +
        senderPubkey.length +
        timestamp.length +
        msg.length;
    ByteDataWriter w = ByteDataWriter(bufferLength: dataLength);
    w.write(senderPubkey);
    w.write(recipientPubkey);
    w.write(timestamp);
    w.write(msg);
    return w.toBytes();
  }

  Future _handleIncomingChatHtlcs(lnrpc.InvoiceHTLC htlc) async {
    List<int> messageBytes = htlc.customRecords[TlvRecords.msgRecord];
    List<int> signatureBytes = htlc.customRecords[TlvRecords.sigRecord];
    List<int> timestampBytes = htlc.customRecords[TlvRecords.timeRecord];
    List<int> senderBytes = htlc.customRecords[TlvRecords.senderRecord];
    List<int> data = _getSignData(
      senderBytes,
      hex.decode(_selfPubkey),
      timestampBytes,
      messageBytes,
    );

    signer.VerifyMessageReq req = signer.VerifyMessageReq();
    req.msg = data;
    req.signature = signatureBytes;
    req.pubkey = senderBytes;

    // Roundtrip
    try {
      signer.VerifyMessageResp resp = await _signerClient.verifyMessage(
        req,
        options: _opts,
      );

      if (!resp.valid) {
        print('Received invalid message');
      } else {
        String msg = utf8.decode(htlc.customRecords[TlvRecords.msgRecord]);
        ByteDataReader reader = ByteDataReader(endian: Endian.big)
          ..add(timestampBytes);
        int timestampInt = reader.readInt64(Endian.big) ~/ 1000;
        DateTime time = DateTime.fromMicrosecondsSinceEpoch(timestampInt);
        String sender = hex.encode(htlc.customRecords[TlvRecords.senderRecord]);

        _addMessage(sender, msg, timestamp: time);
      }
    } catch (e) {
      if (e is GrpcError) {
        print('Failed verify message signature $e');
      }
    }
  }
}
