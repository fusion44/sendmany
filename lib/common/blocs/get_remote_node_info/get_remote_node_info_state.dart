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
  final List<String> pubKeys;

  RemoteNodeInfoLoadingState(this.pubKeys);

  @override
  List<Object> get props => [pubKeys];
}

class RemoteNodeInfoLoadedState extends GetRemoteNodeInfoState {
  final Map<String, RemoteNodeInfo> nodeInfos;
  final Map<String, String> errors;

  RemoteNodeInfoLoadedState(this.nodeInfos, this.errors);

  @override
  List<Object> get props => [nodeInfos, errors];
}

class RemoteNodeInfoErrorState extends GetRemoteNodeInfoState {
  final Map<String, String> errors;

  RemoteNodeInfoErrorState(this.errors);

  @override
  List<Object> get props => [errors];
}
