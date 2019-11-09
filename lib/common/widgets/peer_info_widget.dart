import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendmany/common/blocs/get_remote_node_info/bloc.dart';
import 'package:sendmany/common/models/models.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/widgets.dart';

class RemoteNodeInfoWidget extends StatelessWidget {
  final NodeInfo nodeInfo;

  const RemoteNodeInfoWidget({
    Key key,
    @required this.nodeInfo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<GetRemoteNodeInfoBloc>(context),
      builder: (BuildContext context, GetRemoteNodeInfoState state) {
        if (state is RemoteNodeInfoLoadingState) {
          return Text('loading');
        } else if (state is RemoteNodeInfoLoadedState) {
          return SendManyCard(
            tr(context, 'channels.partner'),
            [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: DataItem(
                      label: tr(context, 'channels.partner_pubkey'),
                      text: nodeInfo.node.pubKey,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: DataItem(
                      label: tr(context, 'channels.partner_alias'),
                      text: nodeInfo.node.alias,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: DataItemMoney(
                      label: tr(context, 'channels.partner_total_capacity'),
                      amount: nodeInfo.totalCapacity,
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: DataItem(
                      label: tr(context, 'channels.partner_num_channels'),
                      text: nodeInfo.numChannels.toString(),
                    ),
                  ),
                ],
              ),
            ],
          );
        } else if (state is RemoteNodeInfoErrorState) {
          return Center(child: Text('Error: ${state.error}'));
        } else {
          return Center(child: Text('Unskown State'));
        }
      },
    );
  }
}
