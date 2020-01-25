import 'package:flutter/material.dart';

import '../common/utils.dart';
import '../common/widgets/widgets.dart';

class FindPeerPage extends StatefulWidget {
  @override
  _FindPeerPageState createState() => _FindPeerPageState();
}

class _FindPeerPageState extends State<FindPeerPage> {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TranslatedText('chat.find_a_peer')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: <Widget>[
              Container(height: 32.0),
              TextField(
                decoration: InputDecoration(
                  hintText: tr(context, 'chat.enter_peer_pubkey'),
                ),
                controller: _controller,
                maxLines: 3,
              ),
              RaisedButton(
                child: TranslatedText('chat.chat_with_peer'),
                onPressed: () {
                  Navigator.pop(context, _controller.text);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
