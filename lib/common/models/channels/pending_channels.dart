import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

import 'channel.dart';
import 'pending_closing_channels.dart';
import 'pending_force_closing_channels.dart';
import 'pending_open_channels.dart';
import 'waiting_close_channels.dart';

class PendingChannels {
  /// The balance in satoshis encumbered in pending channels
  final Int64 totalLimboBalance;

  /// Channels pending opening
  final List<Channel> pendingOpenChannels;

  /// Channels pending closing
  final List<Channel> pendingClosingChannels;

  /// Channels pending force closing
  final List<Channel> pendingForceClosingChannels;

  /// Channels waiting for closing tx to confirm
  final List<Channel> waitingCloseChannels;

  PendingChannels({
    this.totalLimboBalance = Int64.ZERO,
    this.pendingOpenChannels = const [],
    this.pendingClosingChannels = const [],
    this.pendingForceClosingChannels = const [],
    this.waitingCloseChannels = const [],
  });

  PendingChannels operator +(PendingChannels other) {
    if (other == null) throw ArgumentError.notNull("other");

    return PendingChannels(
      totalLimboBalance: this.totalLimboBalance + other.totalLimboBalance,
      pendingOpenChannels: [
        ...this.pendingOpenChannels,
        ...other.pendingOpenChannels,
      ],
      pendingClosingChannels: [
        ...this.pendingClosingChannels,
        ...other.pendingClosingChannels,
      ],
      pendingForceClosingChannels: [
        ...this.pendingForceClosingChannels,
        ...other.pendingForceClosingChannels,
      ],
      waitingCloseChannels: [
        ...this.waitingCloseChannels,
        ...other.waitingCloseChannels,
      ],
    );
  }

  /// Whether this instance contains any data
  bool get isEmpty => (pendingOpenChannels.isEmpty &&
      pendingClosingChannels.isEmpty &&
      pendingForceClosingChannels.isEmpty &&
      waitingCloseChannels.isEmpty);

  /// Length of all included lists
  int get length =>
      pendingOpenChannels.length +
      pendingClosingChannels.length +
      pendingForceClosingChannels.length +
      waitingCloseChannels.length;

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
      waitingCloseChannels: waitingCloseChannels,
    );
  }

  @override
  String toString() {
    return "Limbo: $totalLimboBalance / Open: ${pendingOpenChannels.length} / Close: ${pendingClosingChannels.length} / FClose: ${pendingForceClosingChannels.length} / Wait: ${waitingCloseChannels.length}";
  }
}
