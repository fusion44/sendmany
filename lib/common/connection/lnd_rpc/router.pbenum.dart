///
//  Generated code. Do not modify.
//  source: router.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type

// ignore_for_file: UNDEFINED_SHOWN_NAME,UNUSED_SHOWN_NAME
import 'dart:core' as $core;
import 'package:protobuf/protobuf.dart' as $pb;

class PaymentState extends $pb.ProtobufEnum {
  static const PaymentState IN_FLIGHT = PaymentState._(0, 'IN_FLIGHT');
  static const PaymentState SUCCEEDED = PaymentState._(1, 'SUCCEEDED');
  static const PaymentState FAILED_TIMEOUT =
      PaymentState._(2, 'FAILED_TIMEOUT');
  static const PaymentState FAILED_NO_ROUTE =
      PaymentState._(3, 'FAILED_NO_ROUTE');
  static const PaymentState FAILED_ERROR = PaymentState._(4, 'FAILED_ERROR');
  static const PaymentState FAILED_INCORRECT_PAYMENT_DETAILS =
      PaymentState._(5, 'FAILED_INCORRECT_PAYMENT_DETAILS');
  static const PaymentState FAILED_INSUFFICIENT_BALANCE =
      PaymentState._(6, 'FAILED_INSUFFICIENT_BALANCE');

  static const $core.List<PaymentState> values = <PaymentState>[
    IN_FLIGHT,
    SUCCEEDED,
    FAILED_TIMEOUT,
    FAILED_NO_ROUTE,
    FAILED_ERROR,
    FAILED_INCORRECT_PAYMENT_DETAILS,
    FAILED_INSUFFICIENT_BALANCE,
  ];

  static final $core.Map<$core.int, PaymentState> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static PaymentState valueOf($core.int value) => _byValue[value];

  const PaymentState._($core.int v, $core.String n) : super(v, n);
}

