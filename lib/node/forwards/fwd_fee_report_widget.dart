import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../common/constants.dart';
import 'fwd_fee_report_bloc/fwd_fee_report_bloc.dart';

class FwdFeeReportWidget extends StatefulWidget {
  @override
  _FwdFeeReportWidgetState createState() => _FwdFeeReportWidgetState();
}

class _FwdFeeReportWidgetState extends State<FwdFeeReportWidget> {
  final FwdFeeReportBloc _bloc = FwdFeeReportBloc();
  @override
  void initState() {
    super.initState();
    _bloc.add(FwdLoadFeeReportEvent());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FwdFeeReportBloc, FwdFeeReportState>(
      bloc: _bloc,
      builder: (context, state) {
        if (state is FeeReportInitial) {
          return SpinKitRipple(color: sendManyBlue200);
        } else if (state is FeeReportLoadedState) {
          return Column(
            children: [
              Text('day ${state.feeReport.dayFeeSum}'),
              Text('week ${state.feeReport.weekFeeSum}'),
              Text('month ${state.feeReport.monthFeeSum}'),
            ],
          );
        } else {
          return Center(child: Text('$state'));
        }
      },
    );
  }
}
