import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:convert/convert.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:nanoid/nanoid.dart';
import 'package:sendmany/chat/list_messages/list_messages_event.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/router.pbgrpc.dart'
    as router;
import 'package:sendmany/common/connection/lnd_rpc/signer.pbgrpc.dart'
    as signer;
import 'package:shared_preferences/shared_preferences.dart';

import './bloc.dart';
import '../../common/constants.dart';
import '../list_messages/list_messages_bloc.dart';
import '../models/ln_preimage.dart';
import '../models/message_item.dart';
import '../utils.dart';

class SendMessageBloc extends Bloc<SendMessageBaseEvent, SendMessageBaseState> {
  final ListMessagesBloc _listMsgBloc;

  final signer.SignerClient _signerClient;
  final router.RouterClient _routerClient;
  final CallOptions _opts;

  final Map<String, ResponseStream<router.PaymentStatus>> _sendStreams = {};

  String _selfPubKey;

  SendMessageBloc(this._listMsgBloc)
      : _routerClient = router.RouterClient(LnConnectionDataProvider().channel),
        _signerClient = signer.SignerClient(LnConnectionDataProvider().channel),
        _opts = CallOptions(
          metadata: {'macaroon': LnConnectionDataProvider().macaroon},
        ) {
    _init();
  }
  void _init() async {
    var prefs = await SharedPreferences.getInstance();
    try {
      _selfPubKey = prefs.getString(prefActiveConnectionPubKey);
    } catch (e) {
      throw StateError('Unable to get _selfPubKey: $e');
    }
  }

  @override
  SendMessageBaseState get initialState => InitialSendMessageState();

  @override
  Stream<SendMessageBaseState> mapEventToState(
    SendMessageBaseEvent event,
  ) async* {
    if (event is SendMessageEvent) {
      _sendPayment(event.message, event.peer);
    }
  }

  void _sendPayment(String text, String peer) async {
    var m = MessageItem(
      nanoid(),
      DateTime.now(),
      peer,
      text,
      isMe: true,
      delivered: false,
    );

    _listMsgBloc.add(AddMessageEvent(m));

    var bd = ByteData(8);
    bd.setInt64(0, DateTime.now().microsecondsSinceEpoch * 1000);
    var signReq = signer.SignMessageReq();
    signReq.msg = getSignData(
      hex.decode(_selfPubKey),
      hex.decode(m.peer),
      bd.buffer.asUint8List(),
      utf8.encode(m.text),
    );
    signReq.keyLoc = signer.KeyLocator()
      ..keyFamily = 6
      ..keyIndex = 0;

    var resp = await _signerClient.signMessage(
      signReq,
      options: _opts,
    );

    var preimage = Preimage();

    var req = router.SendPaymentRequest();
    req.paymentHash = preimage.sha256Hash.bytes;
    req.amtMsat = Int64.parseInt('1000');
    req.finalCltvDelta = 40;
    req.dest = hex.decode(m.peer);
    req.feeLimitMsat = Int64.parseInt('10000');
    req.timeoutSeconds = 30;
    req.destCustomRecords.clear();
    req.destCustomRecords[TlvRecords.msgRecord] = utf8.encode(m.text);
    req.destCustomRecords[TlvRecords.senderRecord] = hex.decode(_selfPubKey);
    req.destCustomRecords[TlvRecords.timeRecord] = bd.buffer.asUint8List();
    req.destCustomRecords[TlvRecords.sigRecord] = resp.signature;
    req.destCustomRecords[TlvRecords.keySendRecord] = preimage.bytes;

    try {
      _sendStreams[m.id] = _routerClient.sendPayment(req, options: _opts);
      _sendStreams[m.id].listen((router.PaymentStatus status) {
        switch (status.state) {
          case router.PaymentState.SUCCEEDED:
            _listMsgBloc.add(MessageUpdatedEvent(m.copyWith(delivered: true)));
            break;
          case router.PaymentState.FAILED_INCORRECT_PAYMENT_DETAILS:
            _listMsgBloc.add(
              MessageUpdatedEvent(
                m.copyWith(
                  deliveryFailure: true,
                  errorMessage:
                      'FAILED_INCORRECT_PAYMENT_DETAILS: Possibly the peer doesn\'t have key-send activated?',
                ),
              ),
            );

            print('FAILED_INCORRECT_PAYMENT_DETAILS');
            break;
          case router.PaymentState.FAILED_NO_ROUTE:
            _listMsgBloc.add(
              MessageUpdatedEvent(
                m.copyWith(
                  deliveryFailure: true,
                  errorMessage:
                      'PaymentState.FAILED_NO_ROUTE: Unable to find route to node. Has the peer keysend activated?',
                ),
              ),
            );
            print('PaymentState.FAILED_NO_ROUTE');
            break;
          case router.PaymentState.FAILED_ERROR:
            _listMsgBloc.add(
              MessageUpdatedEvent(
                m.copyWith(
                  deliveryFailure: true,
                  errorMessage:
                      'PaymentState.FAILED_ERROR: An error unrecoverable error occurred while sending the message.',
                ),
              ),
            );
            print('PaymentState.FAILED_ERROR');
            break;
          case router.PaymentState.FAILED_INSUFFICIENT_BALANCE:
            _listMsgBloc.add(
              MessageUpdatedEvent(
                m.copyWith(
                  deliveryFailure: true,
                  errorMessage:
                      'PaymentState.FAILED_INSUFFICIENT_BALANCE: Not enough balance to send message.',
                ),
              ),
            );
            print('PaymentState.FAILED_INSUFFICIENT_BALANCE');
            break;
          case router.PaymentState.FAILED_TIMEOUT:
            _listMsgBloc.add(
              MessageUpdatedEvent(
                m.copyWith(
                  deliveryFailure: true,
                  errorMessage:
                      'PaymentState.FAILED_TIMEOUT: Not enough balance to send message.',
                ),
              ),
            );
            print('PaymentState.FAILED_TIMEOUT');
            break;
          case router.PaymentState.IN_FLIGHT:
            // do nothing
            break;
          default:
            _listMsgBloc.add(
              MessageUpdatedEvent(
                m.copyWith(
                  deliveryFailure: true,
                  errorMessage: 'SendMessage failed with PaymentState: $status',
                ),
              ),
            );
            print('SendMessage status: $status');
        }
      }, onDone: () {
        _sendStreams[m.id].cancel();
        _sendStreams.remove(m.id);
      }, onError: (error) {
        _listMsgBloc.add(
          MessageUpdatedEvent(
            m.copyWith(
              deliveryFailure: true,
              errorMessage: 'Unknown error sending the message.',
            ),
          ),
        );
        print('Error sending message: $error');
      });
    } on GrpcError catch (e) {
      _listMsgBloc.add(
        MessageUpdatedEvent(
          m.copyWith(
            deliveryFailure: true,
            errorMessage: 'gRPC error sending the message: ${e.message}',
          ),
        ),
      );
      print(e.message);
    }
  }
}
