import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:buffer/buffer.dart';
import 'package:convert/convert.dart';
import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart';
import 'package:nanoid/nanoid.dart';

import '../../common/connection/connection_manager/bloc.dart';
import '../../common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../../common/constants.dart';
import '../../common/models/models.dart';
import '../../common/models/transaction.dart';
import '../../wallet/balance/list_transactions/bloc.dart';
import '../../wallet/balance/list_transactions/list_transactions_bloc.dart';
import '../models/message_item.dart';
import '../utils.dart';
import 'bloc.dart';

class _MessagesLoadedEvent extends ListMessagesBaseEvent {
  @override
  List<Object> get props => [];
}

class _MessageAddedEvent extends ListMessagesBaseEvent {
  final MessageItem message;

  _MessageAddedEvent(this.message);

  @override
  List<Object> get props => [];
}

class ListMessagesBloc
    extends Bloc<ListMessagesBaseEvent, ListMessagesBaseState> {
  final ListTxBloc listTxBloc;
  final Map<String, List<MessageItem>> _messages = {};
  int _lastMessageListSize;
  StreamSubscription<ListTxState> _listTxSub;
  ResponseStream<grpc.Invoice> _subscribeInvoices;

  bool _fullLoadFinished = true;

  ListMessagesBloc(this.listTxBloc) : super(InitialListMessagesState()) {
    _updateState(listTxBloc.state);
    _listTxSub = listTxBloc.listen((state) {
      _updateState(state);
    });
    _initInvoiceSubscription();
  }

  void _updateState(ListTxState state) {
    if (state is LoadingTxFinishedState) {
      if (_lastMessageListSize == null ||
          _lastMessageListSize < state.transactions.length) {
        // Only process messages when there are new transactions
        _initMessageList(state.transactions);
        _lastMessageListSize = state.transactions.length;
      }
    }
  }

  @override
  Future<void> close() async {
    await _listTxSub.cancel();
    await _subscribeInvoices.cancel();
    return super.close();
  }

  @override
  Stream<ListMessagesBaseState> mapEventToState(
    ListMessagesBaseEvent event,
  ) async* {
    if (event is ListMessagesEvent) {
      if (_messages != null && _messages.isNotEmpty) {
        yield MessageListLoadedState(_messages);
      }
    } else if (event is _MessagesLoadedEvent) {
      yield MessageListLoadedState(_messages);
    } else if (event is _MessageAddedEvent) {
      yield NewMessageAddedState(event.message);
    } else if (event is AddMessageEvent) {
      // _insertMessage() adds a new _MessageAddedEvent, yield not necessary
      _insertMessage(event.message);
    } else if (event is MessageUpdatedEvent) {
      _replaceMessage(event.message);
      yield MessageUpdatedState(event.message);
    }
  }

  Future<void> _initMessageList(List<Tx> transactions) async {
    // TODO: Run this code in an isolate and cache using https://pub.dev/packages/hive
    _fullLoadFinished = false;
    _messages.clear();
    try {
      transactions.forEach((tx) {
        if (tx is TxLightningInvoice) {
          if (tx.invoice.isKeySend) {
            var rec = findIncomingChatRecord(tx.invoice);
            if (rec != null) _handleIncomingChatHtlc(rec);
          }
        } else if (tx is TxLightningPayment) {
          var hop = _findOutgoingChatRecord(tx.payment);
          if (hop != null) _handleOutgoingChatHtlc(hop);
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
    } finally {
      _fullLoadFinished = true;
    }
  }

  void _initInvoiceSubscription() {
    var client = LnConnectionDataProvider().lightningClient;
    var req = grpc.InvoiceSubscription();
    _subscribeInvoices = client.subscribeInvoices(req);
    _subscribeInvoices.listen((i) {
      if (i.isKeysend && i.htlcs.isNotEmpty) {
        if (i.state != grpc.Invoice_InvoiceState.SETTLED) return null;
        for (var h in i.htlcs) {
          if (h.state == grpc.InvoiceHTLCState.SETTLED) {
            _handleIncomingChatHtlc(h.customRecords);
          }
        }
      }
    });
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

    if (messageBytes == null || timestampBytes == null || senderBytes == null) {
      return;
    }

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

    _insertMessage(m);
  }

  void _insertMessage(MessageItem m) {
    if (!_messages.containsKey(m.peer)) {
      _messages[m.peer] = <MessageItem>[];
    }

    var list = _messages[m.peer];

    if (list.isNotEmpty) {
      list.last.belowIsSame = m.isMe == list.last.isMe;
      m.aboveIsSame = m.isMe == list.last.isMe;
      m.belowIsSame = false;
    }

    _messages[m.peer].add(m);

    if (_fullLoadFinished) {
      add(_MessageAddedEvent(m));
    }
  }

  void _replaceMessage(MessageItem m) {
    var list = _messages[m.peer];
    if (list.last.id == m.id) {
      // Take a guess that this might be the last added message
      // Usually we should only have to replace an item if its
      // delivered state has changed and this should be the last item
      m.aboveIsSame = list.last.aboveIsSame;
      m.belowIsSame = list.last.belowIsSame;
      list[list.length - 1] = m;
    } else {
      var found = false;
      for (var i = list.length - 1; i > 0; i--) {
        if (list[i].id == m.id) {
          m.aboveIsSame = list.last.aboveIsSame;
          m.belowIsSame = list.last.belowIsSame;
          list[i] = m;
          found = true;
        }
      }
      if (!found) {
        print('not found');
      }
    }
  }
}
