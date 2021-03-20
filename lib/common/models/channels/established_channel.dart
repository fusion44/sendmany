import 'package:fixnum/fixnum.dart';

import '../../connection/lnd_rpc/lnd_rpc.dart' as grpc;
import '../models.dart';
import 'channel.dart';
import 'htlc.dart';

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

  /// Whether this channel is advertised to the network or not.
  final bool private;

  /// True if we were the ones that created the channel.
  final bool initiator;

  /// A set of flags showing the current state of the channel.
  final String chanStatusFlags;

  /// The number of seconds that the channel has been monitored by the channel
  /// scoring system. Scores are currently not persisted, so this value may
  /// be less than the lifetime of the channel [EXPERIMENTAL].
  final Int64 lifetime;

  /// The number of seconds that the remote peer has been observed as being
  /// online by the channel scoring system over the lifetime of the channel
  /// (EXPERIMENTAL).
  final Int64 uptime;

  /// Close address is the address that we will enforce payout to on cooperative
  /// close if the channel was opened utilizing option upfront shutdown. This
  /// value can be set on channel open by setting close_address in an open channel
  /// request. If this value is not set, you can still choose a payout address by
  /// cooperatively closing with the delivery_address field set.
  final String closeAddress;

  ///	The amount that the initiator of the channel optionally pushed to the
  /// remote party on channel open. This amount will be zero if the channel
  /// initiator did not push any funds to the remote peer. If the initiator
  /// field is true, we pushed this amount to our peer, if it is false, the
  /// remote peer pushed this amount to us.
  final Int64 pushAmountSat;

  /// This uint32 indicates if this channel is to be considered 'frozen'.
  /// A frozen channel doest not allow a cooperative channel close by the
  /// initiator. The thaw_height is the height that this restriction stops
  /// applying to the channel. This field is optional, not setting it or
  /// using a value of zero will mean the channel has no additional restrictions.
  /// The height can be interpreted in two ways: as a relative height if the
  /// value is less than 500,000, or as an absolute height otherwise.
  final int thawHeight;

  /// List constraints for the local node.
  final ChannelConstraints localConstraints;

  /// List constraints for the remote node.
  final ChannelConstraints remoteConstraints;

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
    this.private,
    this.initiator,
    this.chanStatusFlags,
    this.lifetime,
    this.uptime,
    this.closeAddress,
    this.pushAmountSat,
    this.thawHeight,
    this.localConstraints,
    this.remoteConstraints,
    RemoteNodeInfo remoteNodeInfo,
  }) : super(channelPoint, remoteNodeInfo);

  static EstablishedChannel fromGRPC(
    grpc.Channel c, [
    RemoteNodeInfo remoteNodeInfo,
  ]) {
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
      private: c.private,
      initiator: c.initiator,
      chanStatusFlags: c.chanStatusFlags,
      lifetime: c.lifetime,
      uptime: c.uptime,
      closeAddress: c.closeAddress,
      pushAmountSat: c.pushAmountSat,
      thawHeight: c.thawHeight,
      localConstraints: ChannelConstraints.fromGrpc(c.localConstraints),
      remoteConstraints: ChannelConstraints.fromGrpc(c.remoteConstraints),
      remoteNodeInfo: remoteNodeInfo,
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
    lifetime,
    uptime,
    closeAddress,
    pushAmountSat,
    thawHeight,
    localConstraints,
    remoteConstraints,
    remoteNodeInfo,
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
      private: private ?? this.private,
      initiator: initiator ?? this.initiator,
      chanStatusFlags: chanStatusFlags ?? this.chanStatusFlags,
      lifetime: lifetime ?? this.lifetime,
      uptime: uptime ?? this.uptime,
      closeAddress: closeAddress ?? this.closeAddress,
      pushAmountSat: pushAmountSat ?? this.pushAmountSat,
      thawHeight: thawHeight ?? this.thawHeight,
      localConstraints: localConstraints ?? this.localConstraints,
      remoteConstraints: remoteConstraints ?? this.remoteConstraints,
      remoteNodeInfo: remoteNodeInfo ?? this.remoteNodeInfo,
    );
  }
}
