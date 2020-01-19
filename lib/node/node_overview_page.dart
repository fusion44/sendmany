import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../chat/chat_page.dart';
import '../chat/list_messages/bloc.dart';
import 'node_overview_widget.dart';
import 'peers_list_widget.dart';

class NodeOverviewPage extends StatefulWidget {
  @override
  _NodeOverviewPageState createState() => _NodeOverviewPageState();
}

class _NodeOverviewPageState extends State<NodeOverviewPage> {
  final TextEditingController _searchPeerController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          NodeOverviewWidget(),
          BlocProvider.value(
            value: BlocProvider.of<ListMessagesBloc>(context),
            child: PeerListWidget(
              onSearchPeerPressed: _buildSearchDialog,
              chatActive: true,
            ),
          )
        ],
      ),
    );
  }

  void _buildSearchDialog() async {
    _searchPeerController.clear();
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Enter pubkey to chat'),
          content: TextField(
            controller: _searchPeerController,
            decoration: InputDecoration(labelText: 'pubkey'),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Go!'),
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ChatPage(_searchPeerController.text);
                    },
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
}
