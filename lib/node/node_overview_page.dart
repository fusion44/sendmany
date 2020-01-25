import 'package:flutter/material.dart';

import 'node_overview_widget.dart';
import 'peers_list_widget.dart';

class NodeOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          NodeOverviewWidget(),
          PeerListWidget(),
        ],
      ),
    );
  }
}
