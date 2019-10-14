import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:torden/common/connection/connection_manager/bloc.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart';
import 'package:torden/common/models/models.dart';
import 'package:torden/preferences/bloc.dart';
import 'package:torden/preferences/preferences_bloc.dart';

import 'connection_manager_event.dart';
import 'connection_manager_state.dart';

class ConnectionManagerBloc
    extends Bloc<ConnectionManagerEvent, ConnectionManagerState> {
  ClientChannel _clientChannel;
  LightningClient _lightningClient;
  bool _connected = false;
  LndConnectionData _currentActiveConnection;
  final PreferencesBloc _prefsBloc;
  StreamSubscription _prefsSubscription;

  ConnectionManagerBloc(this._prefsBloc) {
    _prefsBloc.state.listen((state) {
      if (state is PreferencesLoadedState) {
        // listen to preference state changes and switch the active connection appropriately
        if (_currentActiveConnection == null) {
          dispatch(AppStart(state.activeConnection));
        } else {
          if (state.activeConnection.name != _currentActiveConnection.name) {
            dispatch(SwitchConnectionEvent(state.activeConnection));
          }
        }
      }
    });
  }

  @override
  ConnectionManagerState get initialState => InitialConnectionManagerState();

  @override
  void dispose() async {
    _prefsSubscription.cancel();
    await _clientChannel.shutdown();
    super.dispose();
  }

  @override
  Stream<ConnectionManagerState> mapEventToState(
    ConnectionManagerEvent event,
  ) async* {
    if (event is AppStart) {
      if (!_connected) {
        await _establishConnection(event.data);
      }
      yield ConnectionEstablishedState();
    } else if (event is SwitchConnectionEvent) {
      yield ChangingConnectionState();
      await _releaseConnection();
      await _establishConnection(event.data);
      yield ConnectionEstablishedState();
    }
  }

  _establishConnection(LndConnectionData data) async {
    _currentActiveConnection = data;
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

    LnConnectionDataProvider().macaroon = _currentActiveConnection.macaroon;
    LnConnectionDataProvider().lightningClient = _lightningClient;
  }

  _releaseConnection() async {
    if (_connected) {
      _currentActiveConnection = null;
      await _clientChannel.shutdown();
      LnConnectionDataProvider().macaroon = null;
      LnConnectionDataProvider().lightningClient = null;
      _connected = false;
    }
  }
}
