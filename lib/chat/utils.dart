library sendmany.chat.utils;

import 'dart:typed_data';

import 'package:buffer/buffer.dart';

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
