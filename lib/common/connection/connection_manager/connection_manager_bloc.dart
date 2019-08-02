import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:torden/common/connection/connection_manager/bloc.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart';

import 'connection_manager_event.dart';
import 'connection_manager_state.dart';

class ConnectionManagerBloc
    extends Bloc<ConnectionManagerEvent, ConnectionManagerState> {
  ClientChannel _clientChannel;
  LightningClient _lightningClient;
  bool _connected = false;
  final String _macaroon = "";

  @override
  ConnectionManagerState get initialState => InitialConnectionManagerState();

  @override
  void dispose() async {
    await _clientChannel.shutdown();
    super.dispose();
  }

  @override
  Stream<ConnectionManagerState> mapEventToState(
    ConnectionManagerEvent event,
  ) async* {
    if (event is AppStart) {
      if (!_connected) {
        await _establishConnection();
        LnConnectionDataProvider().macaroon = _macaroon;
        LnConnectionDataProvider().lightningClient = _lightningClient;
      }
      yield ConnectionEstablishedState();
    }
  }

  _establishConnection() async {
    final String cert = """-----BEGIN CERTIFICATE-----
-----END CERTIFICATE-----""";

    ChannelCredentials creds = ChannelCredentials.secure(
      certificates: utf8.encode(cert),
      onBadCertificate: (X509Certificate certificate, String host) => true,
    );

    ChannelOptions opts = ChannelOptions(credentials: creds);
    _clientChannel = ClientChannel('172.81.181.43', port: 10009, options: opts);

    _lightningClient = LightningClient(
      _clientChannel,
      options: CallOptions(
        metadata: {"macaroon": _macaroon},
      ),
    );
  }
}
