import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:grpc/grpc.dart';
import 'package:torden/common/connection/connection_manager/bloc.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart';
import 'package:torden/common/constants.dart';
import 'package:torden/common/models/models.dart';

import 'connection_manager_event.dart';
import 'connection_manager_state.dart';

class ConnectionManagerBloc
    extends Bloc<ConnectionManagerEvent, ConnectionManagerState> {
  ClientChannel _clientChannel;
  LightningClient _lightningClient;
  bool _connected = false;
  LndConnectionData _currentActiveConnection;

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
        LnConnectionDataProvider().macaroon = _currentActiveConnection.macaroon;
        LnConnectionDataProvider().lightningClient = _lightningClient;
      }
      yield ConnectionEstablishedState();
    }
  }

  _establishConnection() async {
    List<LndConnectionData> connectionData = await _getConnectionData();
    // TODO: implement multi node support
    // Currently the UI needs to be implemented to make this useful
    _currentActiveConnection = connectionData[0];

    ChannelCredentials creds = ChannelCredentials.secure(
      certificates: _currentActiveConnection.certificate,
      onBadCertificate: (X509Certificate certificate, String host) => true,
    );

    ChannelOptions opts = ChannelOptions(credentials: creds);
    _clientChannel = ClientChannel(
      _currentActiveConnection.host,
      port: _currentActiveConnection.port,
      options: opts,
    );

    _lightningClient = LightningClient(
      _clientChannel,
      options: CallOptions(
        metadata: {"macaroon": _currentActiveConnection.macaroon},
      ),
    );
  }

  Future<List<LndConnectionData>> _getConnectionData() async {
    final storage = FlutterSecureStorage();
    String connectionJSON = await storage.read(key: prefConnectionData);
    List<dynamic> connectionData;
    if (connectionJSON != null) {
      connectionData = json.decode(connectionJSON, reviver: (a, b) {
        if (b is String) {
          return LndConnectionData.fromJSON(b);
        } else {
          return b;
        }
      });
    } else {
      connectionData = [];
    }
    return connectionData.cast<LndConnectionData>();
  }
}
