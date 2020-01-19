import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:buffer/buffer.dart';
import 'package:convert/convert.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:nanoid/nanoid.dart';

import './bloc.dart';
import '../../common/constants.dart';
import '../../common/models/models.dart';
import '../../common/models/transaction.dart';
import '../../wallet/balance/list_transactions/bloc.dart';
import '../../wallet/balance/list_transactions/list_transactions_bloc.dart';
import '../models/message_item.dart';

class _MessagesLoadedEvent extends ListMessagesBaseEvent {
  @override
  List<Object> get props => [];
}

class ListMessagesBloc
    extends Bloc<ListMessagesBaseEvent, ListMessagesBaseState> {
  final ListTxBloc listTxBloc;
  final Map<String, List<MessageItem>> _messages = {};
  int _lastMessageListSize;
  StreamSubscription<ListTxState> _sub;

  ListMessagesBloc(this.listTxBloc) {
    _sub = listTxBloc.listen((state) {
      if (state is LoadingTxFinishedState) {
        if (_lastMessageListSize == null ||
            _lastMessageListSize < state.transactions.length) {
          // Only process messages when there are new transactions
          _initMessageList(state.transactions);
          _lastMessageListSize = state.transactions.length;
        }
      }
    });
  }

  @override
  Future<void> close() async {
    await _sub.cancel();
    return super.close();
  }

  @override
  ListMessagesBaseState get initialState => InitialListMessagesState();

  @override
  Stream<ListMessagesBaseState> mapEventToState(
    ListMessagesBaseEvent event,
  ) async* {
    if (event is ListMessagesEvent) {
      if (_messages == null || _messages.isEmpty) {}
    } else if (event is _MessagesLoadedEvent) {
      yield MessageListLoadedState(_messages);
    }
  }

  Future<void> _initMessageList(List<Tx> transactions) async {
    // TODO: Run this code in an isolate and cache using https://pub.dev/packages/hive
    try {
      transactions.forEach((tx) async {
        if (tx is TxLightningInvoice) {
          if (tx.invoice.isKeySend) {
            var rec = _findIncomingChatRecord(tx.invoice);
            if (rec != null) await _handleIncomingChatHtlc(rec);
          }
        } else if (tx is TxLightningPayment) {
          var hop = _findOutgoingChatRecord(tx.payment);
          if (hop != null) await _handleOutgoingChatHtlc(hop);
        }
      });

      _messages.forEach((key, list) {
        list.sort();

        if (list.length > 1) {
          list.first.aboveIsSame = false;
          list.first.belowIsSame = list.first.isMe == list[1].isMe;

          for (var i = list.length - 2; i > 0; i--) {
            list[i].aboveIsSame = list[i - 1].isMe == list[i].isMe;
            list[i].belowIsSame = list[i].isMe == list[i + 1].isMe;
          }

          list.last.aboveIsSame = list[list.length - 2].isMe == list.last.isMe;
          list.last.belowIsSame = false;
        }
      });

      add(_MessagesLoadedEvent());
    } on GrpcError catch (grpcError) {
      print(grpcError);
    } catch (e) {
      // catch other errors
      print('_initMessageList: $e');
    }
  }

  Map<Int64, List<int>> _findIncomingChatRecord(Invoice invoice) {
    if (invoice.state != InvoiceState.settled) return null;

    for (var htlc in invoice.htlcs) {
      if (htlc.state == InvoiceHTLCState.settled) {
        return htlc.customRecords;
      }
    }

    return null;
  }

  Hop _findOutgoingChatRecord(Payment payment) {
    if (payment.status != PaymentStatus.succeeded ||
        payment.htlcs == null ||
        payment.htlcs.isEmpty) {
      return null;
    }

    for (var htlc in payment.htlcs) {
      if (htlc.status == HTLCAttemptStatus.succeeded) {
        var hops = htlc.route.hops;

        try {
          if (hops != null &&
              hops.isNotEmpty &&
              hops[hops.length - 1].tlvPayload &&
              hops[hops.length - 1]
                  .customRecords
                  .containsKey(TlvRecords.msgRecord)) {
            return hops[hops.length - 1];
          }
        } on NoSuchMethodError catch (e) {
          print(e);
        }
      }
    }

    return null;
  }

  void _handleIncomingChatHtlc(Map<Int64, List<int>> records) async {
    var messageBytes = records[TlvRecords.msgRecord];
    var timestampBytes = records[TlvRecords.timeRecord];
    var senderBytes = records[TlvRecords.senderRecord];

    var msg = utf8.decode(messageBytes);
    var reader = ByteDataReader(endian: Endian.big)..add(timestampBytes);
    var timestampInt = reader.readInt64(Endian.big) ~/ 1000;
    var time = DateTime.fromMicrosecondsSinceEpoch(timestampInt);
    var chatPeer = hex.encode(senderBytes);

    _addMessage(chatPeer, msg, timestamp: time);
  }

  void _handleOutgoingChatHtlc(Hop lastHop) {
    var messageBytes = lastHop.customRecords[TlvRecords.msgRecord];
    var timestampBytes = lastHop.customRecords[TlvRecords.timeRecord];

    var msg = utf8.decode(messageBytes);

    var time;
    if (timestampBytes != null) {
      var reader = ByteDataReader(endian: Endian.big)..add(timestampBytes);
      var timestampInt = reader.readInt64(Endian.big) ~/ 1000;
      time = DateTime.fromMicrosecondsSinceEpoch(timestampInt);
    }

    _addMessage(
      lastHop.pubKey,
      msg,
      timestamp: time ?? DateTime.fromMicrosecondsSinceEpoch(0),
      isMe: true,
    );
  }

  void _addMessage(
    String peer,
    String msg, {
    DateTime timestamp,
    bool isMe = false,
  }) {
    var m = MessageItem(
      nanoid(),
      timestamp,
      peer,
      msg,
      isMe: isMe,
      delivered: true,
    );
    print('add message: $msg, $isMe');
    if (!_messages.containsKey(peer)) {
      _messages[peer] = <MessageItem>[];
    }

    _messages[peer].add(m);
  }
}
