import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/tabbar/tab_bar.dart';
import 'package:torden/common/widgets/widgets.dart';
import 'package:torden/preferences/bloc.dart';
import 'package:torden/preferences/preferences_page.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  @override
  void initState() {
    _controller = new TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener(
      bloc: BlocProvider.of<PreferencesBloc>(context),
      listener: (BuildContext context, PreferencesState state) {
        if (state != null) {
          FlutterI18n.refresh(context, Locale(state.language));
          setState(() {});
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: tordenBackground,
          elevation: 0,
          titleSpacing: 0,
          title: _getTabBar(),
        ),
        body: TabBarView(
          controller: _controller,
          children: <Widget>[
            Column(
              children: <Widget>[
                Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Title",
                        textAlign: TextAlign.left,
                      ),
                      Container(height: 25.0, color: Colors.red)
                    ],
                  ),
                ),
                Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text("Title"),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                MoneyValueView(amount: 12443.56, hero: true),
                MoneyValueView(amount: 12.05)
              ],
            ),
            Column(
              children: <Widget>[
                MoneyValueView(amount: 12443.56, hero: true),
                MoneyValueView(amount: 12.05)
              ],
            ),
            PreferencesPage(),
          ],
        ),
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
