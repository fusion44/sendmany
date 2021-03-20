import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../channels/list_channels/list_channels_repository/list_channel_repository.dart';
import '../../node/forwards/fwd_history_bloc/fwd_history_bloc.dart';
import '../../node/forwards/fwd_overview_page.dart';
import '../../node/forwards/models/models.dart';
import '../models/models.dart';
import '../utils.dart';
import 'widgets.dart';

class LocalNodeInfoWidget extends StatefulWidget {
  final LocalNodeInfo info;
  final FwdFeeReport feeReport;
  final bool showShareButton;
  final String header;

  LocalNodeInfoWidget(
    this.info,
    this.feeReport,
    this.header, {
    this.showShareButton = true,
  });

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
        Divider(),
        _buildFeeReport(widget.feeReport),
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
            message: 'Active / Inactive / Pending',
            child: DataItem(
              label: tr(context, 'node.channels'),
              text: '$a / $i / $p',
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildFeeReport(FwdFeeReport report) {
    return InkWell(
      onTap: () {
        _navigateToFeeOverviewPage();
      },
      child: Row(
        children: <Widget>[
          Expanded(
            child: DataItemMoney(
              amount: report.dayFeeSum,
              label: tr(context, 'forwards.day'),
            ),
          ),
          Expanded(
            child: DataItemMoney(
              amount: report.weekFeeSum,
              label: tr(context, 'forwards.week'),
            ),
          ),
          Expanded(
            child: DataItemMoney(
              amount: report.monthFeeSum,
              label: tr(context, 'forwards.month'),
            ),
          ),
        ],
      ),
    );
  }

  void _navigateToFeeOverviewPage() async {
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (c) {
          return BlocProvider(
            create: (providerContext) => ForwardingHistoryBloc(
              RepositoryProvider.of<ListChannelsRepository>(context),
            )..add(LoadFwdHistory()),
            child: FwdOverviewPage(),
          );
        },
      ),
    );
  }
}
