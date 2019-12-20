import 'package:fixnum/fixnum.dart';
import 'package:sendmany/common/models/channels/htlc.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as grpc;
import 'package:sendmany/common/models/models.dart';

import 'channel.dart';

class EstablishedChannel extends Channel {
  /// Whether this channel is active or not
  final bool active;

  /// The identity pubkey of the remote node
  final String remotePubkey;

  /// The unique channel ID for the channel. The first 3 bytes
  /// are the block height, the next 3 the index within the block,
  /// and the last 2 bytes are the output index for the channel.
  final Int64 chanId;

  /// The total amount of funds held in this channel
  final Int64 capacity;

  /// This node's current balance in this channel
  final Int64 localBalance;

  /// The counterparty's current balance in this channel
  final Int64 remoteBalance;

  /// The amount calculated to be paid in fees for the
  /// current set of commitment transactions. The fee
  /// amount is persisted with the channel in order to
  /// allow the fee amount to be removed and recalculated
  /// with each channel state update, including updates
  /// that happen after a system restart.
  final Int64 commitFee;

  /// The weight of the commitment transaction
  final Int64 commitWeight;

  /// The required number of satoshis per kilo-weight
  /// that the requester will pay at all times, for
  /// both the funding transaction and commitment transaction.
  /// This value can later be updated once the channel is open.
  final Int64 feePerKw;

  /// The unsettled balance in this channel
  final Int64 unsettledBalance;

  /// The total number of satoshis we've sent within this channel.
  final Int64 totalSatoshisSent;

  /// The total number of satoshis we've received within this channel.
  final Int64 totalSatoshisReceived;

  /// The total number of updates conducted within this channel.
  final Int64 numUpdates;

  /// The list of active, uncleared HTLCs currently pending within the
  /// channel.
  final List<HTLC> pendingHtlcs;

  /// The CSV delay expressed in relative blocks. If the channel is force
  /// closed, we will need to wait for this many blocks before we can regain
  /// our funds.
  final int csvDelay;

  /// Whether this channel is advertised to the network or not.
  final bool private;

  /// True if we were the ones that created the channel.
  final bool initiator;

  /// A set of flags showing the current state of the channel.
  final String chanStatusFlags;

  /// The minimum satoshis this node is required to reserve in its balance.
  final Int64 localChanReserveSat;

  /// The minimum satoshis the other node is required to reserve in its balance.
  final Int64 remoteChanReserveSat;

  /// If true, then this channel uses the modern commitment format where
  /// the key in the output of the remote party does not change each state.
  /// This makes back up and recovery easier as when the channel is closed,
  /// the funds go directly to that key.
  final bool staticRemoteKey;

  EstablishedChannel({
    this.active,
    this.remotePubkey,
    ChannelPoint channelPoint,
    this.chanId,
    this.capacity,
    this.localBalance,
    this.remoteBalance,
    this.commitFee,
    this.commitWeight,
    this.feePerKw,
    this.unsettledBalance,
    this.totalSatoshisSent,
    this.totalSatoshisReceived,
    this.numUpdates,
    this.pendingHtlcs,
    this.csvDelay,
    this.private,
    this.initiator,
    this.chanStatusFlags,
    this.localChanReserveSat,
    this.remoteChanReserveSat,
    this.staticRemoteKey,
  }) : super(channelPoint);

  static EstablishedChannel fromGRPC(grpc.Channel c) {
    var pendingHtlcs = <HTLC>[];
    if (c.pendingHtlcs != null) {
      c.pendingHtlcs.forEach((htlc) {
        pendingHtlcs.add(HTLC.fromGRPC(htlc));
      });
    }

    return EstablishedChannel(
      active: c.active,
      remotePubkey: c.remotePubkey,
      channelPoint: ChannelPoint.fromString(c.channelPoint),
      chanId: c.chanId,
      capacity: c.capacity,
      localBalance: c.localBalance,
      remoteBalance: c.remoteBalance,
      commitFee: c.commitFee,
      commitWeight: c.commitWeight,
      feePerKw: c.feePerKw,
      unsettledBalance: c.unsettledBalance,
      totalSatoshisSent: c.totalSatoshisSent,
      totalSatoshisReceived: c.totalSatoshisReceived,
      numUpdates: c.numUpdates,
      pendingHtlcs: pendingHtlcs,
      csvDelay: c.csvDelay,
      private: c.private,
      initiator: c.initiator,
      chanStatusFlags: c.chanStatusFlags,
      localChanReserveSat: c.localChanReserveSat,
      remoteChanReserveSat: c.remoteChanReserveSat,
      staticRemoteKey: c.staticRemoteKey,
    );
  }

  EstablishedChannel copyWith({
    active,
    remotePubkey,
    channelPoint,
    chanId,
    capacity,
    localBalance,
    remoteBalance,
    commitFee,
    commitWeight,
    feePerKw,
    unsettledBalance,
    totalSatoshisSent,
    totalSatoshisReceived,
    numUpdates,
    pendingHtlcs,
    csvDelay,
    private,
    initiator,
    chanStatusFlags,
    localChanReserveSat,
    remoteChanReserveSat,
    staticRemoteKey,
  }) {
    return EstablishedChannel(
      active: active ?? this.active,
      remotePubkey: remotePubkey ?? this.remotePubkey,
      channelPoint: channelPoint ?? this.channelPoint,
      chanId: chanId ?? this.chanId,
      capacity: capacity ?? this.capacity,
      localBalance: localBalance ?? this.localBalance,
      remoteBalance: remoteBalance ?? this.remoteBalance,
      commitFee: commitFee ?? this.commitFee,
      commitWeight: commitWeight ?? this.commitWeight,
      feePerKw: feePerKw ?? this.feePerKw,
      unsettledBalance: unsettledBalance ?? this.unsettledBalance,
      totalSatoshisSent: totalSatoshisSent ?? this.totalSatoshisSent,
      totalSatoshisReceived:
          totalSatoshisReceived ?? this.totalSatoshisReceived,
      numUpdates: numUpdates ?? this.numUpdates,
      pendingHtlcs: pendingHtlcs ?? this.pendingHtlcs,
      csvDelay: csvDelay ?? this.csvDelay,
      private: private ?? this.private,
      initiator: initiator ?? this.initiator,
      chanStatusFlags: chanStatusFlags ?? this.chanStatusFlags,
      localChanReserveSat: localChanReserveSat ?? this.localChanReserveSat,
      remoteChanReserveSat: remoteChanReserveSat ?? this.remoteChanReserveSat,
      staticRemoteKey: staticRemoteKey ?? this.staticRemoteKey,
    );
  }
}
