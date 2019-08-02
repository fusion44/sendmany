import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class LnInfoEvent extends Equatable {
  LnInfoEvent([List props = const []]) : super(props);
}

class LoadLnInfo extends LnInfoEvent {}
