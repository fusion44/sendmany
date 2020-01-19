///
//  Generated code. Do not modify.
//  source: router.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_const

const PaymentState$json = const {
  '1': 'PaymentState',
  '2': const [
    const {'1': 'IN_FLIGHT', '2': 0},
    const {'1': 'SUCCEEDED', '2': 1},
    const {'1': 'FAILED_TIMEOUT', '2': 2},
    const {'1': 'FAILED_NO_ROUTE', '2': 3},
    const {'1': 'FAILED_ERROR', '2': 4},
    const {'1': 'FAILED_INCORRECT_PAYMENT_DETAILS', '2': 5},
    const {'1': 'FAILED_INSUFFICIENT_BALANCE', '2': 6},
  ],
};

const SendPaymentRequest$json = const {
  '1': 'SendPaymentRequest',
  '2': const [
    const {'1': 'dest', '3': 1, '4': 1, '5': 12, '10': 'dest'},
    const {'1': 'amt', '3': 2, '4': 1, '5': 3, '10': 'amt'},
    const {'1': 'amt_msat', '3': 12, '4': 1, '5': 3, '10': 'amtMsat'},
    const {'1': 'payment_hash', '3': 3, '4': 1, '5': 12, '10': 'paymentHash'},
    const {
      '1': 'final_cltv_delta',
      '3': 4,
      '4': 1,
      '5': 5,
      '10': 'finalCltvDelta'
    },
    const {
      '1': 'payment_request',
      '3': 5,
      '4': 1,
      '5': 9,
      '10': 'paymentRequest'
    },
    const {
      '1': 'timeout_seconds',
      '3': 6,
      '4': 1,
      '5': 5,
      '10': 'timeoutSeconds'
    },
    const {'1': 'fee_limit_sat', '3': 7, '4': 1, '5': 3, '10': 'feeLimitSat'},
    const {
      '1': 'fee_limit_msat',
      '3': 13,
      '4': 1,
      '5': 3,
      '10': 'feeLimitMsat'
    },
    const {
      '1': 'outgoing_chan_id',
      '3': 8,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'outgoingChanId',
    },
    const {
      '1': 'last_hop_pubkey',
      '3': 14,
      '4': 1,
      '5': 12,
      '10': 'lastHopPubkey'
    },
    const {'1': 'cltv_limit', '3': 9, '4': 1, '5': 5, '10': 'cltvLimit'},
    const {
      '1': 'route_hints',
      '3': 10,
      '4': 3,
      '5': 11,
      '6': '.lnrpc.RouteHint',
      '10': 'route_hints'
    },
    const {
      '1': 'dest_custom_records',
      '3': 11,
      '4': 3,
      '5': 11,
      '6': '.routerrpc.SendPaymentRequest.DestCustomRecordsEntry',
      '10': 'destCustomRecords'
    },
    const {
      '1': 'allow_self_payment',
      '3': 15,
      '4': 1,
      '5': 8,
      '10': 'allowSelfPayment'
    },
    const {
      '1': 'dest_features',
      '3': 16,
      '4': 3,
      '5': 14,
      '6': '.lnrpc.FeatureBit',
      '10': 'destFeatures'
    },
  ],
  '3': const [SendPaymentRequest_DestCustomRecordsEntry$json],
};

const SendPaymentRequest_DestCustomRecordsEntry$json = const {
  '1': 'DestCustomRecordsEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 4, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 12, '10': 'value'},
  ],
  '7': const {'7': true},
};

const TrackPaymentRequest$json = const {
  '1': 'TrackPaymentRequest',
  '2': const [
    const {'1': 'payment_hash', '3': 1, '4': 1, '5': 12, '10': 'paymentHash'},
  ],
};

const PaymentStatus$json = const {
  '1': 'PaymentStatus',
  '2': const [
    const {
      '1': 'state',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.routerrpc.PaymentState',
      '10': 'state'
    },
    const {'1': 'preimage', '3': 2, '4': 1, '5': 12, '10': 'preimage'},
    const {
      '1': 'route',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.lnrpc.Route',
      '10': 'route'
    },
    const {
      '1': 'htlcs',
      '3': 4,
      '4': 3,
      '5': 11,
      '6': '.lnrpc.HTLCAttempt',
      '10': 'htlcs'
    },
  ],
};

const RouteFeeRequest$json = const {
  '1': 'RouteFeeRequest',
  '2': const [
    const {'1': 'dest', '3': 1, '4': 1, '5': 12, '10': 'dest'},
    const {'1': 'amt_sat', '3': 2, '4': 1, '5': 3, '10': 'amtSat'},
  ],
};

const RouteFeeResponse$json = const {
  '1': 'RouteFeeResponse',
  '2': const [
    const {
      '1': 'routing_fee_msat',
      '3': 1,
      '4': 1,
      '5': 3,
      '10': 'routingFeeMsat'
    },
    const {
      '1': 'time_lock_delay',
      '3': 2,
      '4': 1,
      '5': 3,
      '10': 'timeLockDelay'
    },
  ],
};

