import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendmany/channels/create_channel_page.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart';
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/widgets/charts/charts.dart';
import 'package:sendmany/common/widgets/widgets.dart';

import 'list_channels/bloc/bloc.dart';

class ListChannelsPage extends StatefulWidget {
  @override
  _ListChannelsPageState createState() => _ListChannelsPageState();

  static Widget buildFAB(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return CreateChannelPage();
          }),
        );
      },
    );
  }
}

class _ListChannelsPageState extends State<ListChannelsPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder(
      bloc: BlocProvider.of<ListChannelsBloc>(context),
      builder: (BuildContext context, ListChannelsState state) {
        if (state is ChannelsLoadingState) {
          return TranslatedText('network.loading');
        } else if (state is ChannelsLoadedState) {
          int length = state.channels.channels.length;
          List<Channel> channels = state.channels.channels;

          return Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: length,
                  itemBuilder: (context, i) {
                    Channel channel = channels[i];

                    return ListTile(
                      onTap: () => _openChannelPopup(channel),
                      leading: _buildIcon(channel),
                      title: _buildTitleColumn(channel),
                      dense: true,
                    );
                  },
                ),
              ),
            ],
          );
        }
        return Text('Unknown State? $state');
      },
    );
  }

  Column _buildTitleColumn(Channel channel) {
    ThemeData theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Stack(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 1.0),
              child: TranslatedText(
                'channels.id',
                style: theme.textTheme.caption,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 16.0,
              ),
              child: Text(channel.chanId.toString()),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: _buildFlatLineChart(channel),
        ),
        Row(
          children: <Widget>[
            TranslatedText('channels.local', style: theme.textTheme.caption),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: MoneyValueView(amount: channel.localBalance),
            ),
            Expanded(child: Container()),
            Padding(
              padding: const EdgeInsets.only(right: 6.0),
              child: TranslatedText(
                'channels.remote',
                style: theme.textTheme.caption,
              ),
            ),
            MoneyValueView(amount: channel.remoteBalance),
          ],
        ),
      ],
    );
  }

  Icon _buildIcon(Channel channel) {
    return Icon(
      channel.active ? Icons.check_circle : Icons.error_outline,
      color: channel.active ? Colors.green : sendManyYellow500,
    );
  }

  FlatLineChart _buildFlatLineChart(Channel channel) {
    double total =
        channel.localBalance.toDouble() + channel.remoteBalance.toDouble();
    List<ChartSectionInput> sections = [
      ChartSectionInput(channel.localBalance.toDouble(), sendManyLocalBalance),
      ChartSectionInput(
        channel.remoteBalance.toDouble(),
        sendManyRemoteBalance,
      ),
    ];

    return FlatLineChart(
      values: sections,
      total: total,
      strokeWidth: 2,
    );
  }

  void _openChannelPopup(Channel channel) {
    print(channel.chanId);
  }
}
