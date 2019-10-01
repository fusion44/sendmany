import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:torden/channels/listchannels/bloc/bloc.dart';
import 'package:torden/channels/listchannels/list_channels_widget.dart';
import 'package:torden/common/connection/connection_manager/bloc.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/tabbar/tab_bar.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/node/node_overview_widget.dart';
import 'package:torden/preferences/bloc.dart';
import 'package:torden/preferences/preferences_page.dart';
import 'package:torden/wallet/balance/balance_overview_widget.dart';
import 'package:torden/wallet/balance/bloc/bloc.dart';
import 'package:torden/wallet/balance/lightning_widget.dart';
import 'package:torden/wallet/balance/load_transactions/bloc/bloc.dart';
import 'package:torden/wallet/balance/transactions_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  LnInfoBloc _lnInfoBloc;
  ListChannelsBloc _listChannelsBloc;
  LoadTransactionsBloc _loadTransactionsBloc;

  @override
  void initState() {
    _controller = new TabController(length: 4, vsync: this);
    _lnInfoBloc = LnInfoBloc();
    _lnInfoBloc.dispatch(LoadLnInfo());
    _listChannelsBloc = ListChannelsBloc();
    _listChannelsBloc.dispatch(LoadChannels());
    _loadTransactionsBloc = LoadTransactionsBloc();
    _loadTransactionsBloc.dispatch(LoadTransactionsEvent());
    _loadTransactionsBloc.dispatch(ChangePollTransactionsIntervalEvent(10));
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _lnInfoBloc.dispose();
    _listChannelsBloc.dispose();
    _loadTransactionsBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LnInfoBloc>.value(
          value: _lnInfoBloc,
        ),
        BlocProvider<ListChannelsBloc>.value(
          value: _listChannelsBloc,
        ),
        BlocProvider<LoadTransactionsBloc>.value(
          value: _loadTransactionsBloc,
        ),
      ],
      child: BlocListener(
        bloc: _loadTransactionsBloc,
        listener: (BuildContext context, state) {
          if (state is ReloadingTransactionsState) {
            // Reload the lightning info when transactions
            // are reloaded to receive eventualy updated
            // wallet balances
            _lnInfoBloc.dispatch(LoadLnInfo());
          }
        },
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
                  child: TranslatedText("network.not_yet_established"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: tordenBackground,
        elevation: 0,
        titleSpacing: 0,
        title: _getTabBar(),
      ),
      body: TabBarView(
        controller: _controller,
        children: <Widget>[
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                BalanceOverviewWidget(),
                TransactionsWidget(),
                LightningWidget(),
              ],
            ),
          ),
          Column(
            children: <Widget>[
              ListChannelsWidget(),
            ],
          ),
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
        TabData(tr(context, "wallet.wallet"), Icons.account_balance_wallet));
    tabs.add(TabData(tr(context, "channels.info"), Icons.scatter_plot));
    tabs.add(TabData(tr(context, "node.info"), Icons.star));
    tabs.add(TabData(tr(context, "prefs.title"), Icons.settings));

    return TordenTabBar(controller: _controller, tabs: tabs);
  }
}
