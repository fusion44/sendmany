import 'package:flutter/material.dart';

class SendManyCard extends Card {
  final String header;
  final List<Widget> cardChildren;
  final CrossAxisAlignment crossAxisAlignment;

  SendManyCard(
    this.header,
    this.cardChildren, [
    this.crossAxisAlignment = CrossAxisAlignment.start,
  ]);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
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
