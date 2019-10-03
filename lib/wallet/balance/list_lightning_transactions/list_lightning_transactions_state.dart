import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/models.dart';

@immutable
abstract class ListLightningTxState extends Equatable {}

class InitialListLightningTxState extends ListLightningTxState {
  @override
  List<Object> get props => const [];
}

class LoadingLightningTxState extends ListLightningTxState {
  @override
  List<Object> get props => const [];
}

class ReloadingLightningTxState extends ListLightningTxState {
  @override
  List<Object> get props => const [];
}

class LoadingLightningTxFinishedState extends ListLightningTxState {
  final List<LightningTx> transactions;

  LoadingLightningTxFinishedState(this.transactions);

  @override
  List<Object> get props => [transactions];
}

class LoadingLightningTxErrorState extends ListLightningTxState {
  final String errorMessage;

  LoadingLightningTxErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
