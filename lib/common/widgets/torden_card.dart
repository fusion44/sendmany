import 'package:flutter/material.dart';

class TordenCard extends Card {
  final String header;
  final Widget child;

  TordenCard(this.header, this.child);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(this.header, style: theme.textTheme.title),
            child,
          ],
        ),
      ),
    );
  }
}
