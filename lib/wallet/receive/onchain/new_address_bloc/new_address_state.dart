import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class NewAddressState extends Equatable {}

class InitialNewAddressState extends NewAddressState {
  @override
  List<Object> get props => const [];
}

class LoadingNewAddressState extends NewAddressState {
  @override
  List<Object> get props => const [];
}

class ReceivedNewAddressState extends NewAddressState {
  final String address;

  ReceivedNewAddressState(this.address);

  @override
  List<Object> get props => [address];
}

class NewAddressErrorState extends NewAddressState {
  final String errorMessage;
  final int errorId;

  NewAddressErrorState(this.errorMessage, [this.errorId = 0]);

  @override
  List<Object> get props => [errorMessage, errorId];
}
