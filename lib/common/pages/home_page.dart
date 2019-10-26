import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:sendmany/channels/list_channels/bloc/bloc.dart';
import 'package:sendmany/channels/list_channels_page.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/tabbar/tab_bar.dart';
import 'package:sendmany/common/widgets/widgets.dart';
import 'package:sendmany/node/node_overview_widget.dart';
import 'package:sendmany/preferences/bloc.dart';
import 'package:sendmany/preferences/preferences_page.dart';
import 'package:sendmany/wallet/balance/bloc/bloc.dart';
import 'package:sendmany/wallet/balance/list_transactions/bloc.dart';
import 'package:sendmany/wallet/wallet_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  LnInfoBloc _lnInfoBloc;
  ListChannelsBloc _listChannelsBloc;
  ListTxBloc _listTxBloc;

  @override
  void initState() {
    _controller = new TabController(length: 4, vsync: this);
    _lnInfoBloc = LnInfoBloc();
    _lnInfoBloc.add(LoadLnInfo());
    _listChannelsBloc = ListChannelsBloc();
    _listChannelsBloc.add(LoadChannelList());
    _listTxBloc = ListTxBloc(_lnInfoBloc);
    _listTxBloc.add(LoadTxEvent());
    _listTxBloc.add(ChangePollTxIntervalEvent(30));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _listTxBloc.close(); // contains a reference to _lnInfoBloc, dispose first
    _lnInfoBloc.close();
    _listChannelsBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LnInfoBloc>.value(value: _lnInfoBloc),
        BlocProvider<ListChannelsBloc>.value(value: _listChannelsBloc),
        BlocProvider<ListTxBloc>.value(value: _listTxBloc),
      ],
      child: BlocListener(
        bloc: BlocProvider.of<PreferencesBloc>(context),
        listener: (BuildContext context, PreferencesState state) {
          if (state != null) {
            FlutterI18n.refresh(context, Locale(state.language));
            updateTimeAgoLib(state.language);
            setState(() {});
          }
        },
        child: BlocBuilder(
          bloc: BlocProvider.of<ConnectionManagerBloc>(context),
          builder: (BuildContext context, ConnectionManagerState state) {
            if (state is ConnectionEstablishedState) {
              return _buildScaffold();
            }
            return Scaffold(
              body: Center(
                child: TranslatedText('network.not_yet_established'),
              ),
            );
          },
        ),
      ),
    );
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: sendManyBackground,
        elevation: 0,
        titleSpacing: 0,
        title: _getTabBar(),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          WalletPage(),
          ListChannelsPage(),
          Column(
            children: <Widget>[
              NodeOverviewWidget(),
            ],
          ),
          PreferencesPage(),
        ],
      ),
    );
  }

  _getTabBar() {
    List<TabData> tabs = [];
    tabs.add(
        TabData(tr(context, 'wallet.wallet'), Icons.account_balance_wallet));
    tabs.add(TabData(tr(context, 'channels.info'), Icons.scatter_plot));
    tabs.add(TabData(tr(context, 'node.info'), Icons.star));
    tabs.add(TabData(tr(context, 'prefs.title'), Icons.settings));

    return SendManyTabBar(controller: _controller, tabs: tabs);
  }
}
