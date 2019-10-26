import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

import 'pending_channel_data.dart';

class WaitingCloseChannel {
  final PendingChannelData channel;
  final Int64 limboBalance;

  WaitingCloseChannel({this.channel, this.limboBalance});

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
