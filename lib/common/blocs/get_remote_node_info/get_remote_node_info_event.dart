import 'package:equatable/equatable.dart';

abstract class GetRemoteNodeInfoBaseEvent extends Equatable {}

/// Starts fetching node information
class GetRemoteNodeInfoEvent extends GetRemoteNodeInfoBaseEvent {
  /// The 33-byte hex-encoded compressed public of the target node
  final List<String> pubKeys;

  /// If true, will include all known channels associated with the node.
  final bool includeChannels;

  GetRemoteNodeInfoEvent(this.pubKeys, [this.includeChannels = false]);

  @override
  List<Object> get props => [pubKeys, includeChannels];
}
