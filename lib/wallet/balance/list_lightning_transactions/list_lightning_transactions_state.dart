import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:torden/common/models/models.dart';

@immutable
abstract class ListLightningTxState extends Equatable {
  ListLightningTxState([List props = const <dynamic>[]]) : super(props);
}

class InitialListLightningTxState extends ListLightningTxState {}

class LoadingLightningTxState extends ListLightningTxState {}

class ReloadingLightningTxState extends ListLightningTxState {}

class LoadingLightningTxFinishedState extends ListLightningTxState {
  final List<LightningTx> transactions;

  LoadingLightningTxFinishedState(this.transactions) : super([transactions]);
}

class LoadingLightningTxErrorState extends ListLightningTxState {
  final String errorMessage;

  LoadingLightningTxErrorState(this.errorMessage);
}
