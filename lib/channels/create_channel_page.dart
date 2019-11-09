import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:sendmany/channels/manual_partner_input.dart';
import 'package:sendmany/channels/open_channel_settings_widget.dart';
import 'package:sendmany/common/blocs/get_remote_node_info/bloc.dart';
import 'package:sendmany/common/constants.dart';
import 'package:sendmany/common/models/models.dart';
import 'package:sendmany/common/widgets/widgets.dart';

class CreateChannelPage extends StatefulWidget {
  @override
  _CreateChannelPageState createState() => _CreateChannelPageState();
}

enum _CreateChannelPageStateState {
  scanQr,
  manualInput,
  loadingNodeInfo,
  loadedNodeInfo,
  nodeInfoLoadError,
}

class _CreateChannelPageState extends State<CreateChannelPage> {
  final GetRemoteNodeInfoBloc _getNodeInfoBloc = GetRemoteNodeInfoBloc();
  NodeInfo _nodeInfo;
  _CreateChannelPageStateState _state = _CreateChannelPageStateState.scanQr;
  String _pubKey = '';
  String _host = '';
  int _port = 10009;
  String _errorMessage = '';

  @override
  void initState() {
    super.initState();
    _getNodeInfoBloc.listen((state) {
      if (state is RemoteNodeInfoLoadingState) {
        setState(() {
          _state = _CreateChannelPageStateState.loadingNodeInfo;
        });
      }
      if (state is RemoteNodeInfoLoadedState) {
        setState(() {
          _nodeInfo = state.nodeInfo;
          _state = _CreateChannelPageStateState.loadedNodeInfo;
        });
      } else if (state is RemoteNodeInfoErrorState && state.pubKey == _pubKey) {
        setState(() {
          _state = _CreateChannelPageStateState.nodeInfoLoadError;
          _errorMessage = state.error;
        });
      }
    });
  }

  @override
  void dispose() {
    _getNodeInfoBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: TranslatedText('channels.open.title')),
      body: _buildBody(context),
      floatingActionButton: _buildFAB(),
    );
  }

  Widget _buildBody(BuildContext incontext) {
    switch (_state) {
      case _CreateChannelPageStateState.scanQr:
        return _buildQrScannerWidget();
      case _CreateChannelPageStateState.manualInput:
        return ManualPartnerInputWidget(
          pubKey: _pubKey,
          host: _host,
          port: _port,
          checkConnection: (String pubKey, String host, int port) {
            _getNodeInfoBloc.add(GetRemoteNodeInfoEvent(pubKey));
            _pubKey = pubKey;
            _host = host;
            _port = port;
          },
        );
      case _CreateChannelPageStateState.loadingNodeInfo:
        return _buildLoadingUI();
      case _CreateChannelPageStateState.loadedNodeInfo:
        return BlocProvider.value(
          value: _getNodeInfoBloc,
          child: OpenChannelSettingsWidget(
              nodeInfo: _nodeInfo,
              openChannelClicked: (
                OnchainFeeType feeType,
                Int64 fee,
                Int64 localAmount,
              ) {
                // TODO: implement me
              }),
        );
      case _CreateChannelPageStateState.nodeInfoLoadError:
        return _buildNodeInfoLoadingError();
      default:
        return Center(child: Text('Unkown State $_state'));
    }
  }

  QRScannerWidget _buildQrScannerWidget() {
    return QRScannerWidget(onStringFound: (String code) {
      String key = code;
      String host;
      int port;

      if (code.contains('@')) {
        var spl = code.split('@');

        if (spl.length > 1) {
          key = spl[0];
          if (spl[1].contains(':')) {
            var spl2 = spl[1].split(':');
            host = spl2[0];
            port = int.tryParse(spl[1]);
            if (port == null) port = 0;
          } else {
            host = spl[1];
          }
        }
      }

      _getNodeInfoBloc.add(GetRemoteNodeInfoEvent(key));

      setState(() {
        _state = _CreateChannelPageStateState.manualInput;
        _pubKey = key;
        _host = host;
        _port = port;
      });
    });
  }

  Widget _buildLoadingUI() {
    return Center(child: SpinKitRipple(color: sendManyBlue200, size: 150));
  }

  Widget _buildNodeInfoLoadingError() {
    String errorText = 'Unkown error while loading partner node info';
    if (_errorMessage.isNotEmpty) {
      errorText = 'Error while loading partner node info: $_errorMessage';
    }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text(errorText),
          RaisedButton(
            child: TranslatedText('channels.open.retry_connection_test'),
            onPressed: () {
              setState(() {
                _state = _CreateChannelPageStateState.manualInput;
              });
            },
          ),
        ],
      ),
    );
  }

  _buildFAB() {
    if (_state == _CreateChannelPageStateState.manualInput ||
        _state == _CreateChannelPageStateState.scanQr) {
      Icon icon = Icon(_state == _CreateChannelPageStateState.scanQr
          ? Icons.edit
          : Icons.camera);

      return FloatingActionButton(
        child: icon,
        onPressed: () {
          setState(() {
            if (_state == _CreateChannelPageStateState.scanQr) {
              _state = _CreateChannelPageStateState.manualInput;
            } else {
              _state = _CreateChannelPageStateState.scanQr;
            }
          });
        },
      );
    }
  }
}
