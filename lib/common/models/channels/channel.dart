import 'package:sendmany/common/models/models.dart';

abstract class Channel {
  /// The outpoint (txid:index) of the funding transaction.
  /// With this value, Bob will be able to generate a signature
  /// for Alice's version of the commitment transaction.
  final ChannelPoint channelPoint;

  /// Node info of the remote node.
  final RemoteNodeInfo remoteNodeInfo;

  Channel(this.channelPoint, [this.remoteNodeInfo]);
}
