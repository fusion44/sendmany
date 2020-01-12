import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';

import '../common/models/models.dart';
import '../common/widgets/widgets.dart';
import 'close_channel_settings_widget.dart';

class CloseChannelPageResult {
  final bool force;
  final int blockTarget;
  final Int64 satPerByte;
  final String deliveryAddress;

  CloseChannelPageResult(
    this.force,
    this.blockTarget,
    this.satPerByte,
    this.deliveryAddress,
  );
}

class CloseChannelPage extends StatefulWidget {
  final EstablishedChannel channel;

  CloseChannelPage(this.channel);

  @override
  _CloseChannelPageState createState() => _CloseChannelPageState();
}

class _CloseChannelPageState extends State<CloseChannelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TranslatedText('channels.close.close')),
      body: CloseChannelSettingsWidget(widget.channel, _onCloseChannelClick),
    );
  }

  void _onCloseChannelClick(
    bool force,
    int blockTarget,
    Int64 satPerByte,
    String deliveryAddress,
  ) {
    Navigator.pop(
      context,
      CloseChannelPageResult(force, blockTarget, satPerByte, deliveryAddress),
    );
  }
}
