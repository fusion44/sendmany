import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../common/constants.dart';
import '../common/models/channels/models.dart';
import '../common/utils.dart';
import '../common/widgets/widgets.dart';
import 'get_chan_info/bloc.dart';

/// Page to display general channel data
class DisplayChannelInfoPage extends StatefulWidget {
  final Channel c;
  DisplayChannelInfoPage(this.c);

  @override
  _DisplayChannelInfoPageState createState() => _DisplayChannelInfoPageState();
}

class _DisplayChannelInfoPageState extends State<DisplayChannelInfoPage> {
  GetChanInfoBloc _getChanInfoBloc;

  @override
  void initState() {
    _getChanInfoBloc = GetChanInfoBloc();

    if (widget.c is EstablishedChannel) {
      EstablishedChannel c = widget.c;
      _getChanInfoBloc.add(GetChanInfoEvent(c.chanId));
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetChanInfoBloc, GetChanInfoState>(
      cubit: _getChanInfoBloc,
      builder: (_, GetChanInfoState state) {
        var body;
        if (widget.c is EstablishedChannel) {
          EstablishedChannel c = widget.c;
          var rPolicy;
          if (state is ChanInfoLoadedState) {
            rPolicy = _buildRoutingPolicyTable(state);
          } else if (state is ChanInfoLoadingErrorState) {
            rPolicy = Center(
              child: Text(
                'Error fetching for channel policy: ${c.chanId}\nError: ${state.message}',
              ),
            );
          } else {
            rPolicy = Center(child: _buildLoadingUI());
          }
          body = Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RemoteNodeInfoWidget(nodeInfo: c.remoteNodeInfo),
                rPolicy,
              ],
            ),
          );
        } else {
          body = Center(child: Text('Unknown Channel type ${widget.c}'));
        }

        return Scaffold(
          appBar: AppBar(title: TranslatedText('channels.channel')),
          body: SingleChildScrollView(child: body),
        );
      },
    );
  }

  Widget _buildRoutingPolicyTable(ChanInfoLoadedState state) {
    var m = state.chanInfo.node1Policy;
    var o = state.chanInfo.node2Policy;
    return DataTable(
      columnSpacing: 15.0,
      columns: <DataColumn>[
        DataColumn(label: Container()),
        DataColumn(label: TranslatedText('channels.me')),
        DataColumn(label: TranslatedText('channels.partner'))
      ],
      rows: <DataRow>[
        _buildDataRow(
          TranslatedText('channels.capacity'),
          MoneyValueView(amount: state.chanInfo.capacity),
          Container(),
        ),
        _buildDataRow(
          TranslatedText('channels.time_lock_delta'),
          Text('${m.timeLockDelta} blocks'),
          Text('${o.timeLockDelta} blocks'),
        ),
        _buildDataRow(
          TranslatedText('channels.min_htlc'),
          MoneyValueView(amount: m.minHtlc),
          MoneyValueView(amount: o.minHtlc),
        ),
        _buildDataRow(
          TranslatedText('channels.max_htlc'),
          MoneyValueView(
            amount: Int64.parseInt(
              convertMilliSatTo(BitcoinDenom.Satoshi, m.maxHtlcMsat)
                  .toInt()
                  .toString(),
            ),
          ),
          MoneyValueView(
            amount: Int64.parseInt(
              convertMilliSatTo(BitcoinDenom.Satoshi, o.maxHtlcMsat)
                  .toInt()
                  .toString(),
            ),
          ),
        ),
        _buildDataRow(
          TranslatedText('channels.fee_base'),
          MoneyValueView(amount: m.feeBaseMsat),
          MoneyValueView(amount: o.feeBaseMsat),
        ),
        // FIXME: Make MoneyValueView display Millisat
        _buildDataRow(
          TranslatedText('channels.fee_rate'),
          Text('${m.feeRateMilliMsat} mシ'),
          Text('${o.feeRateMilliMsat} mシ'),
        ),
        _buildDataRow(
          TranslatedText('channels.disabled'),
          Text(m.disabled.toString()),
          Text(o.disabled.toString()),
        ),
      ],
    );
  }

  DataRow _buildDataRow(
    Widget name,
    Widget me,
    Widget other,
  ) {
    return DataRow(cells: [
      DataCell(name),
      DataCell(me),
      DataCell(other),
    ]);
  }

  Widget _buildLoadingUI() {
    return Center(child: SpinKitRipple(color: sendManyBlue200, size: 150));
  }
}
