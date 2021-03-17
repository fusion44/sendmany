///
//  Generated code. Do not modify.
//  source: routerrpc/router.proto
//
// @dart = 2.7
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields

// ignore_for_file: UNDEFINED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class FailureDetail extends $pb.ProtobufEnum {
  static const FailureDetail UNKNOWN = FailureDetail._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const FailureDetail NO_DETAIL = FailureDetail._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'NO_DETAIL');
  static const FailureDetail ONION_DECODE = FailureDetail._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ONION_DECODE');
  static const FailureDetail LINK_NOT_ELIGIBLE = FailureDetail._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'LINK_NOT_ELIGIBLE');
  static const FailureDetail ON_CHAIN_TIMEOUT = FailureDetail._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ON_CHAIN_TIMEOUT');
  static const FailureDetail HTLC_EXCEEDS_MAX = FailureDetail._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HTLC_EXCEEDS_MAX');
  static const FailureDetail INSUFFICIENT_BALANCE = FailureDetail._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INSUFFICIENT_BALANCE');
  static const FailureDetail INCOMPLETE_FORWARD = FailureDetail._(7, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INCOMPLETE_FORWARD');
  static const FailureDetail HTLC_ADD_FAILED = FailureDetail._(8, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'HTLC_ADD_FAILED');
  static const FailureDetail FORWARDS_DISABLED = FailureDetail._(9, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FORWARDS_DISABLED');
  static const FailureDetail INVOICE_CANCELED = FailureDetail._(10, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVOICE_CANCELED');
  static const FailureDetail INVOICE_UNDERPAID = FailureDetail._(11, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVOICE_UNDERPAID');
  static const FailureDetail INVOICE_EXPIRY_TOO_SOON = FailureDetail._(12, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVOICE_EXPIRY_TOO_SOON');
  static const FailureDetail INVOICE_NOT_OPEN = FailureDetail._(13, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVOICE_NOT_OPEN');
  static const FailureDetail MPP_INVOICE_TIMEOUT = FailureDetail._(14, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MPP_INVOICE_TIMEOUT');
  static const FailureDetail ADDRESS_MISMATCH = FailureDetail._(15, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'ADDRESS_MISMATCH');
  static const FailureDetail SET_TOTAL_MISMATCH = FailureDetail._(16, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SET_TOTAL_MISMATCH');
  static const FailureDetail SET_TOTAL_TOO_LOW = FailureDetail._(17, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SET_TOTAL_TOO_LOW');
  static const FailureDetail SET_OVERPAID = FailureDetail._(18, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SET_OVERPAID');
  static const FailureDetail UNKNOWN_INVOICE = FailureDetail._(19, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN_INVOICE');
  static const FailureDetail INVALID_KEYSEND = FailureDetail._(20, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'INVALID_KEYSEND');
  static const FailureDetail MPP_IN_PROGRESS = FailureDetail._(21, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'MPP_IN_PROGRESS');
  static const FailureDetail CIRCULAR_ROUTE = FailureDetail._(22, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'CIRCULAR_ROUTE');

  static const $core.List<FailureDetail> values = <FailureDetail> [
    UNKNOWN,
    NO_DETAIL,
    ONION_DECODE,
    LINK_NOT_ELIGIBLE,
    ON_CHAIN_TIMEOUT,
    HTLC_EXCEEDS_MAX,
    INSUFFICIENT_BALANCE,
    INCOMPLETE_FORWARD,
    HTLC_ADD_FAILED,
    FORWARDS_DISABLED,
    INVOICE_CANCELED,
    INVOICE_UNDERPAID,
    INVOICE_EXPIRY_TOO_SOON,
    INVOICE_NOT_OPEN,
    MPP_INVOICE_TIMEOUT,
    ADDRESS_MISMATCH,
    SET_TOTAL_MISMATCH,
    SET_TOTAL_TOO_LOW,
    SET_OVERPAID,
    UNKNOWN_INVOICE,
    INVALID_KEYSEND,
    MPP_IN_PROGRESS,
    CIRCULAR_ROUTE,
  ];

  static final $core.Map<$core.int, FailureDetail> _byValue = $pb.ProtobufEnum.initByValue(values);
  static FailureDetail valueOf($core.int value) => _byValue[value];

  const FailureDetail._($core.int v, $core.String n) : super(v, n);
}

class PaymentState extends $pb.ProtobufEnum {
  static const PaymentState IN_FLIGHT = PaymentState._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'IN_FLIGHT');
  static const PaymentState SUCCEEDED = PaymentState._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SUCCEEDED');
  static const PaymentState FAILED_TIMEOUT = PaymentState._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILED_TIMEOUT');
  static const PaymentState FAILED_NO_ROUTE = PaymentState._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILED_NO_ROUTE');
  static const PaymentState FAILED_ERROR = PaymentState._(4, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILED_ERROR');
  static const PaymentState FAILED_INCORRECT_PAYMENT_DETAILS = PaymentState._(5, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILED_INCORRECT_PAYMENT_DETAILS');
  static const PaymentState FAILED_INSUFFICIENT_BALANCE = PaymentState._(6, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAILED_INSUFFICIENT_BALANCE');

  static const $core.List<PaymentState> values = <PaymentState> [
    IN_FLIGHT,
    SUCCEEDED,
    FAILED_TIMEOUT,
    FAILED_NO_ROUTE,
    FAILED_ERROR,
    FAILED_INCORRECT_PAYMENT_DETAILS,
    FAILED_INSUFFICIENT_BALANCE,
  ];

  static final $core.Map<$core.int, PaymentState> _byValue = $pb.ProtobufEnum.initByValue(values);
  static PaymentState valueOf($core.int value) => _byValue[value];

  const PaymentState._($core.int v, $core.String n) : super(v, n);
}

class ResolveHoldForwardAction extends $pb.ProtobufEnum {
  static const ResolveHoldForwardAction SETTLE = ResolveHoldForwardAction._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SETTLE');
  static const ResolveHoldForwardAction FAIL = ResolveHoldForwardAction._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FAIL');
  static const ResolveHoldForwardAction RESUME = ResolveHoldForwardAction._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RESUME');

  static const $core.List<ResolveHoldForwardAction> values = <ResolveHoldForwardAction> [
    SETTLE,
    FAIL,
    RESUME,
  ];

  static final $core.Map<$core.int, ResolveHoldForwardAction> _byValue = $pb.ProtobufEnum.initByValue(values);
  static ResolveHoldForwardAction valueOf($core.int value) => _byValue[value];

  const ResolveHoldForwardAction._($core.int v, $core.String n) : super(v, n);
}

class HtlcEvent_EventType extends $pb.ProtobufEnum {
  static const HtlcEvent_EventType UNKNOWN = HtlcEvent_EventType._(0, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'UNKNOWN');
  static const HtlcEvent_EventType SEND = HtlcEvent_EventType._(1, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'SEND');
  static const HtlcEvent_EventType RECEIVE = HtlcEvent_EventType._(2, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'RECEIVE');
  static const HtlcEvent_EventType FORWARD = HtlcEvent_EventType._(3, const $core.bool.fromEnvironment('protobuf.omit_enum_names') ? '' : 'FORWARD');

  static const $core.List<HtlcEvent_EventType> values = <HtlcEvent_EventType> [
    UNKNOWN,
    SEND,
    RECEIVE,
    FORWARD,
  ];

  static final $core.Map<$core.int, HtlcEvent_EventType> _byValue = $pb.ProtobufEnum.initByValue(values);
  static HtlcEvent_EventType valueOf($core.int value) => _byValue[value];

  const HtlcEvent_EventType._($core.int v, $core.String n) : super(v, n);
}

