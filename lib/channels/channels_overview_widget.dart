import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:torden/channels/blocs/listchannelsbloc/listchannels_state.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/compact_channel_list_item.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/lightning/lnd/lnd_rpc.dart';

import 'blocs/listchannelsbloc/bloc.dart';

class ChannelsOverviewWidget extends StatefulWidget {
  @override
  _ChannelsOverviewWidgetState createState() => _ChannelsOverviewWidgetState();
}

class _ChannelsOverviewWidgetState extends State<ChannelsOverviewWidget> {
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
              widgets.add(Divider());
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
