import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grpc/service_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../common/connection/connection_manager/bloc.dart';
import '../../../common/connection/lnd_rpc/lnd_rpc.dart';
import '../../../common/constants.dart';
import '../../../common/models/models.dart';
import '../../../node/forwards/models/models.dart';
import 'ln_info_event.dart';
import 'ln_info_state.dart';

class LnInfoBloc extends Bloc<LnInfoEvent, LnInfoState> {
  LnInfoBloc() : super(InitialLnInfoState());

  @override
  Stream<LnInfoState> mapEventToState(
    LnInfoEvent event,
  ) async* {
    if (event is LoadLnInfo) {
      var client = LnConnectionDataProvider().lightningClient;
      var macaroon = LnConnectionDataProvider().macaroon;
      if (state is InitialLnInfoState) {
        yield LnInfoStateLoading();
      } else if (state is LnInfoStateLoadingFinished) {
        LnInfoStateLoadingFinished currentState = state;
        LnInfoStateReloading(
          currentState.infoResponse,
          currentState.walletBalance,
          currentState.channelBalance,
        );
      }
      var infoRequest = GetInfoRequest();
      var walletBalanceRequest = WalletBalanceRequest();
      var channelBalanceRequest = ChannelBalanceRequest();
      var feeReportReq = FeeReportRequest();

      var opts = CallOptions(metadata: {'macaroon': macaroon});

      var responseList = await Future.wait([
        client.getInfo(infoRequest, options: opts),
        client.walletBalance(walletBalanceRequest, options: opts),
        client.channelBalance(channelBalanceRequest, options: opts),
        client.feeReport(feeReportReq, options: opts),
      ]).catchError((error) {
        print(error);
      });

      // TODO: do this only once when the active connection is switched
      var localNodeInfo = LocalNodeInfo.fromGrpc(responseList[0]);
      var prefs = await SharedPreferences.getInstance();
      await prefs.setString(
        prefActiveConnectionPubKey,
        localNodeInfo.identityPubkey,
      );

      yield LnInfoStateLoadingFinished(
        localNodeInfo,
        responseList[1],
        responseList[2],
        FwdFeeReport.fromGrpc(responseList[3]),
      );
    }
  }
}
