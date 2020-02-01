import 'dart:async';

import 'package:bloc/bloc.dart';

import './bloc.dart';
import 'get_remote_node_info_repo.dart';

/// Fetches information about another node in the lightning network
///
/// Add [GetRemoteNodeInfoEvent] to start fetching
/// Yields either [RemoteNodeInfoLoadingState], [RemoteNodeInfoLoadedState] or
/// [RemoteNodeInfoErrorState]
class GetRemoteNodeInfoBloc
    extends Bloc<GetRemoteNodeInfoEvent, GetRemoteNodeInfoState> {
  final GetRemoteNodeInfoRepository _repository;

  GetRemoteNodeInfoBloc(this._repository);

  @override
  GetRemoteNodeInfoState get initialState => InitialGetRemoteNodeInfoState();

  @override
  Stream<GetRemoteNodeInfoState> mapEventToState(
    GetRemoteNodeInfoEvent event,
  ) async* {
    yield (RemoteNodeInfoLoadingState(event.pubKeys));

    var res = await _repository.getNodeInfos(
      event.pubKeys,
      event.includeChannels,
    );

    if (res != null && res.errors != null && res.errors.isEmpty) {
      yield RemoteNodeInfoLoadedState(res.infos, res.errors);
    } else {
      yield RemoteNodeInfoErrorState(res.errors);
    }
  }
}