const SendToRouteRequest$json = const {
  '1': 'SendToRouteRequest',
  '2': const [
    const {'1': 'payment_hash', '3': 1, '4': 1, '5': 12, '10': 'paymentHash'},
    const {
      '1': 'route',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.lnrpc.Route',
      '10': 'route'
    },
  ],
};

const SendToRouteResponse$json = const {
  '1': 'SendToRouteResponse',
  '2': const [
    const {'1': 'preimage', '3': 1, '4': 1, '5': 12, '10': 'preimage'},
    const {
      '1': 'failure',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.routerrpc.Failure',
      '10': 'failure'
    },
  ],
};

const Failure$json = const {
  '1': 'Failure',
  '2': const [
    const {
      '1': 'code',
      '3': 1,
      '4': 1,
      '5': 14,
      '6': '.routerrpc.Failure.FailureCode',
      '10': 'code'
    },
    const {
      '1': 'channel_update',
      '3': 3,
      '4': 1,
      '5': 11,
      '6': '.routerrpc.ChannelUpdate',
      '10': 'channelUpdate'
    },
    const {'1': 'htlc_msat', '3': 4, '4': 1, '5': 4, '10': 'htlcMsat'},
    const {'1': 'onion_sha_256', '3': 5, '4': 1, '5': 12, '10': 'onionSha256'},
    const {'1': 'cltv_expiry', '3': 6, '4': 1, '5': 13, '10': 'cltvExpiry'},
    const {'1': 'flags', '3': 7, '4': 1, '5': 13, '10': 'flags'},
    const {
      '1': 'failure_source_index',
      '3': 8,
      '4': 1,
      '5': 13,
      '10': 'failureSourceIndex'
    },
    const {'1': 'height', '3': 9, '4': 1, '5': 13, '10': 'height'},
  ],
  '4': const [Failure_FailureCode$json],
  '9': const [
    const {'1': 2, '2': 3},
  ],
};

const Failure_FailureCode$json = const {
  '1': 'FailureCode',
  '2': const [
    const {'1': 'RESERVED', '2': 0},
    const {'1': 'INCORRECT_OR_UNKNOWN_PAYMENT_DETAILS', '2': 1},
    const {'1': 'INCORRECT_PAYMENT_AMOUNT', '2': 2},
    const {'1': 'FINAL_INCORRECT_CLTV_EXPIRY', '2': 3},
    const {'1': 'FINAL_INCORRECT_HTLC_AMOUNT', '2': 4},
    const {'1': 'FINAL_EXPIRY_TOO_SOON', '2': 5},
    const {'1': 'INVALID_REALM', '2': 6},
    const {'1': 'EXPIRY_TOO_SOON', '2': 7},
    const {'1': 'INVALID_ONION_VERSION', '2': 8},
    const {'1': 'INVALID_ONION_HMAC', '2': 9},
    const {'1': 'INVALID_ONION_KEY', '2': 10},
    const {'1': 'AMOUNT_BELOW_MINIMUM', '2': 11},
    const {'1': 'FEE_INSUFFICIENT', '2': 12},
    const {'1': 'INCORRECT_CLTV_EXPIRY', '2': 13},
    const {'1': 'CHANNEL_DISABLED', '2': 14},
    const {'1': 'TEMPORARY_CHANNEL_FAILURE', '2': 15},
    const {'1': 'REQUIRED_NODE_FEATURE_MISSING', '2': 16},
    const {'1': 'REQUIRED_CHANNEL_FEATURE_MISSING', '2': 17},
    const {'1': 'UNKNOWN_NEXT_PEER', '2': 18},
    const {'1': 'TEMPORARY_NODE_FAILURE', '2': 19},
    const {'1': 'PERMANENT_NODE_FAILURE', '2': 20},
    const {'1': 'PERMANENT_CHANNEL_FAILURE', '2': 21},
    const {'1': 'EXPIRY_TOO_FAR', '2': 22},
    const {'1': 'MPP_TIMEOUT', '2': 23},
    const {'1': 'UNKNOWN_FAILURE', '2': 998},
    const {'1': 'UNREADABLE_FAILURE', '2': 999},
  ],
};

