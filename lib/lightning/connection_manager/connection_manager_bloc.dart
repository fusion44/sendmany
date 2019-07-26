import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:torden/lightning/connection_manager/connection_data_provider.dart';
import 'package:torden/lightning/lnd/lnd_rpc.dart';

import 'connection_manager_event.dart';
import 'connection_manager_state.dart';

class ConnectionManagerBloc
    extends Bloc<ConnectionManagerEvent, ConnectionManagerState> {
  ClientChannel _clientChannel;
  LightningClient _lightningClient;
  bool _connected = false;
  // TODO: refactor this once the setup screen is implemented
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
    // TODO: refactor this once the setup screen is implemented
    final String cert = """-----BEGIN CERTIFICATE-----
...
-----END CERTIFICATE-----""";

    ChannelCredentials creds = ChannelCredentials.secure(
      certificates: utf8.encode(cert),
      onBadCertificate: (X509Certificate certificate, String host) => true,
    );

    ChannelOptions opts = ChannelOptions(credentials: creds);
    _clientChannel = ClientChannel('ip.of.node', port: 10009, options: opts);

    _lightningClient = LightningClient(
      _clientChannel,
      options: CallOptions(
        metadata: {"macaroon": _macaroon},
      ),
    );
  }
}
