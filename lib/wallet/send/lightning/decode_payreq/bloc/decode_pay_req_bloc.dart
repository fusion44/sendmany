import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:sendmany/common/connection/connection_manager/bloc.dart';
import 'package:sendmany/common/connection/lnd_rpc/rpc.pb.dart';
import './bloc.dart';

class DecodePayReqBloc extends Bloc<DecodePayReqBlocEvent, DecodePayReqState> {
  @override
  DecodePayReqState get initialState => InitialDecodePayReqBlocState();

  @override
  Stream<DecodePayReqState> mapEventToState(
    DecodePayReqBlocEvent event,
  ) async* {
    if (event is ResetDecodePayReqEvent) {
      yield InitialDecodePayReqBlocState();
    } else if (event is DecodePayReqEvent) {
      yield DecodingPayReqState(event.payReq);
      String reqString = event.payReq.contains(":")
          ? event.payReq.split(":")[1]
          : event.payReq;

      var client = LnConnectionDataProvider().lightningClient;
      var macaroon = LnConnectionDataProvider().macaroon;
      PayReqString req = PayReqString();

      try {
        req.setField(1, reqString);
      } catch (e) {
        yield DecodingPayReqErrorState(event.payReq, e.toString());
      }

      var opts = CallOptions(metadata: {
        "macaroon": macaroon,
      });

      PayReq decoded;
      try {
        decoded = await client.decodePayReq(req, options: opts);
        yield DecodedPayReqState(decoded, reqString);
      } catch (e) {
        print(e);

        if (e is GrpcError) {
          yield DecodingPayReqErrorState(event.payReq, e.message);
        } else {
          yield DecodingPayReqErrorState(event.payReq, e.toString());
        }
      }
    }
  }
}
