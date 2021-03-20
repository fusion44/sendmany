part of 'fwd_history_bloc.dart';

abstract class ForwardingHistoryBlocState extends Equatable {
  const ForwardingHistoryBlocState();

  @override
  List<Object> get props => [];
}

class ForwardingHistoryBlocInitial extends ForwardingHistoryBlocState {}

class FwdHistoryLoaded extends ForwardingHistoryBlocState {
  final Map<Int64, Channel> channels;
  final List<ForwardingEvent> forwardingEvents;
  final int lastOffsetIndex;

  FwdHistoryLoaded(
    this.forwardingEvents,
    this.lastOffsetIndex,
    this.channels,
  );

  @override
  List<Object> get props => [channels, forwardingEvents, lastOffsetIndex];
}

class FwdHistoryLoadErrorState extends ForwardingHistoryBlocState {
  final String errorMessage;

  FwdHistoryLoadErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
