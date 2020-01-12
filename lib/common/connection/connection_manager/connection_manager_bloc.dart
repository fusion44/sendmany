import 'dart:async';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart';
import 'package:sendmany/common/models/models.dart';
import 'package:sendmany/preferences/bloc.dart';
import 'package:sendmany/preferences/preferences_bloc.dart';

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
    _prefsBloc.listen((state) {
      if (state is PreferencesLoadedState) {
        // listen to preference state changes and switch the active connection appropriately
        if (_currentActiveConnection == null) {
          add(AppStart(state.activeConnection));
        } else {
          if (state.activeConnection.name != _currentActiveConnection.name) {
            add(SwitchConnectionEvent(state.activeConnection));
          }
        }
      }
    });
  }

  @override
  ConnectionManagerState get initialState => InitialConnectionManagerState();

  @override
  Future<void> close() async {
    await _prefsSubscription.cancel();
    await _clientChannel.shutdown();
    await super.close();
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

  void _establishConnection(LndConnectionData data) async {
    _currentActiveConnection = data;
    var creds = ChannelCredentials.secure(
      certificates: _currentActiveConnection.certificate,
      onBadCertificate: (X509Certificate certificate, String host) => true,
    );

    var opts = ChannelOptions(credentials: creds);
    _clientChannel = ClientChannel(
      _currentActiveConnection.host,
      port: _currentActiveConnection.port,
      options: opts,
    );

    _lightningClient = LightningClient(
      _clientChannel,
      options: CallOptions(
        metadata: {'macaroon': _currentActiveConnection.macaroon},
      ),
    );

    LnConnectionDataProvider().channel = _clientChannel;
    LnConnectionDataProvider().macaroon = _currentActiveConnection.macaroon;
    LnConnectionDataProvider().lightningClient = _lightningClient;
  }

  void _releaseConnection() async {
    if (_connected) {
      _currentActiveConnection = null;
      await _clientChannel.shutdown();
      LnConnectionDataProvider().macaroon = null;
      LnConnectionDataProvider().lightningClient = null;
      _connected = false;
    }
  }
}
