import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:timeago/timeago.dart' as timeago;

import '../../common/constants.dart';
import '../../common/models/models.dart';
import '../../common/widgets/widgets.dart';
import 'fwd_history_bloc/fwd_history_bloc.dart';
import 'models/forwarding_event.dart';

class FwdOverviewPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ForwardingHistoryBloc, ForwardingHistoryBlocState>(
      builder: (context, state) {
        Widget widget;
        if (state is FwdHistoryLoaded) {
          widget = ListView.separated(
            itemCount: state.forwardingEvents.length,
            itemBuilder: (context, index) => _buildListItem(
              state.forwardingEvents[index],
              state.channels,
              Theme.of(context),
            ),
            separatorBuilder: (context, index) => Divider(),
          );
        } else {
          widget = Center(
            child: SpinKitRipple(color: sendManyBlue200, size: 150),
          );
        }
        return Scaffold(
          appBar: AppBar(title: TranslatedText('forwards.forwards')),
          body: widget,
        );
      },
    );
  }

  Widget _buildListItem(
    ForwardingEvent e,
    Map<Int64, Channel> c,
    ThemeData theme,
  ) {
    var aliasIn = e.chanIdIn.toString();
    if (c.containsKey(e.chanIdIn)) {
      aliasIn = c[e.chanIdIn].remoteNodeInfo.node.alias;
    }

    var aliasOut = e.chanIdOut.toString();
    if (c.containsKey(e.chanIdOut)) {
      aliasOut = c[e.chanIdOut].remoteNodeInfo.node.alias;
    }

    return ListTile(
      dense: true,
      title: Row(children: [
        Expanded(
          flex: 4,
          child: Text(
            aliasIn,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(width: 8.0),
        Text(
          '=>',
          style: theme.textTheme.bodyText2.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 8.0),
        Expanded(
          flex: 4,
          child: Text(
            aliasOut,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.end,
          ),
        ),
      ]),
      subtitle: Row(children: [
        MoneyValueView(amount: e.amtIn),
        Spacer(),
        Text(timeago.format(e.date))
      ]),
    );
  }
}
