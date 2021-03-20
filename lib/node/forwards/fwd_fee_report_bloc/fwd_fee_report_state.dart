part of 'fwd_fee_report_bloc.dart';

abstract class FwdFeeReportState extends Equatable {
  const FwdFeeReportState();

  @override
  List<Object> get props => [];
}

class FeeReportInitial extends FwdFeeReportState {}

class FeeReportLoadedState extends FwdFeeReportState {
  final FwdFeeReport feeReport;

  FeeReportLoadedState(this.feeReport);
}

class FeeReportLoadErrorState extends FwdFeeReportState {
  final Map<String, String> errors;

  FeeReportLoadErrorState(this.errors);

  @override
  List<Object> get props => [errors];
}