class Failure_FailureCode extends $pb.ProtobufEnum {
  static const Failure_FailureCode RESERVED =
      Failure_FailureCode._(0, 'RESERVED');
  static const Failure_FailureCode INCORRECT_OR_UNKNOWN_PAYMENT_DETAILS =
      Failure_FailureCode._(1, 'INCORRECT_OR_UNKNOWN_PAYMENT_DETAILS');
  static const Failure_FailureCode INCORRECT_PAYMENT_AMOUNT =
      Failure_FailureCode._(2, 'INCORRECT_PAYMENT_AMOUNT');
  static const Failure_FailureCode FINAL_INCORRECT_CLTV_EXPIRY =
      Failure_FailureCode._(3, 'FINAL_INCORRECT_CLTV_EXPIRY');
  static const Failure_FailureCode FINAL_INCORRECT_HTLC_AMOUNT =
      Failure_FailureCode._(4, 'FINAL_INCORRECT_HTLC_AMOUNT');
  static const Failure_FailureCode FINAL_EXPIRY_TOO_SOON =
      Failure_FailureCode._(5, 'FINAL_EXPIRY_TOO_SOON');
  static const Failure_FailureCode INVALID_REALM =
      Failure_FailureCode._(6, 'INVALID_REALM');
  static const Failure_FailureCode EXPIRY_TOO_SOON =
      Failure_FailureCode._(7, 'EXPIRY_TOO_SOON');
  static const Failure_FailureCode INVALID_ONION_VERSION =
      Failure_FailureCode._(8, 'INVALID_ONION_VERSION');
  static const Failure_FailureCode INVALID_ONION_HMAC =
      Failure_FailureCode._(9, 'INVALID_ONION_HMAC');
  static const Failure_FailureCode INVALID_ONION_KEY =
      Failure_FailureCode._(10, 'INVALID_ONION_KEY');
  static const Failure_FailureCode AMOUNT_BELOW_MINIMUM =
      Failure_FailureCode._(11, 'AMOUNT_BELOW_MINIMUM');
  static const Failure_FailureCode FEE_INSUFFICIENT =
      Failure_FailureCode._(12, 'FEE_INSUFFICIENT');
  static const Failure_FailureCode INCORRECT_CLTV_EXPIRY =
      Failure_FailureCode._(13, 'INCORRECT_CLTV_EXPIRY');
  static const Failure_FailureCode CHANNEL_DISABLED =
      Failure_FailureCode._(14, 'CHANNEL_DISABLED');
  static const Failure_FailureCode TEMPORARY_CHANNEL_FAILURE =
      Failure_FailureCode._(15, 'TEMPORARY_CHANNEL_FAILURE');
  static const Failure_FailureCode REQUIRED_NODE_FEATURE_MISSING =
      Failure_FailureCode._(16, 'REQUIRED_NODE_FEATURE_MISSING');
  static const Failure_FailureCode REQUIRED_CHANNEL_FEATURE_MISSING =
      Failure_FailureCode._(17, 'REQUIRED_CHANNEL_FEATURE_MISSING');
  static const Failure_FailureCode UNKNOWN_NEXT_PEER =
      Failure_FailureCode._(18, 'UNKNOWN_NEXT_PEER');
  static const Failure_FailureCode TEMPORARY_NODE_FAILURE =
      Failure_FailureCode._(19, 'TEMPORARY_NODE_FAILURE');
  static const Failure_FailureCode PERMANENT_NODE_FAILURE =
      Failure_FailureCode._(20, 'PERMANENT_NODE_FAILURE');
  static const Failure_FailureCode PERMANENT_CHANNEL_FAILURE =
      Failure_FailureCode._(21, 'PERMANENT_CHANNEL_FAILURE');
  static const Failure_FailureCode EXPIRY_TOO_FAR =
      Failure_FailureCode._(22, 'EXPIRY_TOO_FAR');
  static const Failure_FailureCode MPP_TIMEOUT =
      Failure_FailureCode._(23, 'MPP_TIMEOUT');
  static const Failure_FailureCode UNKNOWN_FAILURE =
      Failure_FailureCode._(998, 'UNKNOWN_FAILURE');
  static const Failure_FailureCode UNREADABLE_FAILURE =
      Failure_FailureCode._(999, 'UNREADABLE_FAILURE');

  static const $core.List<Failure_FailureCode> values = <Failure_FailureCode>[
    RESERVED,
    INCORRECT_OR_UNKNOWN_PAYMENT_DETAILS,
    INCORRECT_PAYMENT_AMOUNT,
    FINAL_INCORRECT_CLTV_EXPIRY,
    FINAL_INCORRECT_HTLC_AMOUNT,
    FINAL_EXPIRY_TOO_SOON,
    INVALID_REALM,
    EXPIRY_TOO_SOON,
    INVALID_ONION_VERSION,
    INVALID_ONION_HMAC,
    INVALID_ONION_KEY,
    AMOUNT_BELOW_MINIMUM,
    FEE_INSUFFICIENT,
    INCORRECT_CLTV_EXPIRY,
    CHANNEL_DISABLED,
    TEMPORARY_CHANNEL_FAILURE,
    REQUIRED_NODE_FEATURE_MISSING,
    REQUIRED_CHANNEL_FEATURE_MISSING,
    UNKNOWN_NEXT_PEER,
    TEMPORARY_NODE_FAILURE,
    PERMANENT_NODE_FAILURE,
    PERMANENT_CHANNEL_FAILURE,
    EXPIRY_TOO_FAR,
    MPP_TIMEOUT,
    UNKNOWN_FAILURE,
    UNREADABLE_FAILURE,
  ];

  static final $core.Map<$core.int, Failure_FailureCode> _byValue =
      $pb.ProtobufEnum.initByValue(values);
  static Failure_FailureCode valueOf($core.int value) => _byValue[value];

  const Failure_FailureCode._($core.int v, $core.String n) : super(v, n);
}