const ChannelUpdate$json = const {
  '1': 'ChannelUpdate',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'chain_hash', '3': 2, '4': 1, '5': 12, '10': 'chainHash'},
    const {
      '1': 'chan_id',
      '3': 3,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'chanId',
    },
    const {'1': 'timestamp', '3': 4, '4': 1, '5': 13, '10': 'timestamp'},
    const {
      '1': 'message_flags',
      '3': 10,
      '4': 1,
      '5': 13,
      '10': 'messageFlags'
    },
    const {'1': 'channel_flags', '3': 5, '4': 1, '5': 13, '10': 'channelFlags'},
    const {
      '1': 'time_lock_delta',
      '3': 6,
      '4': 1,
      '5': 13,
      '10': 'timeLockDelta'
    },
    const {
      '1': 'htlc_minimum_msat',
      '3': 7,
      '4': 1,
      '5': 4,
      '10': 'htlcMinimumMsat'
    },
    const {'1': 'base_fee', '3': 8, '4': 1, '5': 13, '10': 'baseFee'},
    const {'1': 'fee_rate', '3': 9, '4': 1, '5': 13, '10': 'feeRate'},
    const {
      '1': 'htlc_maximum_msat',
      '3': 11,
      '4': 1,
      '5': 4,
      '10': 'htlcMaximumMsat'
    },
    const {
      '1': 'extra_opaque_data',
      '3': 12,
      '4': 1,
      '5': 12,
      '10': 'extraOpaqueData'
    },
  ],
};

const ResetMissionControlRequest$json = const {
  '1': 'ResetMissionControlRequest',
};

const ResetMissionControlResponse$json = const {
  '1': 'ResetMissionControlResponse',
};

const QueryMissionControlRequest$json = const {
  '1': 'QueryMissionControlRequest',
};

const QueryMissionControlResponse$json = const {
  '1': 'QueryMissionControlResponse',
  '2': const [
    const {
      '1': 'pairs',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.routerrpc.PairHistory',
      '10': 'pairs'
    },
  ],
  '9': const [
    const {'1': 1, '2': 2},
  ],
};

const PairHistory$json = const {
  '1': 'PairHistory',
  '2': const [
    const {'1': 'node_from', '3': 1, '4': 1, '5': 12, '10': 'node_from'},
    const {'1': 'node_to', '3': 2, '4': 1, '5': 12, '10': 'node_to'},
    const {
      '1': 'history',
      '3': 7,
      '4': 1,
      '5': 11,
      '6': '.routerrpc.PairData',
      '10': 'history'
    },
  ],
  '9': const [
    const {'1': 3, '2': 4},
    const {'1': 4, '2': 5},
    const {'1': 5, '2': 6},
    const {'1': 6, '2': 7},
  ],
};

const PairData$json = const {
  '1': 'PairData',
  '2': const [
    const {'1': 'fail_time', '3': 1, '4': 1, '5': 3, '10': 'fail_time'},
    const {'1': 'fail_amt_sat', '3': 2, '4': 1, '5': 3, '10': 'fail_amt_sat'},
    const {'1': 'fail_amt_msat', '3': 4, '4': 1, '5': 3, '10': 'fail_amt_msat'},
    const {'1': 'success_time', '3': 5, '4': 1, '5': 3, '10': 'success_time'},
    const {
      '1': 'success_amt_sat',
      '3': 6,
      '4': 1,
      '5': 3,
      '10': 'success_amt_sat'
    },
    const {
      '1': 'success_amt_msat',
      '3': 7,
      '4': 1,
      '5': 3,
      '10': 'success_amt_msat'
    },
  ],
  '9': const [
    const {'1': 3, '2': 4},
  ],
};

const QueryProbabilityRequest$json = const {
  '1': 'QueryProbabilityRequest',
  '2': const [
    const {'1': 'from_node', '3': 1, '4': 1, '5': 12, '10': 'from_node'},
    const {'1': 'to_node', '3': 2, '4': 1, '5': 12, '10': 'to_node'},
    const {'1': 'amt_msat', '3': 3, '4': 1, '5': 3, '10': 'amt_msat'},
  ],
};

const QueryProbabilityResponse$json = const {
  '1': 'QueryProbabilityResponse',
  '2': const [
    const {'1': 'probability', '3': 1, '4': 1, '5': 1, '10': 'probability'},
    const {
      '1': 'history',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.routerrpc.PairData',
      '10': 'history'
    },
  ],
};

const BuildRouteRequest$json = const {
  '1': 'BuildRouteRequest',
  '2': const [
    const {'1': 'amt_msat', '3': 1, '4': 1, '5': 3, '10': 'amtMsat'},
    const {
      '1': 'final_cltv_delta',
      '3': 2,
      '4': 1,
      '5': 5,
      '10': 'finalCltvDelta'
    },
    const {
      '1': 'outgoing_chan_id',
      '3': 3,
      '4': 1,
      '5': 4,
      '8': const {'6': 1},
      '10': 'outgoingChanId',
    },
    const {'1': 'hop_pubkeys', '3': 4, '4': 3, '5': 12, '10': 'hopPubkeys'},
  ],
};

const BuildRouteResponse$json = const {
  '1': 'BuildRouteResponse',
  '2': const [
    const {
      '1': 'route',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.lnrpc.Route',
      '10': 'route'
    },
  ],
};
