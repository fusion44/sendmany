import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/connection/lnd_rpc/rpc.pb.dart' as grpc;

import 'models.dart';

enum PeerSyncType {
  /// Denotes that we cannot determine the peer's current sync type.
  unknownSync,

  /// Denotes that we are actively receiving new graph updates from the peer.
  activeSync,

  /// Denotes that we are not receiving new graph updates from the peer.
  passiveSync
}

class Peer {
  /// The identity pubkey of the peer
  final String pubKey;

  /// Network address of the peer; eg 127.0.0.1:10011
  final String address;

  /// Bytes of data transmitted to this peer
  final Int64 bytesSent;

  /// Bytes of data transmitted from this peer
  final Int64 bytesRecv;

  /// Satoshis sent to this peer
  final Int64 satSent;

  /// Satoshis received from this peer
  final Int64 satRecv;

  /// A channel is inbound if the counterparty initiated the channel
  final bool inbound;

  /// Ping time to this peer
  final Int64 pingTime;

  /// The type of sync we are currently performing with this peer.
  final PeerSyncType syncType;

  Peer({
    this.pubKey,
    this.address,
    this.bytesSent,
    this.bytesRecv,
    this.satSent,
    this.satRecv,
    this.inbound,
    this.pingTime,
    this.syncType,
  });

  static Peer fromGRPC(grpc.Peer p, [NodeInfo nodeInfo]) {
    return Peer(
      pubKey: p.pubKey,
      address: p.address,
      bytesSent: p.bytesSent,
      bytesRecv: p.bytesRecv,
      satSent: p.satSent,
      satRecv: p.satRecv,
      inbound: p.inbound,
      pingTime: p.pingTime,
      syncType: _getSyncType(p.syncType),
    );
  }

  static PeerSyncType _getSyncType(grpc.Peer_SyncType type) {
    switch (type) {
      case grpc.Peer_SyncType.ACTIVE_SYNC:
        return PeerSyncType.activeSync;
      case grpc.Peer_SyncType.PASSIVE_SYNC:
        return PeerSyncType.passiveSync;
      default:
        return PeerSyncType.unknownSync;
    }
  }
}
