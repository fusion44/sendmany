import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:grpc/grpc.dart';
import 'package:torden/common/connection/connection_manager/bloc.dart';
import 'package:torden/common/connection/lnd_rpc/lnd_rpc.dart';
import './bloc.dart';

class _SendResponseReceivedEvent extends SendPaymentEvent {
  final SendResponse response;

  _SendResponseReceivedEvent(this.response);

  @override
  List<Object> get props => [response];
}

class SendPaymentBloc extends Bloc<SendPaymentEvent, SendPaymentState> {
  StreamController _sendPaymentController = StreamController<SendRequest>();
  ResponseStream<SendResponse> _responseStream;

  @override
  SendPaymentState get initialState => InitialSendPaymentState();

  SendPaymentBloc() {
    setupStream();
  }

  void setupStream() {
    var client = LnConnectionDataProvider().lightningClient;
    var macaroon = LnConnectionDataProvider().macaroon;

    var opts = CallOptions(metadata: {
      "macaroon": macaroon,
    });
    _responseStream = client.sendPayment(
      _sendPaymentController.stream,
      options: opts,
    );
    _responseStream.listen((onData) {
      dispatch(_SendResponseReceivedEvent(onData));
    });
  }

  @override
  void dispose() {
    _sendPaymentController.close();
    super.dispose();
  }

  @override
  Stream<SendPaymentState> mapEventToState(
    SendPaymentEvent event,
  ) async* {
    if (event is SendPaymentViaInvoiceEvent) {
      SendRequest req = SendRequest();
      req.paymentRequest = event.invoice;
      _sendPaymentController.add(req);
    } else if (event is _SendResponseReceivedEvent) {
      yield SendPaymentResponseState(event.response);
    }
  }
}
