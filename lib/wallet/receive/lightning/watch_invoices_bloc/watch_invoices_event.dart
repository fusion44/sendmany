import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class WatchInvoicesEvent extends Equatable {
  WatchInvoicesEvent([List props = const <dynamic>[]]) : super(props);
}
