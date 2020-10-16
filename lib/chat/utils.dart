library sendmany.chat.utils;

import 'dart:typed_data';

import 'package:buffer/buffer.dart';
import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/models/models.dart';

Map<Int64, List<int>> findIncomingChatRecord(Invoice invoice) {
  if (invoice.state != InvoiceState.settled) return null;

  for (var htlc in invoice.htlcs) {
    if (htlc.state == InvoiceHTLCState.settled) {
      return htlc.customRecords;
    }
  }

  return null;
}

Uint8List getSignData(
  List<int> senderPubkey,
  List<int> recipientPubkey,
  List<int> timestamp,
  List<int> msg,
) {
  var dataLength =
      senderPubkey.length + senderPubkey.length + timestamp.length + msg.length;
  var w = ByteDataWriter(bufferLength: dataLength);
  w.write(senderPubkey);
  w.write(recipientPubkey);
  w.write(timestamp);
  w.write(msg);
  return w.toBytes();
}
