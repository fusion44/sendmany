import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ListChannelsEvent extends Equatable {}

@immutable
class LoadChannelList extends ListChannelsEvent {
  final bool forceReload;

  LoadChannelList([this.forceReload = false]);

  @override
  List<Object> get props => const [];
}
