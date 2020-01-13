import 'package:flutter/material.dart';
import 'package:sendmany/common/models/models.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/widgets.dart';

class RemoteNodeInfoWidget extends StatelessWidget {
  final RemoteNodeInfo nodeInfo;

  const RemoteNodeInfoWidget({
    Key key,
    @required this.nodeInfo,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
  }
}
