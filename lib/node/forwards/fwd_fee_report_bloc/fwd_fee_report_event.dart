part of 'fwd_fee_report_bloc.dart';

abstract class FwdFeeReportEvent extends Equatable {
  const FwdFeeReportEvent();

  @override
  List<Object> get props => [];
}

class FwdLoadFeeReportEvent extends FwdFeeReportEvent {}
