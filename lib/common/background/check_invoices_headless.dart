import 'dart:convert';
import 'dart:io';

import 'package:background_fetch/background_fetch.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:grpc/grpc.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../chat/utils.dart';
import '../../wallet/balance/bloc/ln_info_bloc.dart';
import '../../wallet/balance/list_transactions/bloc.dart';
import '../../wallet/balance/list_transactions/list_transactions_bloc.dart';
import '../blocs/send_local_notification/send_notification_bloc.dart';
import '../connection/lnd_rpc/lnd_rpc.dart' as lngrpc;
import '../constants.dart';
import '../models/models.dart';

/// This "Headless Task" is run when app is terminated.
void backgroundFetchHeadlessTask(String taskId) async {
  var connectivityResult = await (Connectivity().checkConnectivity());
  if (connectivityResult == ConnectivityResult.none) {
    // Don't run if we don't have any network connectivity
    return;
  }

  final storage = FlutterSecureStorage();
  var connectionJSON = await storage.read(key: prefConnectionData);
  var activeConnectionName = await storage.read(key: prefActiveConnection);

  // TODO: Loop through all connections to fetch recent data
  LndConnectionData activeConnection;
  if (connectionJSON != null) {
    json.decode(connectionJSON, reviver: (a, b) {
      if (b is String) {
        var c = LndConnectionData.fromJSON(b);
        if (c.name == activeConnectionName) activeConnection = c;
        return c;
      } else {
        return b;
      }
    });
  }

  var creds = ChannelCredentials.secure(
    certificates: activeConnection.certificate,
    onBadCertificate: (X509Certificate certificate, String host) => true,
  );

  var opts = ChannelOptions(credentials: creds);
  var clientChannel = ClientChannel(
    activeConnection.host,
    port: activeConnection.port,
    options: opts,
  );

  var lnClient = lngrpc.LightningClient(
    clientChannel,
    options: CallOptions(
      metadata: {'macaroon': activeConnection.macaroon},
    ),
  );

  var bloc = ListTxBloc(
    LnInfoBloc(),
    lnClient: lnClient,
    macaroon: activeConnection.macaroon,
  );
  bloc.add(LoadTxEvent(updateTxPrefData: false, numMaxInvoices: 100));
  var state = await bloc.stream.firstWhere((state) {
    if (state is LoadingTxFinishedState) return true;
    return false;
  });

  // TODO: Find a way to translate the messages.
  // Flutter i18n needs a BuildContext, which is not provided in
  // headless mode.
  var msg = '';
  if (state is LoadingTxFinishedState) {
    var prefs = await SharedPreferences.getInstance();
    var lastNumInvoices = prefs.getInt(prefLastNumInvoices);

    if (lastNumInvoices != state.invoices.length) {
      var res = _classifyNewInvoices(lastNumInvoices, state.invoices);
      if (res.hasChat && !res.hasIncomingFunds) {
        if (res.numChatMessages > 1) {
          msg += '${res.numChatMessages} new chat messages';
        } else {
          msg += 'New chat message';
        }
      } else if (res.hasChat && res.hasIncomingFunds) {
        if (res.numChatMessages > 1) {
          msg += '${res.numChatMessages} New chat messages';
        } else {
          msg += 'New chat message';
        }
        msg += ' and incoming funds';
      } else if (!res.hasChat && res.hasIncomingFunds) {
        msg += 'New incoming funds';
      }
    }
  }

  if (msg.isNotEmpty) {
    var notiBloc = SendLocalNotificationBloc();
    notiBloc.add(
      SendLocalNotificationEvent(
        LocalNotificationChannels.chatChannelID,
        LocalNotificationChannels.channelChannelName,
        LocalNotificationChannels.channelChannelDescription,
        0,
        'Chat Message',
        msg,
      ),
    );
  }

  BackgroundFetch.finish(taskId);
}

_InvoiceContents _classifyNewInvoices(
  int lastNumInvoices,
  List<TxLightningInvoice> invoices,
) {
  var res = _InvoiceContents();
  for (var i = lastNumInvoices; i < invoices.length; i++) {
    if (findIncomingChatRecord(invoices[i].invoice) != null) {
      res.hasChat = true;
      res.numChatMessages++;
    }
    if (invoices[i].amountSat > 1) {
      res.hasIncomingFunds = true;
    }
  }
  return res;
}

class _InvoiceContents {
  bool hasChat = false;
  int numChatMessages = 0;
  bool hasIncomingFunds = false;
}
