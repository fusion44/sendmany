import 'package:flutter/material.dart';
import 'package:torden/common/connection/lnd_rpc/rpc.pb.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/widgets.dart';

class NodeInfo extends StatefulWidget {
  final GetInfoResponse info;
  final bool showShareButton;
  final String header;
  NodeInfo(this.info, this.header, {this.showShareButton = true});

  @override
  _NodeInfoState createState() => _NodeInfoState();
}

class _NodeInfoState extends State<NodeInfo> {
  @override
  Widget build(BuildContext context) {
    return TordenCard(
      widget.header,
      [
        _buildRowAliasAndChain(widget.info),
        Divider(),
        _buildRowChainSyncBlockHeight(widget.info),
        Divider(),
        _buildRowPeersChannel(widget.info),
        Divider(),
        _buildRowPubkey(widget.info),
        Divider(),
        _buildRowVersion(widget.info),
      ],
    );
  }

  _buildRowAliasAndChain(GetInfoResponse state) {
    String chain = "Mutiple";
    if (state.chains.length == 0) {
      chain = "Error: None??";
    } else if (state.chains.length == 1) {
      chain = "${state.chains[0].chain} - ${state.chains[0].network}";
    }

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: DataItem(
              text: state.alias,
              label: tr(context, "node.alias"),
            ),
          ),
          Expanded(
            child: DataItem(
              label: tr(context, "node.chain"),
              text: chain,
            ),
          ),
        ],
      ),
    );
  }

  _buildRowPubkey(GetInfoResponse state) {
    return Row(
      children: <Widget>[
        Expanded(
          child: DataItem(
            text: state.identityPubkey,
            label: tr(context, "node.identity_pubkey"),
          ),
        ),
        widget.showShareButton
            ? IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  // TODO: implement me
                  print("share");
                },
              )
            : Container(),
      ],
    );
  }

  _buildRowVersion(GetInfoResponse state) {
    return DataItem(
      text: state.version,
      label: "Version",
    );
  }

  _buildRowChainSyncBlockHeight(GetInfoResponse state) {
    bool synced = state.syncedToChain;
    return Row(
      children: <Widget>[
        Expanded(
          child: DataItem(
            text: state.blockHeight.toString(),
            label: tr(context, "node.block_height"),
          ),
        ),
        Expanded(
          child: DataItem(
            text: synced
                ? tr(context, "node.synced_to_chain_yes")
                : tr(context, "node.synced_to_chain_no"),
            label: tr(context, "node.synced_to_chain"),
            color: synced ? Colors.green : Colors.red,
          ),
        ),
      ],
    );
  }

  _buildRowPeersChannel(GetInfoResponse info) {
    int a = info.numActiveChannels;
    int i = info.numInactiveChannels;
    int p = info.numPendingChannels;

    return Row(
      children: <Widget>[
        Expanded(
          child: DataItem(
            text: info.numPeers.toString(),
            label: tr(context, "node.peers"),
          ),
        ),
        Expanded(
          child: Tooltip(
            child: DataItem(
              label: tr(context, "node.channels"),
              text: "$a / $i / $p",
            ),
            message: "Active / Inactive / Pending",
          ),
        ),
      ],
    );
  }
}
