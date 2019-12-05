import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

import 'channel.dart';
import 'pending_channel_data.dart';

/// Channel waiting for closing tx to confirm
class WaitingCloseChannel extends Channel {
  /// The pending channel waiting for closing tx to confirm
  final PendingChannelData channel;

  /// The balance in satoshis encumbered in this channel
  final Int64 limboBalance;

  WaitingCloseChannel({this.channel, this.limboBalance})
      : super(channel.channelPoint);

  static WaitingCloseChannel fromGRPC(
    grpc.PendingChannelsResponse_WaitingCloseChannel v,
  ) {
    PendingChannelData channel;
    if (v.channel != null) channel = PendingChannelData.fromGRPC(v.channel);

    return WaitingCloseChannel(
      channel: channel,
      limboBalance: v.limboBalance,
    );
  }
}
