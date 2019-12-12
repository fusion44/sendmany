import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/lnd_rpc.dart' as rpc;
import 'package:sendmany/wallet/receive/onchain/new_address_bloc/bloc.dart';

import './bloc.dart';

class NewAddressBloc extends Bloc<NewAddressEvent, NewAddressState> {
  @override
  NewAddressState get initialState => InitialNewAddressState();

  @override
  Stream<NewAddressState> mapEventToState(
    NewAddressEvent event,
  ) async* {
    yield LoadingNewAddressState();
    var client = LnConnectionDataProvider().lightningClient;
    var macaroon = LnConnectionDataProvider().macaroon;
    var opts = CallOptions(metadata: {'macaroon': macaroon});

    rpc.NewAddressRequest req = rpc.NewAddressRequest();
    if (event.addressType == AddressType.witnessPubkeyHash) {
      req.type = rpc.AddressType.WITNESS_PUBKEY_HASH;
    } else {
      req.type = rpc.AddressType.NESTED_PUBKEY_HASH;
    }

    try {
      rpc.NewAddressResponse resp = await client.newAddress(req, options: opts);
      yield ReceivedNewAddressState(resp.address);
    } catch (e) {
      yield NewAddressErrorState(e.toString());
    }
  }
}
