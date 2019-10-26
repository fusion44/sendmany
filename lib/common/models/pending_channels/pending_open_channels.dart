import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

import 'pending_channel_data.dart';

class PendingOpenChannel {
  final PendingChannelData channel;
  final int confirmationHeight;
  final Int64 commitFee;
  final Int64 commitWeight;
  final Int64 feePerKw;

  PendingOpenChannel({
    this.channel,
    this.confirmationHeight,
    this.commitFee,
    this.commitWeight,
    this.feePerKw,
  });

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
