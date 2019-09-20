import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

enum AddressType { witnessPubkeyHash, nestedPubkeyHash }

@immutable
class NewAddressEvent extends Equatable {
  final AddressType addressType;

  NewAddressEvent([
    this.addressType = AddressType.witnessPubkeyHash,
  ]) : super([addressType]);
}
