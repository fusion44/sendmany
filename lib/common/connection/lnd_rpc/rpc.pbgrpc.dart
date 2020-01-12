///
//  Generated code. Do not modify.
//  source: rpc.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,annotate_overrides,unnecessary_const

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'rpc.pb.dart' as $0;
export 'rpc.pb.dart';

class WalletUnlockerClient extends $grpc.Client {
  static final _$genSeed =
      $grpc.ClientMethod<$0.GenSeedRequest, $0.GenSeedResponse>(
          '/lnrpc.WalletUnlocker/GenSeed',
          ($0.GenSeedRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GenSeedResponse.fromBuffer(value));
  static final _$initWallet =
      $grpc.ClientMethod<$0.InitWalletRequest, $0.InitWalletResponse>(
          '/lnrpc.WalletUnlocker/InitWallet',
          ($0.InitWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.InitWalletResponse.fromBuffer(value));
  static final _$unlockWallet =
      $grpc.ClientMethod<$0.UnlockWalletRequest, $0.UnlockWalletResponse>(
          '/lnrpc.WalletUnlocker/UnlockWallet',
          ($0.UnlockWalletRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.UnlockWalletResponse.fromBuffer(value));
  static final _$changePassword =
      $grpc.ClientMethod<$0.ChangePasswordRequest, $0.ChangePasswordResponse>(
          '/lnrpc.WalletUnlocker/ChangePassword',
          ($0.ChangePasswordRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ChangePasswordResponse.fromBuffer(value));

  WalletUnlockerClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.GenSeedResponse> genSeed($0.GenSeedRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$genSeed, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.InitWalletResponse> initWallet(
      $0.InitWalletRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$initWallet, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.UnlockWalletResponse> unlockWallet(
      $0.UnlockWalletRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$unlockWallet, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ChangePasswordResponse> changePassword(
      $0.ChangePasswordRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$changePassword, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class WalletUnlockerServiceBase extends $grpc.Service {
  $core.String get $name => 'lnrpc.WalletUnlocker';

  WalletUnlockerServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.GenSeedRequest, $0.GenSeedResponse>(
        'GenSeed',
        genSeed_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GenSeedRequest.fromBuffer(value),
        ($0.GenSeedResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InitWalletRequest, $0.InitWalletResponse>(
        'InitWallet',
        initWallet_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.InitWalletRequest.fromBuffer(value),
        ($0.InitWalletResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.UnlockWalletRequest, $0.UnlockWalletResponse>(
            'UnlockWallet',
            unlockWallet_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.UnlockWalletRequest.fromBuffer(value),
            ($0.UnlockWalletResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChangePasswordRequest,
            $0.ChangePasswordResponse>(
        'ChangePassword',
        changePassword_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChangePasswordRequest.fromBuffer(value),
        ($0.ChangePasswordResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.GenSeedResponse> genSeed_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GenSeedRequest> request) async {
    return genSeed(call, await request);
  }

  $async.Future<$0.InitWalletResponse> initWallet_Pre($grpc.ServiceCall call,
      $async.Future<$0.InitWalletRequest> request) async {
    return initWallet(call, await request);
  }

  $async.Future<$0.UnlockWalletResponse> unlockWallet_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.UnlockWalletRequest> request) async {
    return unlockWallet(call, await request);
  }

  $async.Future<$0.ChangePasswordResponse> changePassword_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ChangePasswordRequest> request) async {
    return changePassword(call, await request);
  }

  $async.Future<$0.GenSeedResponse> genSeed(
      $grpc.ServiceCall call, $0.GenSeedRequest request);
  $async.Future<$0.InitWalletResponse> initWallet(
      $grpc.ServiceCall call, $0.InitWalletRequest request);
  $async.Future<$0.UnlockWalletResponse> unlockWallet(
      $grpc.ServiceCall call, $0.UnlockWalletRequest request);
  $async.Future<$0.ChangePasswordResponse> changePassword(
      $grpc.ServiceCall call, $0.ChangePasswordRequest request);
}

class LightningClient extends $grpc.Client {
  static final _$walletBalance =
      $grpc.ClientMethod<$0.WalletBalanceRequest, $0.WalletBalanceResponse>(
          '/lnrpc.Lightning/WalletBalance',
          ($0.WalletBalanceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.WalletBalanceResponse.fromBuffer(value));
  static final _$channelBalance =
      $grpc.ClientMethod<$0.ChannelBalanceRequest, $0.ChannelBalanceResponse>(
          '/lnrpc.Lightning/ChannelBalance',
          ($0.ChannelBalanceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ChannelBalanceResponse.fromBuffer(value));
  static final _$getTransactions =
      $grpc.ClientMethod<$0.GetTransactionsRequest, $0.TransactionDetails>(
          '/lnrpc.Lightning/GetTransactions',
          ($0.GetTransactionsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TransactionDetails.fromBuffer(value));
  static final _$estimateFee =
      $grpc.ClientMethod<$0.EstimateFeeRequest, $0.EstimateFeeResponse>(
          '/lnrpc.Lightning/EstimateFee',
          ($0.EstimateFeeRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.EstimateFeeResponse.fromBuffer(value));
  static final _$sendCoins =
      $grpc.ClientMethod<$0.SendCoinsRequest, $0.SendCoinsResponse>(
          '/lnrpc.Lightning/SendCoins',
          ($0.SendCoinsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SendCoinsResponse.fromBuffer(value));
  static final _$listUnspent =
      $grpc.ClientMethod<$0.ListUnspentRequest, $0.ListUnspentResponse>(
          '/lnrpc.Lightning/ListUnspent',
          ($0.ListUnspentRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListUnspentResponse.fromBuffer(value));
  static final _$subscribeTransactions =
      $grpc.ClientMethod<$0.GetTransactionsRequest, $0.Transaction>(
          '/lnrpc.Lightning/SubscribeTransactions',
          ($0.GetTransactionsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Transaction.fromBuffer(value));
  static final _$sendMany =
      $grpc.ClientMethod<$0.SendManyRequest, $0.SendManyResponse>(
          '/lnrpc.Lightning/SendMany',
          ($0.SendManyRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SendManyResponse.fromBuffer(value));
  static final _$newAddress =
      $grpc.ClientMethod<$0.NewAddressRequest, $0.NewAddressResponse>(
          '/lnrpc.Lightning/NewAddress',
          ($0.NewAddressRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.NewAddressResponse.fromBuffer(value));
  static final _$signMessage =
      $grpc.ClientMethod<$0.SignMessageRequest, $0.SignMessageResponse>(
          '/lnrpc.Lightning/SignMessage',
          ($0.SignMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.SignMessageResponse.fromBuffer(value));
  static final _$verifyMessage =
      $grpc.ClientMethod<$0.VerifyMessageRequest, $0.VerifyMessageResponse>(
          '/lnrpc.Lightning/VerifyMessage',
          ($0.VerifyMessageRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.VerifyMessageResponse.fromBuffer(value));
  static final _$connectPeer =
      $grpc.ClientMethod<$0.ConnectPeerRequest, $0.ConnectPeerResponse>(
          '/lnrpc.Lightning/ConnectPeer',
          ($0.ConnectPeerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ConnectPeerResponse.fromBuffer(value));
  static final _$disconnectPeer =
      $grpc.ClientMethod<$0.DisconnectPeerRequest, $0.DisconnectPeerResponse>(
          '/lnrpc.Lightning/DisconnectPeer',
          ($0.DisconnectPeerRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DisconnectPeerResponse.fromBuffer(value));
  static final _$listPeers =
      $grpc.ClientMethod<$0.ListPeersRequest, $0.ListPeersResponse>(
          '/lnrpc.Lightning/ListPeers',
          ($0.ListPeersRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListPeersResponse.fromBuffer(value));
  static final _$subscribePeerEvents =
      $grpc.ClientMethod<$0.PeerEventSubscription, $0.PeerEvent>(
          '/lnrpc.Lightning/SubscribePeerEvents',
          ($0.PeerEventSubscription value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.PeerEvent.fromBuffer(value));
  static final _$getInfo =
      $grpc.ClientMethod<$0.GetInfoRequest, $0.GetInfoResponse>(
          '/lnrpc.Lightning/GetInfo',
          ($0.GetInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetInfoResponse.fromBuffer(value));
  static final _$pendingChannels =
      $grpc.ClientMethod<$0.PendingChannelsRequest, $0.PendingChannelsResponse>(
          '/lnrpc.Lightning/PendingChannels',
          ($0.PendingChannelsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PendingChannelsResponse.fromBuffer(value));
  static final _$listChannels =
      $grpc.ClientMethod<$0.ListChannelsRequest, $0.ListChannelsResponse>(
          '/lnrpc.Lightning/ListChannels',
          ($0.ListChannelsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListChannelsResponse.fromBuffer(value));
  static final _$subscribeChannelEvents =
      $grpc.ClientMethod<$0.ChannelEventSubscription, $0.ChannelEventUpdate>(
          '/lnrpc.Lightning/SubscribeChannelEvents',
          ($0.ChannelEventSubscription value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ChannelEventUpdate.fromBuffer(value));
  static final _$closedChannels =
      $grpc.ClientMethod<$0.ClosedChannelsRequest, $0.ClosedChannelsResponse>(
          '/lnrpc.Lightning/ClosedChannels',
          ($0.ClosedChannelsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ClosedChannelsResponse.fromBuffer(value));
  static final _$openChannelSync =
      $grpc.ClientMethod<$0.OpenChannelRequest, $0.ChannelPoint>(
          '/lnrpc.Lightning/OpenChannelSync',
          ($0.OpenChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ChannelPoint.fromBuffer(value));
  static final _$openChannel =
      $grpc.ClientMethod<$0.OpenChannelRequest, $0.OpenStatusUpdate>(
          '/lnrpc.Lightning/OpenChannel',
          ($0.OpenChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.OpenStatusUpdate.fromBuffer(value));
  static final _$fundingStateStep =
      $grpc.ClientMethod<$0.FundingTransitionMsg, $0.FundingStateStepResp>(
          '/lnrpc.Lightning/FundingStateStep',
          ($0.FundingTransitionMsg value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FundingStateStepResp.fromBuffer(value));
  static final _$channelAcceptor =
      $grpc.ClientMethod<$0.ChannelAcceptResponse, $0.ChannelAcceptRequest>(
          '/lnrpc.Lightning/ChannelAcceptor',
          ($0.ChannelAcceptResponse value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ChannelAcceptRequest.fromBuffer(value));
  static final _$closeChannel =
      $grpc.ClientMethod<$0.CloseChannelRequest, $0.CloseStatusUpdate>(
          '/lnrpc.Lightning/CloseChannel',
          ($0.CloseChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.CloseStatusUpdate.fromBuffer(value));
  static final _$abandonChannel =
      $grpc.ClientMethod<$0.AbandonChannelRequest, $0.AbandonChannelResponse>(
          '/lnrpc.Lightning/AbandonChannel',
          ($0.AbandonChannelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AbandonChannelResponse.fromBuffer(value));
  static final _$sendPayment =
      $grpc.ClientMethod<$0.SendRequest, $0.SendResponse>(
          '/lnrpc.Lightning/SendPayment',
          ($0.SendRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SendResponse.fromBuffer(value));
  static final _$sendPaymentSync =
      $grpc.ClientMethod<$0.SendRequest, $0.SendResponse>(
          '/lnrpc.Lightning/SendPaymentSync',
          ($0.SendRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SendResponse.fromBuffer(value));
  static final _$sendToRoute =
      $grpc.ClientMethod<$0.SendToRouteRequest, $0.SendResponse>(
          '/lnrpc.Lightning/SendToRoute',
          ($0.SendToRouteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SendResponse.fromBuffer(value));
  static final _$sendToRouteSync =
      $grpc.ClientMethod<$0.SendToRouteRequest, $0.SendResponse>(
          '/lnrpc.Lightning/SendToRouteSync',
          ($0.SendToRouteRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.SendResponse.fromBuffer(value));
  static final _$addInvoice =
      $grpc.ClientMethod<$0.Invoice, $0.AddInvoiceResponse>(
          '/lnrpc.Lightning/AddInvoice',
          ($0.Invoice value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddInvoiceResponse.fromBuffer(value));
  static final _$listInvoices =
      $grpc.ClientMethod<$0.ListInvoiceRequest, $0.ListInvoiceResponse>(
          '/lnrpc.Lightning/ListInvoices',
          ($0.ListInvoiceRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListInvoiceResponse.fromBuffer(value));
  static final _$lookupInvoice = $grpc.ClientMethod<$0.PaymentHash, $0.Invoice>(
      '/lnrpc.Lightning/LookupInvoice',
      ($0.PaymentHash value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.Invoice.fromBuffer(value));
  static final _$subscribeInvoices =
      $grpc.ClientMethod<$0.InvoiceSubscription, $0.Invoice>(
          '/lnrpc.Lightning/SubscribeInvoices',
          ($0.InvoiceSubscription value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.Invoice.fromBuffer(value));
  static final _$decodePayReq = $grpc.ClientMethod<$0.PayReqString, $0.PayReq>(
      '/lnrpc.Lightning/DecodePayReq',
      ($0.PayReqString value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.PayReq.fromBuffer(value));
  static final _$listPayments =
      $grpc.ClientMethod<$0.ListPaymentsRequest, $0.ListPaymentsResponse>(
          '/lnrpc.Lightning/ListPayments',
          ($0.ListPaymentsRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ListPaymentsResponse.fromBuffer(value));
  static final _$deleteAllPayments = $grpc.ClientMethod<
          $0.DeleteAllPaymentsRequest, $0.DeleteAllPaymentsResponse>(
      '/lnrpc.Lightning/DeleteAllPayments',
      ($0.DeleteAllPaymentsRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.DeleteAllPaymentsResponse.fromBuffer(value));
  static final _$describeGraph =
      $grpc.ClientMethod<$0.ChannelGraphRequest, $0.ChannelGraph>(
          '/lnrpc.Lightning/DescribeGraph',
          ($0.ChannelGraphRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ChannelGraph.fromBuffer(value));
  static final _$getChanInfo =
      $grpc.ClientMethod<$0.ChanInfoRequest, $0.ChannelEdge>(
          '/lnrpc.Lightning/GetChanInfo',
          ($0.ChanInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ChannelEdge.fromBuffer(value));
  static final _$getNodeInfo =
      $grpc.ClientMethod<$0.NodeInfoRequest, $0.NodeInfo>(
          '/lnrpc.Lightning/GetNodeInfo',
          ($0.NodeInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.NodeInfo.fromBuffer(value));
  static final _$queryRoutes =
      $grpc.ClientMethod<$0.QueryRoutesRequest, $0.QueryRoutesResponse>(
          '/lnrpc.Lightning/QueryRoutes',
          ($0.QueryRoutesRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.QueryRoutesResponse.fromBuffer(value));
  static final _$getNetworkInfo =
      $grpc.ClientMethod<$0.NetworkInfoRequest, $0.NetworkInfo>(
          '/lnrpc.Lightning/GetNetworkInfo',
          ($0.NetworkInfoRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.NetworkInfo.fromBuffer(value));
  static final _$stopDaemon =
      $grpc.ClientMethod<$0.StopRequest, $0.StopResponse>(
          '/lnrpc.Lightning/StopDaemon',
          ($0.StopRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.StopResponse.fromBuffer(value));
  static final _$subscribeChannelGraph =
      $grpc.ClientMethod<$0.GraphTopologySubscription, $0.GraphTopologyUpdate>(
          '/lnrpc.Lightning/SubscribeChannelGraph',
          ($0.GraphTopologySubscription value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GraphTopologyUpdate.fromBuffer(value));
  static final _$debugLevel =
      $grpc.ClientMethod<$0.DebugLevelRequest, $0.DebugLevelResponse>(
          '/lnrpc.Lightning/DebugLevel',
          ($0.DebugLevelRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.DebugLevelResponse.fromBuffer(value));
  static final _$feeReport =
      $grpc.ClientMethod<$0.FeeReportRequest, $0.FeeReportResponse>(
          '/lnrpc.Lightning/FeeReport',
          ($0.FeeReportRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.FeeReportResponse.fromBuffer(value));
  static final _$updateChannelPolicy =
      $grpc.ClientMethod<$0.PolicyUpdateRequest, $0.PolicyUpdateResponse>(
          '/lnrpc.Lightning/UpdateChannelPolicy',
          ($0.PolicyUpdateRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.PolicyUpdateResponse.fromBuffer(value));
  static final _$forwardingHistory = $grpc.ClientMethod<
          $0.ForwardingHistoryRequest, $0.ForwardingHistoryResponse>(
      '/lnrpc.Lightning/ForwardingHistory',
      ($0.ForwardingHistoryRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) =>
          $0.ForwardingHistoryResponse.fromBuffer(value));
  static final _$exportChannelBackup =
      $grpc.ClientMethod<$0.ExportChannelBackupRequest, $0.ChannelBackup>(
          '/lnrpc.Lightning/ExportChannelBackup',
          ($0.ExportChannelBackupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) => $0.ChannelBackup.fromBuffer(value));
  static final _$exportAllChannelBackups =
      $grpc.ClientMethod<$0.ChanBackupExportRequest, $0.ChanBackupSnapshot>(
          '/lnrpc.Lightning/ExportAllChannelBackups',
          ($0.ChanBackupExportRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ChanBackupSnapshot.fromBuffer(value));
  static final _$verifyChanBackup =
      $grpc.ClientMethod<$0.ChanBackupSnapshot, $0.VerifyChanBackupResponse>(
          '/lnrpc.Lightning/VerifyChanBackup',
          ($0.ChanBackupSnapshot value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.VerifyChanBackupResponse.fromBuffer(value));
  static final _$restoreChannelBackups =
      $grpc.ClientMethod<$0.RestoreChanBackupRequest, $0.RestoreBackupResponse>(
          '/lnrpc.Lightning/RestoreChannelBackups',
          ($0.RestoreChanBackupRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.RestoreBackupResponse.fromBuffer(value));
  static final _$subscribeChannelBackups =
      $grpc.ClientMethod<$0.ChannelBackupSubscription, $0.ChanBackupSnapshot>(
          '/lnrpc.Lightning/SubscribeChannelBackups',
          ($0.ChannelBackupSubscription value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.ChanBackupSnapshot.fromBuffer(value));
  static final _$bakeMacaroon =
      $grpc.ClientMethod<$0.BakeMacaroonRequest, $0.BakeMacaroonResponse>(
          '/lnrpc.Lightning/BakeMacaroon',
          ($0.BakeMacaroonRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.BakeMacaroonResponse.fromBuffer(value));

  LightningClient($grpc.ClientChannel channel, {$grpc.CallOptions options})
      : super(channel, options: options);

  $grpc.ResponseFuture<$0.WalletBalanceResponse> walletBalance(
      $0.WalletBalanceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$walletBalance, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ChannelBalanceResponse> channelBalance(
      $0.ChannelBalanceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$channelBalance, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.TransactionDetails> getTransactions(
      $0.GetTransactionsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getTransactions, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.EstimateFeeResponse> estimateFee(
      $0.EstimateFeeRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$estimateFee, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SendCoinsResponse> sendCoins(
      $0.SendCoinsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$sendCoins, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ListUnspentResponse> listUnspent(
      $0.ListUnspentRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listUnspent, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.Transaction> subscribeTransactions(
      $0.GetTransactionsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$subscribeTransactions, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.SendManyResponse> sendMany($0.SendManyRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$sendMany, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.NewAddressResponse> newAddress(
      $0.NewAddressRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$newAddress, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.SignMessageResponse> signMessage(
      $0.SignMessageRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$signMessage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.VerifyMessageResponse> verifyMessage(
      $0.VerifyMessageRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$verifyMessage, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ConnectPeerResponse> connectPeer(
      $0.ConnectPeerRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$connectPeer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DisconnectPeerResponse> disconnectPeer(
      $0.DisconnectPeerRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$disconnectPeer, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ListPeersResponse> listPeers(
      $0.ListPeersRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$listPeers, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.PeerEvent> subscribePeerEvents(
      $0.PeerEventSubscription request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$subscribePeerEvents, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.GetInfoResponse> getInfo($0.GetInfoRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$getInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.PendingChannelsResponse> pendingChannels(
      $0.PendingChannelsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$pendingChannels, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ListChannelsResponse> listChannels(
      $0.ListChannelsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listChannels, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.ChannelEventUpdate> subscribeChannelEvents(
      $0.ChannelEventSubscription request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$subscribeChannelEvents, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.ClosedChannelsResponse> closedChannels(
      $0.ClosedChannelsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$closedChannels, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ChannelPoint> openChannelSync(
      $0.OpenChannelRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$openChannelSync, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.OpenStatusUpdate> openChannel(
      $0.OpenChannelRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$openChannel, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.FundingStateStepResp> fundingStateStep(
      $0.FundingTransitionMsg request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$fundingStateStep, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.ChannelAcceptRequest> channelAcceptor(
      $async.Stream<$0.ChannelAcceptResponse> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$channelAcceptor, request, options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseStream<$0.CloseStatusUpdate> closeChannel(
      $0.CloseChannelRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$closeChannel, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.AbandonChannelResponse> abandonChannel(
      $0.AbandonChannelRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$abandonChannel, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.SendResponse> sendPayment(
      $async.Stream<$0.SendRequest> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$sendPayment, request, options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.SendResponse> sendPaymentSync($0.SendRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendPaymentSync, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.SendResponse> sendToRoute(
      $async.Stream<$0.SendToRouteRequest> request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$sendToRoute, request, options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.SendResponse> sendToRouteSync(
      $0.SendToRouteRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$sendToRouteSync, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.AddInvoiceResponse> addInvoice($0.Invoice request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$addInvoice, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ListInvoiceResponse> listInvoices(
      $0.ListInvoiceRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listInvoices, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.Invoice> lookupInvoice($0.PaymentHash request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$lookupInvoice, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.Invoice> subscribeInvoices(
      $0.InvoiceSubscription request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$subscribeInvoices, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.PayReq> decodePayReq($0.PayReqString request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$decodePayReq, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ListPaymentsResponse> listPayments(
      $0.ListPaymentsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$listPayments, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.DeleteAllPaymentsResponse> deleteAllPayments(
      $0.DeleteAllPaymentsRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$deleteAllPayments, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ChannelGraph> describeGraph(
      $0.ChannelGraphRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$describeGraph, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ChannelEdge> getChanInfo($0.ChanInfoRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getChanInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.NodeInfo> getNodeInfo($0.NodeInfoRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getNodeInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.QueryRoutesResponse> queryRoutes(
      $0.QueryRoutesRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$queryRoutes, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.NetworkInfo> getNetworkInfo(
      $0.NetworkInfoRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$getNetworkInfo, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.StopResponse> stopDaemon($0.StopRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$stopDaemon, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.GraphTopologyUpdate> subscribeChannelGraph(
      $0.GraphTopologySubscription request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$subscribeChannelGraph, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.DebugLevelResponse> debugLevel(
      $0.DebugLevelRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$debugLevel, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.FeeReportResponse> feeReport(
      $0.FeeReportRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(_$feeReport, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.PolicyUpdateResponse> updateChannelPolicy(
      $0.PolicyUpdateRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$updateChannelPolicy, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ForwardingHistoryResponse> forwardingHistory(
      $0.ForwardingHistoryRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$forwardingHistory, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ChannelBackup> exportChannelBackup(
      $0.ExportChannelBackupRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$exportChannelBackup, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.ChanBackupSnapshot> exportAllChannelBackups(
      $0.ChanBackupExportRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$exportAllChannelBackups, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.VerifyChanBackupResponse> verifyChanBackup(
      $0.ChanBackupSnapshot request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$verifyChanBackup, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseFuture<$0.RestoreBackupResponse> restoreChannelBackups(
      $0.RestoreChanBackupRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$restoreChannelBackups, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }

  $grpc.ResponseStream<$0.ChanBackupSnapshot> subscribeChannelBackups(
      $0.ChannelBackupSubscription request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$subscribeChannelBackups, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseStream(call);
  }

  $grpc.ResponseFuture<$0.BakeMacaroonResponse> bakeMacaroon(
      $0.BakeMacaroonRequest request,
      {$grpc.CallOptions options}) {
    final call = $createCall(
        _$bakeMacaroon, $async.Stream.fromIterable([request]),
        options: options);
    return $grpc.ResponseFuture(call);
  }
}

abstract class LightningServiceBase extends $grpc.Service {
  $core.String get $name => 'lnrpc.Lightning';

  LightningServiceBase() {
    $addMethod(
        $grpc.ServiceMethod<$0.WalletBalanceRequest, $0.WalletBalanceResponse>(
            'WalletBalance',
            walletBalance_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.WalletBalanceRequest.fromBuffer(value),
            ($0.WalletBalanceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChannelBalanceRequest,
            $0.ChannelBalanceResponse>(
        'ChannelBalance',
        channelBalance_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChannelBalanceRequest.fromBuffer(value),
        ($0.ChannelBalanceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.GetTransactionsRequest, $0.TransactionDetails>(
            'GetTransactions',
            getTransactions_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.GetTransactionsRequest.fromBuffer(value),
            ($0.TransactionDetails value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.EstimateFeeRequest, $0.EstimateFeeResponse>(
            'EstimateFee',
            estimateFee_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.EstimateFeeRequest.fromBuffer(value),
            ($0.EstimateFeeResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendCoinsRequest, $0.SendCoinsResponse>(
        'SendCoins',
        sendCoins_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendCoinsRequest.fromBuffer(value),
        ($0.SendCoinsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListUnspentRequest, $0.ListUnspentResponse>(
            'ListUnspent',
            listUnspent_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListUnspentRequest.fromBuffer(value),
            ($0.ListUnspentResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetTransactionsRequest, $0.Transaction>(
        'SubscribeTransactions',
        subscribeTransactions_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.GetTransactionsRequest.fromBuffer(value),
        ($0.Transaction value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendManyRequest, $0.SendManyResponse>(
        'SendMany',
        sendMany_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendManyRequest.fromBuffer(value),
        ($0.SendManyResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NewAddressRequest, $0.NewAddressResponse>(
        'NewAddress',
        newAddress_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NewAddressRequest.fromBuffer(value),
        ($0.NewAddressResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.SignMessageRequest, $0.SignMessageResponse>(
            'SignMessage',
            signMessage_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.SignMessageRequest.fromBuffer(value),
            ($0.SignMessageResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.VerifyMessageRequest, $0.VerifyMessageResponse>(
            'VerifyMessage',
            verifyMessage_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.VerifyMessageRequest.fromBuffer(value),
            ($0.VerifyMessageResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ConnectPeerRequest, $0.ConnectPeerResponse>(
            'ConnectPeer',
            connectPeer_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ConnectPeerRequest.fromBuffer(value),
            ($0.ConnectPeerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DisconnectPeerRequest,
            $0.DisconnectPeerResponse>(
        'DisconnectPeer',
        disconnectPeer_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DisconnectPeerRequest.fromBuffer(value),
        ($0.DisconnectPeerResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ListPeersRequest, $0.ListPeersResponse>(
        'ListPeers',
        listPeers_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ListPeersRequest.fromBuffer(value),
        ($0.ListPeersResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PeerEventSubscription, $0.PeerEvent>(
        'SubscribePeerEvents',
        subscribePeerEvents_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.PeerEventSubscription.fromBuffer(value),
        ($0.PeerEvent value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetInfoRequest, $0.GetInfoResponse>(
        'GetInfo',
        getInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetInfoRequest.fromBuffer(value),
        ($0.GetInfoResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PendingChannelsRequest,
            $0.PendingChannelsResponse>(
        'PendingChannels',
        pendingChannels_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.PendingChannelsRequest.fromBuffer(value),
        ($0.PendingChannelsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListChannelsRequest, $0.ListChannelsResponse>(
            'ListChannels',
            listChannels_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListChannelsRequest.fromBuffer(value),
            ($0.ListChannelsResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ChannelEventSubscription, $0.ChannelEventUpdate>(
            'SubscribeChannelEvents',
            subscribeChannelEvents_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.ChannelEventSubscription.fromBuffer(value),
            ($0.ChannelEventUpdate value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ClosedChannelsRequest,
            $0.ClosedChannelsResponse>(
        'ClosedChannels',
        closedChannels_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ClosedChannelsRequest.fromBuffer(value),
        ($0.ClosedChannelsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OpenChannelRequest, $0.ChannelPoint>(
        'OpenChannelSync',
        openChannelSync_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.OpenChannelRequest.fromBuffer(value),
        ($0.ChannelPoint value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.OpenChannelRequest, $0.OpenStatusUpdate>(
        'OpenChannel',
        openChannel_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.OpenChannelRequest.fromBuffer(value),
        ($0.OpenStatusUpdate value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.FundingTransitionMsg, $0.FundingStateStepResp>(
            'FundingStateStep',
            fundingStateStep_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.FundingTransitionMsg.fromBuffer(value),
            ($0.FundingStateStepResp value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ChannelAcceptResponse, $0.ChannelAcceptRequest>(
            'ChannelAcceptor',
            channelAcceptor,
            true,
            true,
            ($core.List<$core.int> value) =>
                $0.ChannelAcceptResponse.fromBuffer(value),
            ($0.ChannelAcceptRequest value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.CloseChannelRequest, $0.CloseStatusUpdate>(
            'CloseChannel',
            closeChannel_Pre,
            false,
            true,
            ($core.List<$core.int> value) =>
                $0.CloseChannelRequest.fromBuffer(value),
            ($0.CloseStatusUpdate value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.AbandonChannelRequest,
            $0.AbandonChannelResponse>(
        'AbandonChannel',
        abandonChannel_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.AbandonChannelRequest.fromBuffer(value),
        ($0.AbandonChannelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendRequest, $0.SendResponse>(
        'SendPayment',
        sendPayment,
        true,
        true,
        ($core.List<$core.int> value) => $0.SendRequest.fromBuffer(value),
        ($0.SendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendRequest, $0.SendResponse>(
        'SendPaymentSync',
        sendPaymentSync_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.SendRequest.fromBuffer(value),
        ($0.SendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendToRouteRequest, $0.SendResponse>(
        'SendToRoute',
        sendToRoute,
        true,
        true,
        ($core.List<$core.int> value) =>
            $0.SendToRouteRequest.fromBuffer(value),
        ($0.SendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.SendToRouteRequest, $0.SendResponse>(
        'SendToRouteSync',
        sendToRouteSync_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.SendToRouteRequest.fromBuffer(value),
        ($0.SendResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.Invoice, $0.AddInvoiceResponse>(
        'AddInvoice',
        addInvoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.Invoice.fromBuffer(value),
        ($0.AddInvoiceResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListInvoiceRequest, $0.ListInvoiceResponse>(
            'ListInvoices',
            listInvoices_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListInvoiceRequest.fromBuffer(value),
            ($0.ListInvoiceResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PaymentHash, $0.Invoice>(
        'LookupInvoice',
        lookupInvoice_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PaymentHash.fromBuffer(value),
        ($0.Invoice value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.InvoiceSubscription, $0.Invoice>(
        'SubscribeInvoices',
        subscribeInvoices_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.InvoiceSubscription.fromBuffer(value),
        ($0.Invoice value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.PayReqString, $0.PayReq>(
        'DecodePayReq',
        decodePayReq_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.PayReqString.fromBuffer(value),
        ($0.PayReq value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ListPaymentsRequest, $0.ListPaymentsResponse>(
            'ListPayments',
            listPayments_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ListPaymentsRequest.fromBuffer(value),
            ($0.ListPaymentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DeleteAllPaymentsRequest,
            $0.DeleteAllPaymentsResponse>(
        'DeleteAllPayments',
        deleteAllPayments_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.DeleteAllPaymentsRequest.fromBuffer(value),
        ($0.DeleteAllPaymentsResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChannelGraphRequest, $0.ChannelGraph>(
        'DescribeGraph',
        describeGraph_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ChannelGraphRequest.fromBuffer(value),
        ($0.ChannelGraph value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChanInfoRequest, $0.ChannelEdge>(
        'GetChanInfo',
        getChanInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.ChanInfoRequest.fromBuffer(value),
        ($0.ChannelEdge value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NodeInfoRequest, $0.NodeInfo>(
        'GetNodeInfo',
        getNodeInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.NodeInfoRequest.fromBuffer(value),
        ($0.NodeInfo value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.QueryRoutesRequest, $0.QueryRoutesResponse>(
            'QueryRoutes',
            queryRoutes_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.QueryRoutesRequest.fromBuffer(value),
            ($0.QueryRoutesResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.NetworkInfoRequest, $0.NetworkInfo>(
        'GetNetworkInfo',
        getNetworkInfo_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.NetworkInfoRequest.fromBuffer(value),
        ($0.NetworkInfo value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.StopRequest, $0.StopResponse>(
        'StopDaemon',
        stopDaemon_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.StopRequest.fromBuffer(value),
        ($0.StopResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GraphTopologySubscription,
            $0.GraphTopologyUpdate>(
        'SubscribeChannelGraph',
        subscribeChannelGraph_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.GraphTopologySubscription.fromBuffer(value),
        ($0.GraphTopologyUpdate value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.DebugLevelRequest, $0.DebugLevelResponse>(
        'DebugLevel',
        debugLevel_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.DebugLevelRequest.fromBuffer(value),
        ($0.DebugLevelResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.FeeReportRequest, $0.FeeReportResponse>(
        'FeeReport',
        feeReport_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.FeeReportRequest.fromBuffer(value),
        ($0.FeeReportResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.PolicyUpdateRequest, $0.PolicyUpdateResponse>(
            'UpdateChannelPolicy',
            updateChannelPolicy_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.PolicyUpdateRequest.fromBuffer(value),
            ($0.PolicyUpdateResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ForwardingHistoryRequest,
            $0.ForwardingHistoryResponse>(
        'ForwardingHistory',
        forwardingHistory_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.ForwardingHistoryRequest.fromBuffer(value),
        ($0.ForwardingHistoryResponse value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ExportChannelBackupRequest, $0.ChannelBackup>(
            'ExportChannelBackup',
            exportChannelBackup_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ExportChannelBackupRequest.fromBuffer(value),
            ($0.ChannelBackup value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ChanBackupExportRequest, $0.ChanBackupSnapshot>(
            'ExportAllChannelBackups',
            exportAllChannelBackups_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ChanBackupExportRequest.fromBuffer(value),
            ($0.ChanBackupSnapshot value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.ChanBackupSnapshot, $0.VerifyChanBackupResponse>(
            'VerifyChanBackup',
            verifyChanBackup_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.ChanBackupSnapshot.fromBuffer(value),
            ($0.VerifyChanBackupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RestoreChanBackupRequest,
            $0.RestoreBackupResponse>(
        'RestoreChannelBackups',
        restoreChannelBackups_Pre,
        false,
        false,
        ($core.List<$core.int> value) =>
            $0.RestoreChanBackupRequest.fromBuffer(value),
        ($0.RestoreBackupResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.ChannelBackupSubscription,
            $0.ChanBackupSnapshot>(
        'SubscribeChannelBackups',
        subscribeChannelBackups_Pre,
        false,
        true,
        ($core.List<$core.int> value) =>
            $0.ChannelBackupSubscription.fromBuffer(value),
        ($0.ChanBackupSnapshot value) => value.writeToBuffer()));
    $addMethod(
        $grpc.ServiceMethod<$0.BakeMacaroonRequest, $0.BakeMacaroonResponse>(
            'BakeMacaroon',
            bakeMacaroon_Pre,
            false,
            false,
            ($core.List<$core.int> value) =>
                $0.BakeMacaroonRequest.fromBuffer(value),
            ($0.BakeMacaroonResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.WalletBalanceResponse> walletBalance_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.WalletBalanceRequest> request) async {
    return walletBalance(call, await request);
  }

  $async.Future<$0.ChannelBalanceResponse> channelBalance_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ChannelBalanceRequest> request) async {
    return channelBalance(call, await request);
  }

  $async.Future<$0.TransactionDetails> getTransactions_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetTransactionsRequest> request) async {
    return getTransactions(call, await request);
  }

  $async.Future<$0.EstimateFeeResponse> estimateFee_Pre($grpc.ServiceCall call,
      $async.Future<$0.EstimateFeeRequest> request) async {
    return estimateFee(call, await request);
  }

  $async.Future<$0.SendCoinsResponse> sendCoins_Pre($grpc.ServiceCall call,
      $async.Future<$0.SendCoinsRequest> request) async {
    return sendCoins(call, await request);
  }

  $async.Future<$0.ListUnspentResponse> listUnspent_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListUnspentRequest> request) async {
    return listUnspent(call, await request);
  }

  $async.Stream<$0.Transaction> subscribeTransactions_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GetTransactionsRequest> request) async* {
    yield* subscribeTransactions(call, await request);
  }

  $async.Future<$0.SendManyResponse> sendMany_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SendManyRequest> request) async {
    return sendMany(call, await request);
  }

  $async.Future<$0.NewAddressResponse> newAddress_Pre($grpc.ServiceCall call,
      $async.Future<$0.NewAddressRequest> request) async {
    return newAddress(call, await request);
  }

  $async.Future<$0.SignMessageResponse> signMessage_Pre($grpc.ServiceCall call,
      $async.Future<$0.SignMessageRequest> request) async {
    return signMessage(call, await request);
  }

  $async.Future<$0.VerifyMessageResponse> verifyMessage_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.VerifyMessageRequest> request) async {
    return verifyMessage(call, await request);
  }

  $async.Future<$0.ConnectPeerResponse> connectPeer_Pre($grpc.ServiceCall call,
      $async.Future<$0.ConnectPeerRequest> request) async {
    return connectPeer(call, await request);
  }

  $async.Future<$0.DisconnectPeerResponse> disconnectPeer_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DisconnectPeerRequest> request) async {
    return disconnectPeer(call, await request);
  }

  $async.Future<$0.ListPeersResponse> listPeers_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListPeersRequest> request) async {
    return listPeers(call, await request);
  }

  $async.Stream<$0.PeerEvent> subscribePeerEvents_Pre($grpc.ServiceCall call,
      $async.Future<$0.PeerEventSubscription> request) async* {
    yield* subscribePeerEvents(call, await request);
  }

  $async.Future<$0.GetInfoResponse> getInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetInfoRequest> request) async {
    return getInfo(call, await request);
  }

  $async.Future<$0.PendingChannelsResponse> pendingChannels_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.PendingChannelsRequest> request) async {
    return pendingChannels(call, await request);
  }

  $async.Future<$0.ListChannelsResponse> listChannels_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListChannelsRequest> request) async {
    return listChannels(call, await request);
  }

  $async.Stream<$0.ChannelEventUpdate> subscribeChannelEvents_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ChannelEventSubscription> request) async* {
    yield* subscribeChannelEvents(call, await request);
  }

  $async.Future<$0.ClosedChannelsResponse> closedChannels_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ClosedChannelsRequest> request) async {
    return closedChannels(call, await request);
  }

  $async.Future<$0.ChannelPoint> openChannelSync_Pre($grpc.ServiceCall call,
      $async.Future<$0.OpenChannelRequest> request) async {
    return openChannelSync(call, await request);
  }

  $async.Stream<$0.OpenStatusUpdate> openChannel_Pre($grpc.ServiceCall call,
      $async.Future<$0.OpenChannelRequest> request) async* {
    yield* openChannel(call, await request);
  }

  $async.Future<$0.FundingStateStepResp> fundingStateStep_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.FundingTransitionMsg> request) async {
    return fundingStateStep(call, await request);
  }

  $async.Stream<$0.CloseStatusUpdate> closeChannel_Pre($grpc.ServiceCall call,
      $async.Future<$0.CloseChannelRequest> request) async* {
    yield* closeChannel(call, await request);
  }

  $async.Future<$0.AbandonChannelResponse> abandonChannel_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.AbandonChannelRequest> request) async {
    return abandonChannel(call, await request);
  }

  $async.Future<$0.SendResponse> sendPaymentSync_Pre(
      $grpc.ServiceCall call, $async.Future<$0.SendRequest> request) async {
    return sendPaymentSync(call, await request);
  }

  $async.Future<$0.SendResponse> sendToRouteSync_Pre($grpc.ServiceCall call,
      $async.Future<$0.SendToRouteRequest> request) async {
    return sendToRouteSync(call, await request);
  }

  $async.Future<$0.AddInvoiceResponse> addInvoice_Pre(
      $grpc.ServiceCall call, $async.Future<$0.Invoice> request) async {
    return addInvoice(call, await request);
  }

  $async.Future<$0.ListInvoiceResponse> listInvoices_Pre($grpc.ServiceCall call,
      $async.Future<$0.ListInvoiceRequest> request) async {
    return listInvoices(call, await request);
  }

  $async.Future<$0.Invoice> lookupInvoice_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PaymentHash> request) async {
    return lookupInvoice(call, await request);
  }

  $async.Stream<$0.Invoice> subscribeInvoices_Pre($grpc.ServiceCall call,
      $async.Future<$0.InvoiceSubscription> request) async* {
    yield* subscribeInvoices(call, await request);
  }

  $async.Future<$0.PayReq> decodePayReq_Pre(
      $grpc.ServiceCall call, $async.Future<$0.PayReqString> request) async {
    return decodePayReq(call, await request);
  }

  $async.Future<$0.ListPaymentsResponse> listPayments_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ListPaymentsRequest> request) async {
    return listPayments(call, await request);
  }

  $async.Future<$0.DeleteAllPaymentsResponse> deleteAllPayments_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.DeleteAllPaymentsRequest> request) async {
    return deleteAllPayments(call, await request);
  }

  $async.Future<$0.ChannelGraph> describeGraph_Pre($grpc.ServiceCall call,
      $async.Future<$0.ChannelGraphRequest> request) async {
    return describeGraph(call, await request);
  }

  $async.Future<$0.ChannelEdge> getChanInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.ChanInfoRequest> request) async {
    return getChanInfo(call, await request);
  }

  $async.Future<$0.NodeInfo> getNodeInfo_Pre(
      $grpc.ServiceCall call, $async.Future<$0.NodeInfoRequest> request) async {
    return getNodeInfo(call, await request);
  }

  $async.Future<$0.QueryRoutesResponse> queryRoutes_Pre($grpc.ServiceCall call,
      $async.Future<$0.QueryRoutesRequest> request) async {
    return queryRoutes(call, await request);
  }

  $async.Future<$0.NetworkInfo> getNetworkInfo_Pre($grpc.ServiceCall call,
      $async.Future<$0.NetworkInfoRequest> request) async {
    return getNetworkInfo(call, await request);
  }

  $async.Future<$0.StopResponse> stopDaemon_Pre(
      $grpc.ServiceCall call, $async.Future<$0.StopRequest> request) async {
    return stopDaemon(call, await request);
  }

  $async.Stream<$0.GraphTopologyUpdate> subscribeChannelGraph_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.GraphTopologySubscription> request) async* {
    yield* subscribeChannelGraph(call, await request);
  }

  $async.Future<$0.DebugLevelResponse> debugLevel_Pre($grpc.ServiceCall call,
      $async.Future<$0.DebugLevelRequest> request) async {
    return debugLevel(call, await request);
  }

  $async.Future<$0.FeeReportResponse> feeReport_Pre($grpc.ServiceCall call,
      $async.Future<$0.FeeReportRequest> request) async {
    return feeReport(call, await request);
  }

  $async.Future<$0.PolicyUpdateResponse> updateChannelPolicy_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.PolicyUpdateRequest> request) async {
    return updateChannelPolicy(call, await request);
  }

  $async.Future<$0.ForwardingHistoryResponse> forwardingHistory_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ForwardingHistoryRequest> request) async {
    return forwardingHistory(call, await request);
  }

  $async.Future<$0.ChannelBackup> exportChannelBackup_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ExportChannelBackupRequest> request) async {
    return exportChannelBackup(call, await request);
  }

  $async.Future<$0.ChanBackupSnapshot> exportAllChannelBackups_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ChanBackupExportRequest> request) async {
    return exportAllChannelBackups(call, await request);
  }

  $async.Future<$0.VerifyChanBackupResponse> verifyChanBackup_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ChanBackupSnapshot> request) async {
    return verifyChanBackup(call, await request);
  }

  $async.Future<$0.RestoreBackupResponse> restoreChannelBackups_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.RestoreChanBackupRequest> request) async {
    return restoreChannelBackups(call, await request);
  }

  $async.Stream<$0.ChanBackupSnapshot> subscribeChannelBackups_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.ChannelBackupSubscription> request) async* {
    yield* subscribeChannelBackups(call, await request);
  }

  $async.Future<$0.BakeMacaroonResponse> bakeMacaroon_Pre(
      $grpc.ServiceCall call,
      $async.Future<$0.BakeMacaroonRequest> request) async {
    return bakeMacaroon(call, await request);
  }

  $async.Future<$0.WalletBalanceResponse> walletBalance(
      $grpc.ServiceCall call, $0.WalletBalanceRequest request);
  $async.Future<$0.ChannelBalanceResponse> channelBalance(
      $grpc.ServiceCall call, $0.ChannelBalanceRequest request);
  $async.Future<$0.TransactionDetails> getTransactions(
      $grpc.ServiceCall call, $0.GetTransactionsRequest request);
  $async.Future<$0.EstimateFeeResponse> estimateFee(
      $grpc.ServiceCall call, $0.EstimateFeeRequest request);
  $async.Future<$0.SendCoinsResponse> sendCoins(
      $grpc.ServiceCall call, $0.SendCoinsRequest request);
  $async.Future<$0.ListUnspentResponse> listUnspent(
      $grpc.ServiceCall call, $0.ListUnspentRequest request);
  $async.Stream<$0.Transaction> subscribeTransactions(
      $grpc.ServiceCall call, $0.GetTransactionsRequest request);
  $async.Future<$0.SendManyResponse> sendMany(
      $grpc.ServiceCall call, $0.SendManyRequest request);
  $async.Future<$0.NewAddressResponse> newAddress(
      $grpc.ServiceCall call, $0.NewAddressRequest request);
  $async.Future<$0.SignMessageResponse> signMessage(
      $grpc.ServiceCall call, $0.SignMessageRequest request);
  $async.Future<$0.VerifyMessageResponse> verifyMessage(
      $grpc.ServiceCall call, $0.VerifyMessageRequest request);
  $async.Future<$0.ConnectPeerResponse> connectPeer(
      $grpc.ServiceCall call, $0.ConnectPeerRequest request);
  $async.Future<$0.DisconnectPeerResponse> disconnectPeer(
      $grpc.ServiceCall call, $0.DisconnectPeerRequest request);
  $async.Future<$0.ListPeersResponse> listPeers(
      $grpc.ServiceCall call, $0.ListPeersRequest request);
  $async.Stream<$0.PeerEvent> subscribePeerEvents(
      $grpc.ServiceCall call, $0.PeerEventSubscription request);
  $async.Future<$0.GetInfoResponse> getInfo(
      $grpc.ServiceCall call, $0.GetInfoRequest request);
  $async.Future<$0.PendingChannelsResponse> pendingChannels(
      $grpc.ServiceCall call, $0.PendingChannelsRequest request);
  $async.Future<$0.ListChannelsResponse> listChannels(
      $grpc.ServiceCall call, $0.ListChannelsRequest request);
  $async.Stream<$0.ChannelEventUpdate> subscribeChannelEvents(
      $grpc.ServiceCall call, $0.ChannelEventSubscription request);
  $async.Future<$0.ClosedChannelsResponse> closedChannels(
      $grpc.ServiceCall call, $0.ClosedChannelsRequest request);
  $async.Future<$0.ChannelPoint> openChannelSync(
      $grpc.ServiceCall call, $0.OpenChannelRequest request);
  $async.Stream<$0.OpenStatusUpdate> openChannel(
      $grpc.ServiceCall call, $0.OpenChannelRequest request);
  $async.Future<$0.FundingStateStepResp> fundingStateStep(
      $grpc.ServiceCall call, $0.FundingTransitionMsg request);
  $async.Stream<$0.ChannelAcceptRequest> channelAcceptor(
      $grpc.ServiceCall call, $async.Stream<$0.ChannelAcceptResponse> request);
  $async.Stream<$0.CloseStatusUpdate> closeChannel(
      $grpc.ServiceCall call, $0.CloseChannelRequest request);
  $async.Future<$0.AbandonChannelResponse> abandonChannel(
      $grpc.ServiceCall call, $0.AbandonChannelRequest request);
  $async.Stream<$0.SendResponse> sendPayment(
      $grpc.ServiceCall call, $async.Stream<$0.SendRequest> request);
  $async.Future<$0.SendResponse> sendPaymentSync(
      $grpc.ServiceCall call, $0.SendRequest request);
  $async.Stream<$0.SendResponse> sendToRoute(
      $grpc.ServiceCall call, $async.Stream<$0.SendToRouteRequest> request);
  $async.Future<$0.SendResponse> sendToRouteSync(
      $grpc.ServiceCall call, $0.SendToRouteRequest request);
  $async.Future<$0.AddInvoiceResponse> addInvoice(
      $grpc.ServiceCall call, $0.Invoice request);
  $async.Future<$0.ListInvoiceResponse> listInvoices(
      $grpc.ServiceCall call, $0.ListInvoiceRequest request);
  $async.Future<$0.Invoice> lookupInvoice(
      $grpc.ServiceCall call, $0.PaymentHash request);
  $async.Stream<$0.Invoice> subscribeInvoices(
      $grpc.ServiceCall call, $0.InvoiceSubscription request);
  $async.Future<$0.PayReq> decodePayReq(
      $grpc.ServiceCall call, $0.PayReqString request);
  $async.Future<$0.ListPaymentsResponse> listPayments(
      $grpc.ServiceCall call, $0.ListPaymentsRequest request);
  $async.Future<$0.DeleteAllPaymentsResponse> deleteAllPayments(
      $grpc.ServiceCall call, $0.DeleteAllPaymentsRequest request);
  $async.Future<$0.ChannelGraph> describeGraph(
      $grpc.ServiceCall call, $0.ChannelGraphRequest request);
  $async.Future<$0.ChannelEdge> getChanInfo(
      $grpc.ServiceCall call, $0.ChanInfoRequest request);
  $async.Future<$0.NodeInfo> getNodeInfo(
      $grpc.ServiceCall call, $0.NodeInfoRequest request);
  $async.Future<$0.QueryRoutesResponse> queryRoutes(
      $grpc.ServiceCall call, $0.QueryRoutesRequest request);
  $async.Future<$0.NetworkInfo> getNetworkInfo(
      $grpc.ServiceCall call, $0.NetworkInfoRequest request);
  $async.Future<$0.StopResponse> stopDaemon(
      $grpc.ServiceCall call, $0.StopRequest request);
  $async.Stream<$0.GraphTopologyUpdate> subscribeChannelGraph(
      $grpc.ServiceCall call, $0.GraphTopologySubscription request);
  $async.Future<$0.DebugLevelResponse> debugLevel(
      $grpc.ServiceCall call, $0.DebugLevelRequest request);
  $async.Future<$0.FeeReportResponse> feeReport(
      $grpc.ServiceCall call, $0.FeeReportRequest request);
  $async.Future<$0.PolicyUpdateResponse> updateChannelPolicy(
      $grpc.ServiceCall call, $0.PolicyUpdateRequest request);
  $async.Future<$0.ForwardingHistoryResponse> forwardingHistory(
      $grpc.ServiceCall call, $0.ForwardingHistoryRequest request);
  $async.Future<$0.ChannelBackup> exportChannelBackup(
      $grpc.ServiceCall call, $0.ExportChannelBackupRequest request);
  $async.Future<$0.ChanBackupSnapshot> exportAllChannelBackups(
      $grpc.ServiceCall call, $0.ChanBackupExportRequest request);
  $async.Future<$0.VerifyChanBackupResponse> verifyChanBackup(
      $grpc.ServiceCall call, $0.ChanBackupSnapshot request);
  $async.Future<$0.RestoreBackupResponse> restoreChannelBackups(
      $grpc.ServiceCall call, $0.RestoreChanBackupRequest request);
  $async.Stream<$0.ChanBackupSnapshot> subscribeChannelBackups(
      $grpc.ServiceCall call, $0.ChannelBackupSubscription request);
  $async.Future<$0.BakeMacaroonResponse> bakeMacaroon(
      $grpc.ServiceCall call, $0.BakeMacaroonRequest request);
}
