import '../../../common/models/models.dart';

/// A fully loaded Peer with all necessary info associated
///
/// [error] will be null if loading was successful
class LoadedPeer {
  /// The loaded [Peer]
  final Peer peer;

  /// The loaded [RemoteNodeInfo]
  final RemoteNodeInfo nodeInfo;

  /// A [PeerLoadError] if loading was not successful
  final PeerLoadError error;

  LoadedPeer(this.peer, {this.nodeInfo, this.error});
}

/// An error occurred during load time.
class PeerLoadError {
  final String message;
  final String pubKey;

  PeerLoadError(this.message, this.pubKey);
}
