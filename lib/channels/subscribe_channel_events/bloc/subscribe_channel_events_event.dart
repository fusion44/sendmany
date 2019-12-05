import 'package:equatable/equatable.dart';
import 'package:sendmany/common/models/channels/models.dart';

class OpeningNewChannelEvent extends SubscribeChannelEventsEvent {
  final ChannelPoint channelPoint;

  OpeningNewChannelEvent(this.channelPoint);

  @override
  List<Object> get props => [
        channelPoint.fundingTxid,
        channelPoint.outputIndex,
      ];
}

class SubscribeChannelEventsAppStart extends SubscribeChannelEventsEvent {
  @override
  List<Object> get props => null;
}

abstract class SubscribeChannelEventsEvent extends Equatable {
  const SubscribeChannelEventsEvent();
}
