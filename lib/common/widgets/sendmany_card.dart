import 'package:flutter/material.dart';

class SendManyCard extends Card {
  final String header;
  final List<Widget> cardChildren;
  final CrossAxisAlignment crossAxisAlignment;
  final Icon actionButtonIcon;
  final Function onActionButtonPressed;

  SendManyCard(
    this.header,
    this.cardChildren, {
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.actionButtonIcon,
    this.onActionButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: crossAxisAlignment,
          children: <Widget>[
            _buildHeader(Theme.of(context)),
            ...cardChildren,
          ],
        ),
      ),
    );
  }

  _buildHeader(ThemeData theme) {
    Widget headerText = Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(this.header, style: theme.textTheme.title),
    );
    if (actionButtonIcon == null && onActionButtonPressed == null) {
      return headerText;
    } else {
      return Row(
        children: <Widget>[
          Expanded(child: headerText),
          IconButton(
            icon: this.actionButtonIcon,
            onPressed: this.onActionButtonPressed,
          )
        ],
      );
    }
  }
}
