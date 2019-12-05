import 'package:equatable/equatable.dart';
import 'package:sendmany/common/models/models.dart';

abstract class OpenChannelState extends Equatable {
  const OpenChannelState();
}

class InitialOpenChannelState extends OpenChannelState {
  @override
  List<Object> get props => [];
}

/// State when the request has been submitted to LND daemon
class InitiateOpenChannelState extends OpenChannelState {
  @override
  List<Object> get props => [];
}

/// State when the open channel transaction was successfully
/// submitted to the Blockchain
class OpenChannelInitiatedState extends OpenChannelState {
  /// [ChannelPoint] of the new pending channel
  final ChannelPoint channelPoint;

  OpenChannelInitiatedState(this.channelPoint);

  @override
  List<Object> get props => [
        channelPoint.fundingTxid,
        channelPoint.outputIndex,
      ];
}

/// State when an error has occured while submitting the request
class OpenChannelErrorState extends OpenChannelState {
  /// The message for the error
  final String errorMessage;

  OpenChannelErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}
