import 'package:fixnum/fixnum.dart';
import 'package:meta/meta.dart';

@immutable
class GetChanInfoEvent {
  final Int64 chanId;

  GetChanInfoEvent(this.chanId);
}
