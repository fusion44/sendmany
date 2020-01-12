import 'package:meta/meta.dart';

import '../../common/models/models.dart';

enum CloseErrorReason { peerOffline, unknown }

@immutable
abstract class CloseChannelBlocState {}

class InitialCloseChannelBlocState extends CloseChannelBlocState {}

class CloseChannelLoadingState extends CloseChannelBlocState {
  final ChannelPoint channelPoint;

  CloseChannelLoadingState(this.channelPoint);
}

class CloseChannelStartedState extends CloseChannelBlocState {
  final ChannelPoint channelPoint;

  CloseChannelStartedState(this.channelPoint);
}

class CloseChannelErrorState extends CloseChannelBlocState {
  /// The error message
  final String message;

  /// The [ChannelPoint] which failed closing
  final ChannelPoint edge;

  /// The reason the close failed
  final CloseErrorReason reason;

  CloseChannelErrorState(
    this.message, {
    this.edge,
    this.reason = CloseErrorReason.unknown,
  });
}
