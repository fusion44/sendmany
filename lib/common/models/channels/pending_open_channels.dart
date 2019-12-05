import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

import 'channel.dart';
import 'pending_channel_data.dart';

/// Channel pending opening
///
/// Opening tx was included but waiting for confirmations
class PendingOpenChannel extends Channel {
  /// The pending channel
  final PendingChannelData channel;

  /// The height at which this channel will be confirmed
  final int confirmationHeight;

  /// The amount calculated to be paid in fees for the current
  /// set of commitment transactions. The fee amount is persisted
  /// with the channel in order to allow the fee amount to be
  /// removed and recalculated with each channel state update,
  /// including updates that happen after a system restart.
  final Int64 commitFee;

  /// The weight of the commitment transaction
  final Int64 commitWeight;

  /// The required number of satoshis per kilo-weight that the
  /// requester will pay at all times, for both the funding
  /// transaction and commitment transaction. This value can
  /// later be updated once the channel is open.
  final Int64 feePerKw;

  PendingOpenChannel({
    this.channel,
    this.confirmationHeight,
    this.commitFee,
    this.commitWeight,
    this.feePerKw,
  }) : super(channel.channelPoint);

  static PendingOpenChannel fromGRPC(
    grpc.PendingChannelsResponse_PendingOpenChannel v,
  ) {
    PendingChannelData channel;
    if (v.channel != null) channel = PendingChannelData.fromGRPC(v.channel);

    return PendingOpenChannel(
      channel: channel,
      confirmationHeight: v.confirmationHeight,
      commitFee: v.commitFee,
      commitWeight: v.commitWeight,
      feePerKw: v.feePerKw,
    );
  }
}
