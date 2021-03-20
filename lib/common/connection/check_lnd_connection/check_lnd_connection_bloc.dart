import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';

import '../../../node/forwards/models/models.dart';
import '../lnd_rpc/lnd_rpc.dart';
import 'check_lnd_connection_event.dart';
import 'check_lnd_connection_state.dart';

class CheckLndConnectionBloc
    extends Bloc<CheckLNDConnectionEvent, CheckLNDConnectionState> {
  ClientChannel _clientChannel;
  LightningClient _lightningClient;
  CheckLndConnectionBloc() : super(InitialCheckLNDConnectionState());

  @override
  Future<void> close() async {
    await _clientChannel.shutdown();
    await super.close();
  }

  @override
  Stream<CheckLNDConnectionState> mapEventToState(
    CheckLNDConnectionEvent event,
  ) async* {
    if (event is DoCheckLNDConnectionEvent) {
      yield CheckingLNDConnectionState();
      yield await _establishConnection(event);
    }
  }

  Future<CheckLNDConnectionState> _establishConnection(
      DoCheckLNDConnectionEvent event) async {
    final creds = ChannelCredentials.secure(
      certificates: event.data.certificate,
      onBadCertificate: (X509Certificate certificate, String host) {
        // Trust the certificate
        return true;
      },
    );

    final opts = CallOptions(
      metadata: {'macaroon': event.data.macaroon},
    );

    _clientChannel = ClientChannel(
      event.data.host,
      port: event.data.port,
      options: ChannelOptions(credentials: creds),
    );
    _lightningClient = LightningClient(
      _clientChannel,
      options: opts,
    );

    final infoRequest = GetInfoRequest();
    final feeReportReq = FeeReportRequest();

    try {
      final info = await _lightningClient.getInfo(infoRequest);
      final fees = await _lightningClient.feeReport(feeReportReq);
      return CheckLNDConnectionSuccessState(info, FwdFeeReport.fromGrpc(fees));
    } catch (e) {
      return CheckLNDConnectionErrorState(error: e.toString());
    }
  }
}
