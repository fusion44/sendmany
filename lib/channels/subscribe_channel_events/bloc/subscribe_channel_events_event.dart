import 'package:equatable/equatable.dart';

import '../../../common/models/channels/models.dart';

class OpeningNewChannelEvent extends SubscribeChannelEventsEvent {
  final ChannelPoint channelPoint;

  OpeningNewChannelEvent(this.channelPoint);

  @override
  List<Object> get props => [
        channelPoint.fundingTxid,
        channelPoint.outputIndex,
      ];
}

/// Notify the SubscribeChannelEventsBloc of a new channel close
class ClosingChannelEvent extends SubscribeChannelEventsEvent {
  // This is necessary because LND only will send a notification that
  // the channel is inactive. Clients are expected to handle close events
  // themselves as they normally initiate the channel closing process

  /// The [ChannelPoint] of the closed [Channel]
  final ChannelPoint channelPoint;

  /// The closing transaction id
  final String txid;

  ClosingChannelEvent(this.channelPoint, this.txid);

  @override
  List<Object> get props => [
        channelPoint.fundingTxid,
        channelPoint.outputIndex,
        txid,
      ];
}

class SubscribeChannelEventsAppStart extends SubscribeChannelEventsEvent {
  @override
  List<Object> get props => null;
}

abstract class SubscribeChannelEventsEvent extends Equatable {
  const SubscribeChannelEventsEvent();
}
