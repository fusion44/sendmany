import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';

import '../../common/models/channels/models.dart';

@immutable
abstract class GetChanInfoState {}

class InitialGetChanInfoState extends GetChanInfoState {}

class ChanInfoLoadingState extends GetChanInfoState {
  final Int64 pubKey;

  ChanInfoLoadingState(this.pubKey);
}

class ChanInfoLoadedState extends GetChanInfoState {
  final ChannelEdge chanInfo;

  ChanInfoLoadedState(this.chanInfo);
}

class ChanInfoLoadingErrorState extends GetChanInfoState {
  final String message;
  final Int64 chanId;

  ChanInfoLoadingErrorState(this.message, {this.chanId});
}
