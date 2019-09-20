import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class NewAddressState extends Equatable {
  NewAddressState([List props = const <dynamic>[]]) : super(props);
}

class InitialNewAddressState extends NewAddressState {}

class LoadingNewAddressState extends NewAddressState {}

class ReceivedNewAddressState extends NewAddressState {
  final String address;

  ReceivedNewAddressState(this.address) : super([address]);
}

class NewAddressErrorState extends NewAddressState {
  final String errorMessage;
  final int errorId;

  NewAddressErrorState(this.errorMessage, [this.errorId = 0])
      : super([errorMessage, errorId]);
}
