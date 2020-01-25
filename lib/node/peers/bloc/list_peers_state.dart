import 'package:equatable/equatable.dart';

import 'models.dart';

abstract class ListPeersState extends Equatable {
  const ListPeersState();
}

class InitialListPeersState extends ListPeersState {
  @override
  List<Object> get props => [];
}

class PeersLoadingState extends ListPeersState {
  @override
  List<Object> get props => [];
}

class PeersLoadedState extends ListPeersState {
  final Map<String, LoadedPeer> peers;

  PeersLoadedState(this.peers);

  @override
  List<Object> get props => [peers.length, peers.hashCode];
}

class PeersLoadingErrorState extends ListPeersState {
  final String errorMessage;

  PeersLoadingErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
