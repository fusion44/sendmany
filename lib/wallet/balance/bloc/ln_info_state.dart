import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../common/connection/lnd_rpc/lnd_rpc.dart';
import '../../../common/models/models.dart';

@immutable
abstract class LnInfoState extends Equatable {}

class InitialLnInfoState extends LnInfoState {
  @override
  List<Object> get props => const [];
}

class LnInfoStateLoading extends LnInfoState {
  @override
  List<Object> get props => const [];
}

class LnInfoStateReloading extends LnInfoState {
  final LocalNodeInfo infoResponse;
  final WalletBalanceResponse walletBalance;
  final ChannelBalanceResponse channelBalance;

  LnInfoStateReloading(
    this.infoResponse,
    this.walletBalance,
    this.channelBalance,
  );

  @override
  List<Object> get props => [infoResponse, walletBalance, channelBalance];
}

class LnInfoStateLoadingFinished extends LnInfoState {
  final LocalNodeInfo infoResponse;
  final WalletBalanceResponse walletBalance;
  final ChannelBalanceResponse channelBalance;

  LnInfoStateLoadingFinished(
    this.infoResponse,
    this.walletBalance,
    this.channelBalance,
  );

  @override
  List<Object> get props => [infoResponse, walletBalance, channelBalance];
}
