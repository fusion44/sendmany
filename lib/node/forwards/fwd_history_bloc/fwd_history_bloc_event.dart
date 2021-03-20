part of 'fwd_history_bloc.dart';

abstract class ForwardingHistoryBlocEvent extends Equatable {
  const ForwardingHistoryBlocEvent();

  @override
  List<Object> get props => [];
}

class LoadFwdHistory extends ForwardingHistoryBlocEvent {}
