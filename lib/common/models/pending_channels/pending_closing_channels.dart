import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

import 'package:sendmany/common/models/pending_channels/pending_channel_data.dart';

class PendingClosingChannel {
  final PendingChannelData channel;
  final String closingTxid;

  PendingClosingChannel({this.channel, this.closingTxid});

  static PendingClosingChannel fromGRPC(
    grpc.PendingChannelsResponse_ClosedChannel v,
  ) {
    PendingChannelData channel;
    if (v.channel != null) channel = PendingChannelData.fromGRPC(v.channel);

    return PendingClosingChannel(
      channel: channel,
      closingTxid: v.closingTxid,
    );
  }
}
