import 'package:equatable/equatable.dart';

/// Starts fetching node information
class GetRemoteNodeInfoEvent extends Equatable {
  /// The 33-byte hex-encoded compressed public of the target node
  final String pubKey;

  /// If true, will include all known channels associated with the node.
  final bool includeChannels;

  const GetRemoteNodeInfoEvent(this.pubKey, [this.includeChannels = false]);

  @override
  List<Object> get props => [pubKey, includeChannels];
}
