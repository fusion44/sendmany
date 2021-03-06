import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../channels/list_channels/bloc/bloc.dart';
import '../../common/models/models.dart';
import '../../common/utils.dart';
import '../../common/widgets/widgets.dart';
import '../balance/bloc/bloc.dart';
import 'lightning/show_lightning_invoice.dart';
import 'onchain/new_address_bloc/bloc.dart';
import 'onchain/show_onchain_invoice.dart';
import 'onchain/subscribe_transactions/subscribe_transactions_bloc.dart';

class ReceivePage extends StatefulWidget {
  @override
  _ReceivePageState createState() => _ReceivePageState();
}

class _ReceivePageState extends State<ReceivePage> {
  Int64 _maxIncomingChanCapacity = Int64.parseInt('-1');
  Int64 _amount;
  String _memo = '';
  bool _includeOnchainFallback = false;

  final NewAddressBloc _newAddressBloc = NewAddressBloc();
  bool _hasEnoughChanCapacity = true;
  bool _isOnChain = false;
  String _onchainAddress = '';

  ListChannelsBloc _listChannelsBloc;

  @override
  void initState() {
    // We require the most recent channel state => reload channels
    _listChannelsBloc = BlocProvider.of<ListChannelsBloc>(context)
      ..add(LoadChannelList(true));
    super.initState();
  }

  @override
  void dispose() {
    _newAddressBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildListChannelsBlocListener(
      _buildNewAddressBlocListener(
        _buildScaffold(),
      ),
    );
  }

  Scaffold _buildScaffold() {
    return Scaffold(
      appBar: AppBar(title: TranslatedText('wallet.receive')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(children: <Widget>[
                  TranslatedText('wallet.receive_page.max_incoming_capacity'),
                  Container(width: 6.0),
                  _maxIncomingChanCapacity != -1
                      ? MoneyValueView(amount: _maxIncomingChanCapacity)
                      : TranslatedText('network.loading')
                ]),
              ),
              MoneyValueInput(amountChanged: (Int64 amount) {
                bool enoughCap;
                if (amount == null) {
                  enoughCap = true;
                } else {
                  enoughCap = _calcChanCapacity(amount);
                }

                if (!enoughCap && _onchainAddress == '') {
                  _newAddressBloc.add(NewAddressEvent());
                }

                setState(() {
                  _amount = amount;
                  _hasEnoughChanCapacity = enoughCap;
                });
              }),
              Container(height: 8.0),
              FilledTextField(
                text: _memo,
                textHint: tr(
                  context,
                  'wallet.receive_page.optional_memo_input_hint',
                ),
                textChanged: (String text) {
                  _memo = text;
                },
              ),
              _buildOnchainFallbackSwitch(),
              SwitchListTile(
                title: TranslatedText(
                  'wallet.receive_page.force_onchain',
                ),
                // If we have enough channel capacity use the current user manipulatable switch
                // If we are out of channel capacity set this always to true since
                // we have to use an onchain tx
                value: _hasEnoughChanCapacity ? _isOnChain : true,
                onChanged: _hasEnoughChanCapacity
                    ? (bool value) {
                        if (value && _onchainAddress == '') {
                          _newAddressBloc.add(NewAddressEvent());
                        }
                        setState(() {
                          _isOnChain = value;
                        });
                      }
                    : null,
                secondary: const Icon(Icons.link),
              ),
              _buildButton(),
            ],
          ),
        ),
      ),
    );
  }

  ElevatedButton _buildButton() {
    Function onClick;

    if (_amount != null && _isOnChain ||
        _amount != null && !_hasEnoughChanCapacity) {
      onClick = () {
        var providers = MultiBlocProvider(
          providers: [
            BlocProvider<LnInfoBloc>.value(
              value: BlocProvider.of<LnInfoBloc>(context),
            ),
            BlocProvider<SubscribeTransactionsBloc>(
              create: (context) => SubscribeTransactionsBloc(),
            ),
          ],
          child: ShowOnchainInvoice(
            address: _onchainAddress,
            amount: _amount,
          ),
        );

        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext context) {
            return providers;
          }),
        );
      };
    } else if (_amount != null && !_isOnChain) {
      onClick = () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (BuildContext context) {
            return ShowLightningInvoice(_memo, _amount, _onchainAddress);
          }),
        );
      };
    }

    return ElevatedButton(
      onPressed: onClick,
      child: TranslatedText('wallet.receive_page.confirm_amount_and_show_qr'),
    );
  }

  Widget _buildOnchainFallbackSwitch() {
    var duration = Duration(milliseconds: 500);
    var height = 60.0;
    var opacity = 1.0;
    if (_isOnChain || !_hasEnoughChanCapacity && _amount != null) {
      height = 0.0;
      opacity = 0.0;
    }

    return AnimatedContainer(
      height: height,
      duration: duration,
      curve: Curves.ease,
      child: AnimatedOpacity(
        opacity: opacity,
        duration: duration,
        child: SwitchListTile(
          title: TranslatedText(
            'wallet.receive_page.include_onchain_fallback_hint',
          ),
          value: _includeOnchainFallback,
          onChanged: (bool value) {
            setState(() {
              _includeOnchainFallback = value;
            });
          },
          secondary: const Icon(Icons.link),
        ),
      ),
    );
  }

  BlocListener _buildNewAddressBlocListener(Widget child) {
    return BlocListener<NewAddressBloc, NewAddressState>(
      bloc: _newAddressBloc,
      listener: (context, state) {
        if (state is ReceivedNewAddressState) {
          setState(() {
            _onchainAddress = state.address;
          });
        }
      },
      child: child,
    );
  }

  bool _calcChanCapacity(Int64 amount) {
    if (amount > _maxIncomingChanCapacity) return false;
    return true;
  }

  Widget _buildListChannelsBlocListener(Widget child) {
    return BlocListener<ListChannelsBloc, ListChannelsState>(
      bloc: _listChannelsBloc,
      listener: (context, state) {
        if (state is ChannelsLoadedState) {
          state.channels.forEach((channel) {
            if (channel is EstablishedChannel &&
                channel.remoteBalance > _maxIncomingChanCapacity) {
              _maxIncomingChanCapacity = channel.remoteBalance;
            }
          });
          setState(() {});
        }
      },
      child: child,
    );
  }
}
