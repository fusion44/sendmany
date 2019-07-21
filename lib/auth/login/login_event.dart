import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  LoginEvent([List props = const []]) : super(props);
}

class LoginButtonPressed extends LoginEvent {
  final List<int> pin;

  LoginButtonPressed({
    @required this.pin,
  }) : super([pin]);

  @override
  String toString() => 'LoginButtonPressed';
}
