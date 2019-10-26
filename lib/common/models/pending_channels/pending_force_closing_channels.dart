import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/rpc.pb.dart';

import 'pending_channel_data.dart';
import 'pending_htlcs.dart';

class PendingForceClosingChannel {
  final PendingChannelData channel;
  final String closingTxid;
  final Int64 limboBalance;
  final int maturityHeight;
  final int blocksTilMaturity;
  final Int64 recoveredBalance;
  final List<PendingHtlc> pendingHtlcs;

  PendingForceClosingChannel({
    this.channel,
    this.closingTxid,
    this.limboBalance,
    this.maturityHeight,
    this.blocksTilMaturity,
    this.recoveredBalance,
    this.pendingHtlcs,
  });

  static PendingForceClosingChannel fromGRPC(
    PendingChannelsResponse_ForceClosedChannel fcc,
  ) {
    List<PendingHtlc> pendingHtlcs;
    if (fcc.pendingHtlcs.isNotEmpty) {
      pendingHtlcs = List<PendingHtlc>();
      fcc.pendingHtlcs.forEach(
        (htlc) {
          pendingHtlcs.add(PendingHtlc.fromGRPC(htlc));
        },
      );
    }

    PendingChannelData channel;
    if (fcc.channel != null) channel = PendingChannelData.fromGRPC(fcc.channel);

    return PendingForceClosingChannel(
      channel: channel,
      closingTxid: fcc.closingTxid,
      limboBalance: fcc.limboBalance,
      maturityHeight: fcc.maturityHeight,
      blocksTilMaturity: fcc.blocksTilMaturity,
      recoveredBalance: fcc.recoveredBalance,
      pendingHtlcs: pendingHtlcs,
    );
  }
}
