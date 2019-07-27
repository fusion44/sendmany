import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/lightning/lnd/lnd_rpc.dart';

@immutable
abstract class LnInfoState extends Equatable {
  LnInfoState([List props = const []]) : super(props);
}

class InitialLnInfoState extends LnInfoState {}

class LnInfoStateLoading extends LnInfoState {}

class LnInfoStateLoadingFinished extends LnInfoState {
  final GetInfoResponse infoResponse;
  final WalletBalanceResponse walletBalance;
  final ChannelBalanceResponse channelBalance;

  LnInfoStateLoadingFinished(
    this.infoResponse,
    this.walletBalance,
    this.channelBalance,
  );
}
