import 'package:flutter/material.dart';

import '../../connection/lnd_rpc/rpc.pb.dart' as grpc;
import 'chain.dart';
import 'feature.dart';

/// Stores information about the local lightning node
class LocalNodeInfo {
  /// The version of the LND software that the node is running.
  final String version;

  /// The identity pubkey of the current node.
  final String identityPubkey;

  /// If applicable, the alias of the current node, e.g. "bob"
  final String alias;

  /// The color of the current node in hex code format
  final Color color;

  /// Number of pending channels
  final int numPendingChannels;

  /// Number of active channels
  final int numActiveChannels;

  /// Number of inactive channels
  final int numInactiveChannels;

  /// Number of peers
  final int numPeers;

  /// The node's current view of the height of the best block
  final int blockHeight;

  /// The node's current view of the hash of the best block
  final String blockHash;

  /// Timestamp of the block best known to the wallet
  final DateTime bestHeaderTimestamp;

  /// Whether the wallet's view is synced to the main chain
  final bool syncedToChain;

  /// Whether we consider ourselves synced with the public channel graph.
  final bool syncedToGraph;

  /// A list of active chains the node is connected to
  final List<Chain> chains;

  /// The URIs of the current node.
  final List<String> uris;

  /// Features that our node has advertised in our init message, node
  /// announcements and invoices.
  final List<Feature> features;

  LocalNodeInfo({
    this.version,
    this.identityPubkey,
    this.alias,
    this.color,
    this.numPendingChannels,
    this.numActiveChannels,
    this.numInactiveChannels,
    this.numPeers,
    this.blockHeight,
    this.blockHash,
    this.bestHeaderTimestamp,
    this.syncedToChain,
    this.syncedToGraph,
    this.chains,
    this.uris,
    this.features,
  });

  LocalNodeInfo.fromGrpc(grpc.GetInfoResponse i)
      : version = i.version,
        identityPubkey = i.identityPubkey,
        alias = i.alias,
        color = _getColor(i.color),
        numPendingChannels = i.numPendingChannels,
        numActiveChannels = i.numActiveChannels,
        numInactiveChannels = i.numInactiveChannels,
        numPeers = i.numPeers,
        blockHeight = i.blockHeight,
        blockHash = i.blockHash,
        bestHeaderTimestamp = DateTime.fromMillisecondsSinceEpoch(
            i.bestHeaderTimestamp.toInt() * 1000),
        syncedToChain = i.syncedToChain,
        syncedToGraph = i.syncedToGraph,
        chains = _buildChainsList(i.chains),
        uris = i.uris.cast<String>(),
        features = i.features != null ? _buildFeaturesList(i.features) : null;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['version'] = version;
    data['identity_pubkey'] = identityPubkey;
    data['alias'] = alias;
    data['color'] = color;
    data['num_pending_channels'] = numPendingChannels;
    data['num_active_channels'] = numActiveChannels;
    data['num_inactive_channels'] = numInactiveChannels;
    data['num_peers'] = numPeers;
    data['block_height'] = blockHeight;
    data['block_hash'] = blockHash;
    data['best_header_timestamp'] = bestHeaderTimestamp;
    data['synced_to_chain'] = syncedToChain;
    data['synced_to_graph'] = syncedToGraph;
    if (chains != null) {
      data['chains'] = chains.map((v) => v.toJson()).toList();
    }
    data['uris'] = uris;
    data['features'] = _buildFeaturesJson(features);
    return data;
  }
}

List<Chain> _buildChainsList(List<grpc.Chain> chains) {
  final list = <Chain>[];
  if (chains != null && chains.isNotEmpty) {
    chains.forEach((v) {
      list.add(Chain.fromGrpc(v));
    });
  }
  return list;
}

List<Feature> _buildFeaturesList(Map<int, grpc.Feature> features) {
  var list = <Feature>[];
  features.forEach((key, f) => list.add(Feature.fromGrpc(key, f)));
  return list;
}

Map<int, Map<String, dynamic>> _buildFeaturesJson(List<Feature> features) {
  var map = <int, Map<String, dynamic>>{};
  features.forEach((f) {
    map[f.key] = f.toJson();
  });
  return map;
}

Color _getColor(String c) => Color(int.parse(c.replaceAll('#', '0xff')));
