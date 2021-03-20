import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../common/connection/connection_manager/bloc.dart';
import '../../../common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../models/models.dart';

part 'fwd_fee_report_event.dart';
part 'fwd_fee_report_state.dart';

class FwdFeeReportBloc extends Bloc<FwdFeeReportEvent, FwdFeeReportState> {
  FwdFeeReportBloc() : super(FeeReportInitial());

  @override
  Stream<FwdFeeReportState> mapEventToState(FwdFeeReportEvent event) async* {
    if (event is FwdLoadFeeReportEvent) {
      var client = LnConnectionDataProvider().lightningClient;
      var feeReportReq = grpc.FeeReportRequest();
      var resp = await client.feeReport(feeReportReq);
      var report = FwdFeeReport.fromGrpc(resp);
      yield FeeReportLoadedState(report);
    }
  }
}
