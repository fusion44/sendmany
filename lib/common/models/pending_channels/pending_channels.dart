import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

import 'pending_closing_channels.dart';
import 'pending_force_closing_channels.dart';
import 'pending_open_channels.dart';
import 'waiting_close_channels.dart';

class PendingChannels {
  final Int64 totalLimboBalance;
  final List<PendingOpenChannel> pendingOpenChannels;
  final List<PendingClosingChannel> pendingClosingChannels;
  final List<PendingForceClosingChannel> pendingForceClosingChannels;
  final List<WaitingCloseChannel> waitingCloseChannels;

  PendingChannels({
    this.totalLimboBalance,
    this.pendingOpenChannels,
    this.pendingClosingChannels,
    this.pendingForceClosingChannels,
    this.waitingCloseChannels,
  });

  static PendingChannels fromGRPC(grpc.PendingChannelsResponse resp) {
    List<PendingOpenChannel> pendingOpenChannels = [];
    List<PendingClosingChannel> pendingClosingChannels = [];
    List<PendingForceClosingChannel> pendingForceClosingChannels = [];
    List<WaitingCloseChannel> waitingCloseChannels = [];

    if (resp.pendingOpenChannels.isNotEmpty) {
      resp.pendingOpenChannels.forEach((v) {
        pendingOpenChannels.add(PendingOpenChannel.fromGRPC(v));
      });
    }
    if (resp.pendingClosingChannels.isNotEmpty) {
      resp.pendingClosingChannels.forEach((v) {
        pendingClosingChannels.add(PendingClosingChannel.fromGRPC(v));
      });
    }
    if (resp.pendingForceClosingChannels.isNotEmpty) {
      resp.pendingForceClosingChannels.forEach((v) {
        pendingForceClosingChannels.add(PendingForceClosingChannel.fromGRPC(v));
      });
    }
    if (resp.waitingCloseChannels.isNotEmpty) {
      resp.waitingCloseChannels.forEach((v) {
        waitingCloseChannels.add(WaitingCloseChannel.fromGRPC(v));
      });
    }

    return PendingChannels(
      totalLimboBalance: resp.totalLimboBalance,
      pendingOpenChannels: pendingOpenChannels,
      pendingClosingChannels: pendingClosingChannels,
      pendingForceClosingChannels: pendingForceClosingChannels,
    );
  }
}
