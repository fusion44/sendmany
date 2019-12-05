import 'package:equatable/equatable.dart';
import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';
import 'package:sendmany/common/models/models.dart';

class OpenChannelEvent extends Equatable {
  /// The [LightningAddress] address to open a channel with
  final LightningAddress address;

  /// The number of satoshis the wallet should commit to the channel
  final Int64 localFundingAmount;

  /// The number of satoshis to push to the remote side as part of the initial commitment state
  final Int64 pushSat;

  /// The target number of blocks that the funding transaction should be confirmed by.
  final int targetConf;

  /// A manual fee rate set in sat/byte that should be used when crafting the funding transaction.
  final Int64 satPerByte;

  /// Whether this channel should be private, not announced to the greater network.
  final bool private;

  /// The minimum value in millisatoshi we will require for incoming HTLCs on the channel.
  final Int64 minHtlcMsat;

  /// The delay we require on the remote's commitment transaction. If this is not set, it will be scaled automatically with the channel size.
  final int remoteCsvDelay;

  /// The minimum number of confirmations each one of your outputs used for the funding transaction must satisfy.
  final int minConfs;

  /// Whether unconfirmed outputs should be used as inputs for the funding transaction.
  final bool spendUnconfirmed;

  OpenChannelEvent({
    @required this.address,
    @required this.localFundingAmount,
    this.pushSat,
    this.targetConf,
    this.satPerByte,
    this.private,
    this.minHtlcMsat,
    this.remoteCsvDelay,
    this.minConfs,
    this.spendUnconfirmed,
  });

  @override
  List<Object> get props => [
        address.pubkey,
        address.host,
        localFundingAmount,
        pushSat,
        targetConf,
        satPerByte,
        private,
        minHtlcMsat,
        remoteCsvDelay,
        minConfs,
        spendUnconfirmed,
      ];
}
