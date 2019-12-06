import 'package:equatable/equatable.dart';

abstract class ListPeersEvent extends Equatable {
  const ListPeersEvent();
}

class LoadPeersList extends ListPeersEvent {
  @override
  List<Object> get props => [];
}
