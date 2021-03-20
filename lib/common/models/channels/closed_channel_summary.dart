import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../models.dart';

enum ChannelCloseType {
  cooperativeClose,
  localForceClose,
  remoteForceClose,
  breachClose,
  fundingCanceled,
  abandoned,
}

class ClosedChannelSummary extends Channel {
  final Int64 chanId;
  final String chainHash;
  final String closingTxHash;
  final String remotePubkey;
  final Int64 capacity;
  final int closeHeight;
  final Int64 settledBalance;
  final Int64 timeLockedBalance;
  final ChannelCloseType closeType;

  ClosedChannelSummary({
    ChannelPoint channelPoint,
    RemoteNodeInfo remoteNodeInfo,
    this.chanId,
    this.chainHash,
    this.closingTxHash,
    this.remotePubkey,
    this.capacity,
    this.closeHeight,
    this.settledBalance,
    this.timeLockedBalance,
    this.closeType,
  }) : super(channelPoint, remoteNodeInfo);

  static ClosedChannelSummary fromGRPC(
    grpc.ChannelCloseSummary s,
    RemoteNodeInfo ni,
  ) {
    ChannelCloseType type;
    switch (s.closeType) {
      case grpc.ChannelCloseSummary_ClosureType.COOPERATIVE_CLOSE:
        type = ChannelCloseType.cooperativeClose;
        break;
      case grpc.ChannelCloseSummary_ClosureType.LOCAL_FORCE_CLOSE:
        type = ChannelCloseType.localForceClose;
        break;
      case grpc.ChannelCloseSummary_ClosureType.REMOTE_FORCE_CLOSE:
        type = ChannelCloseType.remoteForceClose;
        break;
      case grpc.ChannelCloseSummary_ClosureType.BREACH_CLOSE:
        type = ChannelCloseType.breachClose;
        break;
      case grpc.ChannelCloseSummary_ClosureType.FUNDING_CANCELED:
        type = ChannelCloseType.fundingCanceled;
        break;
      case grpc.ChannelCloseSummary_ClosureType.ABANDONED:
        type = ChannelCloseType.abandoned;
        break;
      default:
    }

    return ClosedChannelSummary(
      channelPoint: ChannelPoint.fromString(s.channelPoint),
      remoteNodeInfo: ni,
      chanId: s.chanId,
      chainHash: s.chainHash,
      closingTxHash: s.closingTxHash,
      remotePubkey: s.remotePubkey,
      capacity: s.capacity,
      closeHeight: s.closeHeight,
      settledBalance: s.settledBalance,
      timeLockedBalance: s.timeLockedBalance,
      closeType: type,
    );
  }
}
