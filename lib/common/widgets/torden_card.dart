import 'package:flutter/material.dart';

class TordenCard extends Card {
  final String header;
  final List<Widget> cardChildren;

  TordenCard(this.header, this.cardChildren);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 8.0),
              child: Text(this.header, style: theme.textTheme.title),
            ),
            ...cardChildren,
          ],
        ),
      ),
    );
  }
}
