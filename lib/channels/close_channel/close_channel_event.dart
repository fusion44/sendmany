import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';

import '../../common/models/models.dart';

@immutable
abstract class CloseChannelBaseEvent {
  /// The ChannelPoint
  final ChannelPoint channelPoint;
  const CloseChannelBaseEvent(this.channelPoint);
}

@immutable
class CloseChannelEvent extends CloseChannelBaseEvent {
  /// The amount of fees paid for the closing transaction.
  /// Only one of satPerByte or blockTarget must be set.
  final Int64 satPerByte;

  /// The target in blocks from now for which  automatic fees will be chosen.
  /// Only one of satPerByte or blockTarget must be set
  final int blockTarget;

  /// Whether the channel should be force closed.
  /// This is normally only necessary, if the channel partner is offline and
  /// a cooperative close is not possible.
  final bool force;

  /// Optional external delivery address.
  final String deliveryAddress;

  CloseChannelEvent(
    ChannelPoint channelPoint, {
    this.satPerByte,
    this.blockTarget,
    this.force,
    this.deliveryAddress,
  })  : assert(channelPoint != null),
        assert(satPerByte == null || blockTarget == null),
        super(channelPoint);
}
