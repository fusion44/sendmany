import 'package:equatable/equatable.dart';
import 'package:sendmany/common/models/models.dart';

abstract class GetRemoteNodeInfoState extends Equatable {
  const GetRemoteNodeInfoState();
}

class InitialGetRemoteNodeInfoState extends GetRemoteNodeInfoState {
  @override
  List<Object> get props => [];
}

class RemoteNodeInfoLoadingState extends GetRemoteNodeInfoState {
  final String pubKey;

  RemoteNodeInfoLoadingState(this.pubKey);

  @override
  List<Object> get props => [pubKey];
}

class RemoteNodeInfoLoadedState extends GetRemoteNodeInfoState {
  final NodeInfo nodeInfo;

  RemoteNodeInfoLoadedState(this.nodeInfo);

  @override
  List<Object> get props => [nodeInfo];
}

class RemoteNodeInfoErrorState extends GetRemoteNodeInfoState {
  final String error;
  final String pubKey;

  RemoteNodeInfoErrorState(this.error, {this.pubKey = ""});

  @override
  List<Object> get props => [error, pubKey];
}
