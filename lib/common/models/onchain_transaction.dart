import 'package:fixnum/fixnum.dart';

import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart' as rpc;

class OnchainTransaction {
  // The transaction hash
  final String hash;

  // The transaction amount, denominated in satoshis
  final Int64 amount;

  // The number of confirmations
  final int numConfirmations;

  // The hash of the block this transaction was included in
  final String blockHash;

  // The height of the block this transaction was included in
  final int blockHeight;

  // Raw timestamp of this transaction
  final Int64 timeStamp;

  // Timestamp of this transaction as a DateTime
  final DateTime timsStampDateTime;

  // Fees paid for this transaction
  final Int64 totalFees;

  // Addresses that received funds for this transaction
  final List<String> destAddresses;

  // The raw transaction hex
  final String rawTxHex;

  OnchainTransaction(
    this.hash,
    this.amount,
    this.numConfirmations,
    this.blockHash,
    this.blockHeight,
    this.timeStamp,
    this.timsStampDateTime,
    this.totalFees,
    this.destAddresses,
    this.rawTxHex,
  );

  static OnchainTransaction fromLND(rpc.Transaction tx) {
    DateTime date =
        DateTime.fromMillisecondsSinceEpoch(tx.timeStamp.toInt() * 1000);
    return OnchainTransaction(
      tx.txHash,
      tx.amount,
      tx.numConfirmations,
      tx.blockHash,
      tx.blockHeight,
      tx.timeStamp,
      date,
      tx.totalFees,
      tx.destAddresses,
      tx.rawTxHex,
    );
  }
}
