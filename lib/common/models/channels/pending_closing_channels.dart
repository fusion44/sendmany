import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

import 'channel.dart';
import 'pending_channel_data.dart';

/// Channel pending closing
///
/// Waiting for the closing tx to be included
class PendingClosingChannel extends Channel {
  /// The pending channel to be closed
  final PendingChannelData channel;

  /// The transaction id of the closing transaction
  final String closingTxid;

  PendingClosingChannel({this.channel, this.closingTxid})
      : super(channel.channelPoint);

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
