import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:sendmany/channels/list_channels/bloc/bloc.dart';
import 'package:sendmany/channels/list_channels_page.dart';
import 'package:sendmany/channels/subscribe_channel_events/bloc/bloc.dart';
import 'package:sendmany/chat/chat_conversations_page.dart';
import 'package:sendmany/chat/list_messages/bloc.dart';
import 'package:sendmany/common/blocs/get_remote_node_info/bloc.dart';
import 'package:sendmany/common/blocs/get_remote_node_info/get_remote_node_info_repo.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/tabbar/tab_bar.dart';
import 'package:sendmany/common/widgets/widgets.dart';
import 'package:sendmany/node/node_overview_page.dart';
import 'package:sendmany/node/peers/bloc/bloc.dart';
import 'package:sendmany/preferences/bloc.dart';
import 'package:sendmany/preferences/preferences_page.dart';
import 'package:sendmany/wallet/balance/bloc/bloc.dart';
import 'package:sendmany/wallet/balance/list_transactions/bloc.dart';
import 'package:sendmany/wallet/wallet_page.dart';

enum _FABState {
  transitionIn,
  transition,
  transitionOut,
  normal,
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController _controller;
  LnInfoBloc _lnInfoBloc;
  SubscribeChannelEventsBloc _subscribeChannelEventsBloc;
  ListChannelsBloc _listChannelsBloc;
  ListPeersBloc _listPeersBloc;
  ListTxBloc _listTxBloc;
  ListMessagesBloc _listMsgBloc;
  final _remoteNodeInfoRepo = GetRemoteNodeInfoRepository();
  GetRemoteNodeInfoBloc _nodeInfoBloc;

  @override
  void initState() {
    _controller = TabController(length: 5, vsync: this);
    _lnInfoBloc = LnInfoBloc();
    _lnInfoBloc.add(LoadLnInfo());
    _subscribeChannelEventsBloc = SubscribeChannelEventsBloc();
    _subscribeChannelEventsBloc.add(SubscribeChannelEventsAppStart());
    _listChannelsBloc = ListChannelsBloc();
    _listChannelsBloc.add(LoadChannelList());
    _listPeersBloc = ListPeersBloc();
    _listPeersBloc.add(LoadPeersList());
    _listTxBloc = ListTxBloc(_lnInfoBloc);
    _listTxBloc.add(LoadTxEvent());
    _listTxBloc.add(ChangePollTxIntervalEvent(30));
    _listMsgBloc = ListMessagesBloc(_listTxBloc);
    _nodeInfoBloc = GetRemoteNodeInfoBloc(_remoteNodeInfoRepo);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    _listMsgBloc.close();
    _listTxBloc.close(); // contains a reference to _lnInfoBloc, dispose first
    _lnInfoBloc.close();
    _listChannelsBloc.close();
    _listPeersBloc.close();
    _subscribeChannelEventsBloc.close();
    _remoteNodeInfoRepo.dispose();
    _nodeInfoBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var repoProvider = RepositoryProvider.value(
      value: _remoteNodeInfoRepo,
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
    return MultiBlocProvider(
      providers: [
        BlocProvider<LnInfoBloc>.value(value: _lnInfoBloc),
        BlocProvider<ListChannelsBloc>.value(value: _listChannelsBloc),
        BlocProvider<SubscribeChannelEventsBloc>.value(
          value: _subscribeChannelEventsBloc,
        ),
        BlocProvider<ListPeersBloc>.value(value: _listPeersBloc),
        BlocProvider<ListTxBloc>.value(value: _listTxBloc),
        BlocProvider<ListMessagesBloc>.value(value: _listMsgBloc),
        BlocProvider<GetRemoteNodeInfoBloc>.value(value: _nodeInfoBloc),
      ],
      child: repoProvider,
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
          ChatConversationsPage(),
          ListChannelsPage(),
          NodeOverviewPage(),
          PreferencesPage(),
        ],
      ),
      floatingActionButton: _buildFAB(),
    );
  }

  Widget _getTabBar() {
    var tabs = <TabData>[];
    tabs.add(
        TabData(tr(context, 'wallet.wallet'), Icons.account_balance_wallet));
    tabs.add(TabData(tr(context, 'chat.info'), Icons.chat));
    tabs.add(TabData(tr(context, 'channels.info'), Icons.scatter_plot));
    tabs.add(TabData(tr(context, 'node.info'), Icons.star));
    tabs.add(TabData(tr(context, 'prefs.title'), Icons.settings));

    return SendManyTabBar(controller: _controller, tabs: tabs);
  }

  Widget _buildFAB() {
    return AnimatedBuilder(
      animation: _controller.animation,
      builder: (context, child) {
        var animState = _controller.animation.value;
        if (animState > 0 && animState < 1) {
          return _buildFab(
            ChatConversationsPage.fabIcon,
            state: _FABState.transitionIn,
            animState: animState,
          );
        } else if (animState == 1) {
          return _buildFab(
            ChatConversationsPage.fabIcon,
            onPressed: () {
              ChatConversationsPage.fabCallback(
                context,
                _lnInfoBloc,
                _listMsgBloc,
                _remoteNodeInfoRepo,
              );
            },
          );
        } else if (animState > 1 && animState < 2) {
          var state = (animState - 1);
          if (_controller.animation.status == AnimationStatus.forward) {
            return Stack(
              children: <Widget>[
                _buildFab(ListChannelsPage.fabIcon),
                _buildFab(
                  ChatConversationsPage.fabIcon,
                  state: _FABState.transition,
                  animState: 1 - state,
                ),
              ],
            );
          } else if (_controller.animation.status == AnimationStatus.reverse) {
            return Stack(
              children: <Widget>[
                _buildFab(ChatConversationsPage.fabIcon),
                _buildFab(
                  ListChannelsPage.fabIcon,
                  state: _FABState.transition,
                  animState: state,
                ),
              ],
            );
          }
        } else if (animState == 2) {
          return _buildFab(
            ListChannelsPage.fabIcon,
            onPressed: () {
              ListChannelsPage.fabCallback(
                context,
                _subscribeChannelEventsBloc,
                _remoteNodeInfoRepo,
              );
            },
          );
        } else if (animState > 2 && animState < 3) {
          var state = 2 - (animState - 1);
          return _buildFab(
            ListChannelsPage.fabIcon,
            state: _FABState.transitionOut,
            animState: state,
          );
        }
        return Container();
      },
    );
  }

  Widget _buildFab(
    Widget icon, {
    _FABState state = _FABState.normal,
    double animState,
    Function onPressed,
  }) {
    switch (state) {
      case _FABState.transitionIn:
      case _FABState.transitionOut:
        return Transform.scale(
          scale: animState,
          child: Opacity(
            opacity: animState,
            child: FloatingActionButton(
              child: icon,
              onPressed: onPressed,
            ),
          ),
        );
      case _FABState.transition:
        return Opacity(
          opacity: animState,
          child: FloatingActionButton(
            onPressed: onPressed,
            child: icon,
          ),
        );
      case _FABState.normal:
        return FloatingActionButton(
          child: icon,
          onPressed: onPressed,
        );
      default:
        return Container();
    }
  }
}
