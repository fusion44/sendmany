///
//  Generated code. Do not modify.
//  source: signer.proto
//
// @dart = 2.3
// ignore_for_file: camel_case_types,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,annotate_overrides,unnecessary_const

const KeyLocator$json = const {
  '1': 'KeyLocator',
  '2': const [
    const {'1': 'key_family', '3': 1, '4': 1, '5': 5, '10': 'keyFamily'},
    const {'1': 'key_index', '3': 2, '4': 1, '5': 5, '10': 'keyIndex'},
  ],
};

const KeyDescriptor$json = const {
  '1': 'KeyDescriptor',
  '2': const [
    const {'1': 'raw_key_bytes', '3': 1, '4': 1, '5': 12, '10': 'rawKeyBytes'},
    const {
      '1': 'key_loc',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.signrpc.KeyLocator',
      '10': 'keyLoc'
    },
  ],
};

const TxOut$json = const {
  '1': 'TxOut',
  '2': const [
    const {'1': 'value', '3': 1, '4': 1, '5': 3, '10': 'value'},
    const {'1': 'pk_script', '3': 2, '4': 1, '5': 12, '10': 'pkScript'},
  ],
};

const SignDescriptor$json = const {
  '1': 'SignDescriptor',
  '2': const [
    const {
      '1': 'key_desc',
      '3': 1,
      '4': 1,
      '5': 11,
      '6': '.signrpc.KeyDescriptor',
      '10': 'keyDesc'
    },
    const {'1': 'single_tweak', '3': 2, '4': 1, '5': 12, '10': 'singleTweak'},
    const {'1': 'double_tweak', '3': 3, '4': 1, '5': 12, '10': 'doubleTweak'},
    const {
      '1': 'witness_script',
      '3': 4,
      '4': 1,
      '5': 12,
      '10': 'witnessScript'
    },
    const {
      '1': 'output',
      '3': 5,
      '4': 1,
      '5': 11,
      '6': '.signrpc.TxOut',
      '10': 'output'
    },
    const {'1': 'sighash', '3': 7, '4': 1, '5': 13, '10': 'sighash'},
    const {'1': 'input_index', '3': 8, '4': 1, '5': 5, '10': 'inputIndex'},
  ],
};

const SignReq$json = const {
  '1': 'SignReq',
  '2': const [
    const {'1': 'raw_tx_bytes', '3': 1, '4': 1, '5': 12, '10': 'rawTxBytes'},
    const {
      '1': 'sign_descs',
      '3': 2,
      '4': 3,
      '5': 11,
      '6': '.signrpc.SignDescriptor',
      '10': 'signDescs'
    },
  ],
};

const SignResp$json = const {
  '1': 'SignResp',
  '2': const [
    const {'1': 'raw_sigs', '3': 1, '4': 3, '5': 12, '10': 'rawSigs'},
  ],
};

const InputScript$json = const {
  '1': 'InputScript',
  '2': const [
    const {'1': 'witness', '3': 1, '4': 3, '5': 12, '10': 'witness'},
    const {'1': 'sig_script', '3': 2, '4': 1, '5': 12, '10': 'sigScript'},
  ],
};

const InputScriptResp$json = const {
  '1': 'InputScriptResp',
  '2': const [
    const {
      '1': 'input_scripts',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.signrpc.InputScript',
      '10': 'inputScripts'
    },
  ],
};

const SignMessageReq$json = const {
  '1': 'SignMessageReq',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 12, '10': 'msg'},
    const {
      '1': 'key_loc',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.signrpc.KeyLocator',
      '10': 'keyLoc'
    },
  ],
};

const SignMessageResp$json = const {
  '1': 'SignMessageResp',
  '2': const [
    const {'1': 'signature', '3': 1, '4': 1, '5': 12, '10': 'signature'},
  ],
};

const VerifyMessageReq$json = const {
  '1': 'VerifyMessageReq',
  '2': const [
    const {'1': 'msg', '3': 1, '4': 1, '5': 12, '10': 'msg'},
    const {'1': 'signature', '3': 2, '4': 1, '5': 12, '10': 'signature'},
    const {'1': 'pubkey', '3': 3, '4': 1, '5': 12, '10': 'pubkey'},
  ],
};

const VerifyMessageResp$json = const {
  '1': 'VerifyMessageResp',
  '2': const [
    const {'1': 'valid', '3': 1, '4': 1, '5': 8, '10': 'valid'},
  ],
};

const SharedKeyRequest$json = const {
  '1': 'SharedKeyRequest',
  '2': const [
    const {
      '1': 'ephemeral_pubkey',
      '3': 1,
      '4': 1,
      '5': 12,
      '10': 'ephemeralPubkey'
    },
    const {
      '1': 'key_loc',
      '3': 2,
      '4': 1,
      '5': 11,
      '6': '.signrpc.KeyLocator',
      '10': 'keyLoc'
    },
  ],
};

const SharedKeyResponse$json = const {
  '1': 'SharedKeyResponse',
  '2': const [
    const {'1': 'shared_key', '3': 1, '4': 1, '5': 12, '10': 'sharedKey'},
  ],
};
