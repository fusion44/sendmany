import 'package:fixnum/fixnum.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:sendmany/channels/subscribe_channel_events/bloc/bloc.dart';
import 'package:sendmany/common/models/channels/models.dart';

List<Channel> _buildInitialChannels() {
  return [
    PendingOpenChannel(
      channel: PendingChannelData(
        capacity: Int64.parseInt('100'),
        channelPoint: ChannelPoint(fundingTxid: 'pending123', outputIndex: 0),
      ),
    ),
    PendingOpenChannel(
      channel: PendingChannelData(
        capacity: Int64.parseInt('200'),
        channelPoint: ChannelPoint(fundingTxid: 'pending234', outputIndex: 1),
      ),
    ),
    null, // devider indicator
    EstablishedChannel(
      capacity: Int64.parseInt('300'),
      channelPoint: ChannelPoint(fundingTxid: 'est123', outputIndex: 0),
      localBalance: Int64.ZERO,
      remoteBalance: Int64.parseInt("100000"),
    ),
    EstablishedChannel(
      capacity: Int64.parseInt('400'),
      channelPoint: ChannelPoint(fundingTxid: 'est234', outputIndex: 1),
      localBalance: Int64.parseInt("100000"),
      remoteBalance: Int64.ZERO,
    ),
  ];
}

void main() {
  test(
    'should update state Established -> PendingClosing object correctly',
    () {
      ChannelsUpdatedState state = ChannelsUpdatedState(
        channels: _buildInitialChannels(),
        numPending: 2,
      );

      // simulate a new incoming pending closing channel (close est123)
      state = state.copyWith(
        PendingClosingChannel(
          channel: PendingChannelData(
            capacity: Int64.parseInt('300'),
            channelPoint: ChannelPoint(fundingTxid: 'est123', outputIndex: 0),
          ),
        ),
      );

      expect(state.channels[0] is PendingOpenChannel, true);
      expect(state.channels[1] is PendingOpenChannel, true);
      expect(state.channels[2] is PendingClosingChannel, true);
      expect(state.channels[3], null);
      expect(state.channels[4] is EstablishedChannel, true);
    },
  );
  test(
    'should update state PendingOpen -> Established object correctly',
    () {
      ChannelsUpdatedState state = ChannelsUpdatedState(
        channels: _buildInitialChannels(),
        numPending: 2,
      );

      state = state.copyWith(
        EstablishedChannel(
          capacity: Int64.parseInt('100'),
          channelPoint: ChannelPoint(fundingTxid: 'pending123', outputIndex: 0),
        ),
      );

      expect(state.channels[0] is PendingOpenChannel, true);
      expect(state.channels[1], null);
      expect(state.channels[2] is EstablishedChannel, true);
      expect(state.channels[3] is EstablishedChannel, true);
      expect(state.channels[4] is EstablishedChannel, true);
    },
  );

  test(
    'should update state Established -> Established object correctly',
    () {
      ChannelsUpdatedState state = ChannelsUpdatedState(
        channels: _buildInitialChannels(),
        numPending: 2,
      );

      // simulate a balance change
      state = state.copyWith(
        EstablishedChannel(
          capacity: Int64.parseInt('400'),
          channelPoint: ChannelPoint(fundingTxid: 'est234', outputIndex: 1),
          localBalance: Int64.parseInt("50000"),
          remoteBalance: Int64.parseInt("50000"),
        ),
      );

      expect(state.channels[0] is PendingOpenChannel, true);
      expect(state.channels[1] is PendingOpenChannel, true);
      expect(state.channels[2], null);
      expect(state.channels[3] is EstablishedChannel, true);
      expect(state.channels[4] is EstablishedChannel, true);

      EstablishedChannel c = state.channels[4];
      expect(c.localBalance, Int64.parseInt("50000"));
      expect(c.remoteBalance, Int64.parseInt("50000"));
    },
  );
}
