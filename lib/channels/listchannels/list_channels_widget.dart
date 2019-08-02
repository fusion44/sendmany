import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/compact_channel_list_item.dart';
import 'package:torden/common/widgets/widgets.dart';

import 'bloc/bloc.dart';

class ListChannelsWidget extends StatefulWidget {
  @override
  _ListChannelsWidgetState createState() => _ListChannelsWidgetState();
}

class _ListChannelsWidgetState extends State<ListChannelsWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<ListChannelsBloc>(context),
      builder: (BuildContext context, ListChannelsState state) {
        if (state is ChannelsLoadingState) {
          return Text(tr(context, "network.loading"));
        } else if (state is ChannelsLoadedState) {
          List<Widget> widgets = [Container(height: 8)];
          int length = state.channels.channels.length;
          List<Channel> channels = state.channels.channels;

          for (int i = 0; i < length; i++) {
            widgets.add(CompactChannelListItem(channel: channels[i]));
            if (i != length - 1) {
              widgets.add(SizedBox(height: 8.0));
            }
          }

          return TordenCard(
            tr(context, "channels.info"),
            widgets,
          );
        }
        return Text("Unknown State? $state");
      },
    );
  }
}
