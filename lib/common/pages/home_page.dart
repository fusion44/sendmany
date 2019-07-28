import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:torden/channels/blocs/listchannelsbloc/bloc.dart';
import 'package:torden/channels/channels_overview_widget.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/tabbar/tab_bar.dart';
import 'package:torden/lightning/connection_manager/bloc.dart';
import 'package:torden/overview/bloc/bloc.dart';
import 'package:torden/overview/balance_overview_widget.dart';
import 'package:torden/overview/node_overview_widget.dart';
import 'package:torden/preferences/bloc.dart';
import 'package:torden/preferences/preferences_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  LnInfoBloc _lnInfoBloc;
  ListChannelsBloc _listChannelsBloc;
  @override
  void initState() {
    _controller = new TabController(length: 4, vsync: this);
    _lnInfoBloc = LnInfoBloc();
    _lnInfoBloc.dispatch(LoadLnInfo());
    _listChannelsBloc = ListChannelsBloc();
    _listChannelsBloc.dispatch(LoadChannels());
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _lnInfoBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LnInfoBloc>(
          builder: (context) => _lnInfoBloc,
        ),
        BlocProvider<ListChannelsBloc>(
          builder: (context) => _listChannelsBloc,
        ),
      ],
      child: BlocListener(
        bloc: BlocProvider.of<PreferencesBloc>(context),
        listener: (BuildContext context, PreferencesState state) {
          if (state != null) {
            FlutterI18n.refresh(context, Locale(state.language));
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
                child: Text(tr(context, "network.not_yet_established")),
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
                ChannelsOverviewWidget(),
                NodeOverviewWidget(),
              ],
            ),
          ),
          Column(
            children: <Widget>[],
          ),
          Column(
            children: <Widget>[],
          ),
          PreferencesPage(),
        ],
      ),
    );
  }

  _getTabBar() {
    List<TabData> tabs = [];
    tabs.add(TabData(tr(context, "home.title"), Icons.pie_chart));
    tabs.add(TabData(tr(context, "invoices.title"), Icons.attach_money));
    tabs.add(TabData(tr(context, "pay.title"), Icons.money_off));
    tabs.add(TabData(tr(context, "prefs.title"), Icons.settings));

    return TordenTabBar(controller: _controller, tabs: tabs);
  }
}
