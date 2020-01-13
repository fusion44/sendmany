import 'package:flutter/material.dart';
import 'package:sendmany/common/models/models.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/widgets.dart';

class LocalNodeInfoWidget extends StatefulWidget {
  final LocalNodeInfo info;
  final bool showShareButton;
  final String header;
  LocalNodeInfoWidget(this.info, this.header, {this.showShareButton = true});

  @override
  _LocalNodeInfoWidgetState createState() => _LocalNodeInfoWidgetState();
}

class _LocalNodeInfoWidgetState extends State<LocalNodeInfoWidget> {
  @override
  Widget build(BuildContext context) {
    return SendManyCard(
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

  Widget _buildRowAliasAndChain(LocalNodeInfo state) {
    var chain = 'Multiple';
    if (state.chains.isEmpty) {
      chain = 'Error: None??';
    } else if (state.chains.length == 1) {
      chain = '${state.chains[0].chain} - ${state.chains[0].network}';
    }

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: DataItem(
              text: state.alias,
              label: tr(context, 'node.alias'),
            ),
          ),
          Expanded(
            child: DataItem(
              label: tr(context, 'node.chain'),
              text: chain,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRowPubkey(LocalNodeInfo state) {
    return Row(
      children: <Widget>[
        Expanded(
          child: DataItem(
            text: state.identityPubkey,
            label: tr(context, 'node.identity_pubkey'),
          ),
        ),
        widget.showShareButton
            ? IconButton(
                icon: Icon(Icons.share),
                onPressed: () {
                  // TODO: implement me
                  print('share');
                },
              )
            : Container(),
      ],
    );
  }

  Widget _buildRowVersion(LocalNodeInfo state) {
    return DataItem(
      text: state.version,
      label: 'Version',
    );
  }

  Widget _buildRowChainSyncBlockHeight(LocalNodeInfo state) {
    var synced = state.syncedToChain;
    return Row(
      children: <Widget>[
        Expanded(
          child: DataItem(
            text: state.blockHeight.toString(),
            label: tr(context, 'node.block_height'),
          ),
        ),
        Expanded(
          child: DataItem(
            text: synced
                ? tr(context, 'node.synced_to_chain_yes')
                : tr(context, 'node.synced_to_chain_no'),
            label: tr(context, 'node.synced_to_chain'),
            color: synced ? Colors.green : Colors.red,
          ),
        ),
      ],
    );
  }

  Widget _buildRowPeersChannel(LocalNodeInfo info) {
    var a = info.numActiveChannels;
    var i = info.numInactiveChannels;
    var p = info.numPendingChannels;

    return Row(
      children: <Widget>[
        Expanded(
          child: DataItem(
            text: info.numPeers.toString(),
            label: tr(context, 'node.peers'),
          ),
        ),
        Expanded(
          child: Tooltip(
            child: DataItem(
              label: tr(context, 'node.channels'),
              text: '$a / $i / $p',
            ),
            message: 'Active / Inactive / Pending',
          ),
        ),
      ],
    );
  }
}
