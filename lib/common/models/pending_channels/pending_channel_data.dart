import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;

class PendingChannelData {
  final String remoteNodePub;
  final String channelPoint;
  final Int64 capacity;
  final Int64 localBalance;
  final Int64 remoteBalance;
  final Int64 localChanReserveSat;
  final Int64 remoteChanReserveSat;

  PendingChannelData({
    this.remoteNodePub,
    this.channelPoint,
    this.capacity,
    this.localBalance,
    this.remoteBalance,
    this.localChanReserveSat,
    this.remoteChanReserveSat,
  });

  static PendingChannelData fromGRPC(
    grpc.PendingChannelsResponse_PendingChannel channel,
  ) {
    return PendingChannelData(
      remoteNodePub: channel.remoteNodePub,
      channelPoint: channel.channelPoint,
      capacity: channel.capacity,
      localBalance: channel.localBalance,
      remoteBalance: channel.remoteBalance,
      localChanReserveSat: channel.localChanReserveSat,
      remoteChanReserveSat: channel.remoteChanReserveSat,
    );
  }
}
