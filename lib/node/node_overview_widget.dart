import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/torden_card.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/wallet/balance/bloc/bloc.dart';

class NodeOverviewWidget extends StatefulWidget {
  @override
  _NodeOverviewWidgetState createState() => _NodeOverviewWidgetState();
}

class _NodeOverviewWidgetState extends State<NodeOverviewWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<LnInfoBloc>(context),
      builder: (BuildContext context, LnInfoState state) {
        if (state is LnInfoStateLoading) {
          return TranslatedText("network.loading");
        } else if (state is LnInfoStateLoadingFinished) {
          return TordenCard(
            tr(context, "node.info"),
            [
              _buildRowAliasAndChain(state),
              Divider(),
              _buildRowChainSyncBlockHeight(state),
              Divider(),
              _buildRowPeersChannel(state),
              Divider(),
              _buildRowPubkey(state),
              Divider(),
              _buildRowVersion(state),
            ],
          );
        }
        return Text("Unknown State? $state");
      },
    );
  }

  _buildRowAliasAndChain(LnInfoStateLoadingFinished state) {
    String chain = "Mutiple";
    if (state.infoResponse.chains.length == 0) {
      chain = "Error: None??";
    } else if (state.infoResponse.chains.length == 1) {
      chain =
          "${state.infoResponse.chains[0].chain} - ${state.infoResponse.chains[0].network}";
    }

    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        children: <Widget>[
          Expanded(
            child: DataItem(
              text: state.infoResponse.alias,
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

  _buildRowPubkey(LnInfoStateLoadingFinished state) {
    return Row(
      children: <Widget>[
        Expanded(
          child: DataItem(
            text: state.infoResponse.identityPubkey,
            label: tr(context, "node.identity_pubkey"),
          ),
        ),
        IconButton(
          icon: Icon(Icons.share),
          onPressed: () {
            // TODO: implement me
            print("share");
          },
        ),
      ],
    );
  }

  _buildRowVersion(LnInfoStateLoadingFinished state) {
    return DataItem(
      text: state.infoResponse.version,
      label: "Version",
    );
  }

  _buildRowChainSyncBlockHeight(LnInfoStateLoadingFinished state) {
    bool synced = state.infoResponse.syncedToChain;
    return Row(
      children: <Widget>[
        Expanded(
          child: DataItem(
            text: state.infoResponse.blockHeight.toString(),
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

  _buildRowPeersChannel(LnInfoStateLoadingFinished state) {
    int a = state.infoResponse.numActiveChannels;
    int i = state.infoResponse.numInactiveChannels;
    int p = state.infoResponse.numPendingChannels;

    return Row(
      children: <Widget>[
        Expanded(
          child: DataItem(
            text: state.infoResponse.numPeers.toString(),
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
