import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../common/models/models.dart';

/// Yields always the most recent channel states
class ChannelsUpdatedState extends SubscribeChannelEventsState {
  /// Contains all current channels
  final List<Channel> channels;

  /// Indicated the number of pending channels
  final int numPending;

  ChannelsUpdatedState({
    @required this.channels,
    this.numPending = 0,
  });

  @override
  List<Object> get props => [
        channels.hashCode,
        channels.length,
      ];

  /// Replaces a channel object with an updated object.
  ChannelsUpdatedState copyWith(Channel value) {
    var newNumPending = numPending;

    // remove the old channel object
    channels.removeWhere(
      (Channel c) {
        // remove the null marker
        if (c == null) return true;

        var match = c.channelPoint == value.channelPoint;

        // if it is a pending channel that is being removed, update numPending
        if (match && !(c is EstablishedChannel)) newNumPending--;
        return match;
      },
    );

    // if the new channel is a pending channel
    // insert it before all established channels
    if (!(value is EstablishedChannel)) {
      channels.insert(newNumPending, value);
      newNumPending++;
    } else {
      // otherwise just append the object to the end
      channels.add(value);
    }

    // add the new null marker
    if (newNumPending > 0) {
      channels.insert(newNumPending, null);
    }

    return ChannelsUpdatedState(
      channels: [...channels],
      numPending: newNumPending,
    );
  }

  /// Returns a copy of itself with the Channel cp removed
  ChannelsUpdatedState copyWithout(ChannelPoint cp) {
    var newNumPending = numPending;
    channels.removeWhere((Channel c) {
      // remove the null marker
      if (c == null) return true;

      var match = c.channelPoint == cp;
      if (!(c is EstablishedChannel)) newNumPending--;
      return match;
    });

    if (newNumPending == 0) {
      return ChannelsUpdatedState(
        channels: [...channels],
        numPending: newNumPending,
      );
    } else {
      var newList = [...channels];
      newList.insert(numPending, null);
      return ChannelsUpdatedState(
        channels: newList,
        numPending: newNumPending,
      );
    }
  }
}

class InitialSubscribeChannelEventsState extends SubscribeChannelEventsState {
  @override
  List<Object> get props => [];
}

class SubscribeChannelErrorState extends SubscribeChannelEventsState {
  final String errorMessage;

  SubscribeChannelErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}

abstract class SubscribeChannelEventsState extends Equatable {
  const SubscribeChannelEventsState();
}

class SubscribeChannelLoadingState extends SubscribeChannelEventsState {
  @override
  List<Object> get props => null;
}
