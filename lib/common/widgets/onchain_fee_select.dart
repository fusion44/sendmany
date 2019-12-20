import 'package:fixnum/fixnum.dart';
import 'package:flutter/material.dart';
import 'package:sendmany/common/models/models.dart';
import 'package:sendmany/common/utils.dart';
import 'package:sendmany/common/widgets/widgets.dart';

class OnchainFeeSelectWidget extends StatefulWidget {
  final Function(
    OnchainFeeType feeType,
    Int64 amount,
    bool valid,
  ) amountChanged;

  const OnchainFeeSelectWidget({Key key, @required this.amountChanged})
      : super(key: key);
  @override
  _OnchainFeeSelectWidgetState createState() => _OnchainFeeSelectWidgetState();
}

class _OnchainFeeSelectWidgetState extends State<OnchainFeeSelectWidget> {
  OnchainFeeType _feeType = OnchainFeeType.blockTarget;

  static const String _initialBlockTarget = '6';
  String _blockTarget = _initialBlockTarget;
  final _blockTargetController = TextEditingController(
    text: _initialBlockTarget,
  );
  bool _blockTargetValid = true;

  Int64 _feePerKB = Int64.ONE;

  @override
  void initState() {
    _blockTargetController.addListener(() {
      if (_feeType == OnchainFeeType.manual) return;

      var txt = _blockTargetController.text;
      _blockTargetValid = true;

      if (txt.isEmpty) _blockTargetValid = false;

      var intVal = int.tryParse(txt);
      if (intVal == null || intVal < 1) _blockTargetValid = false;

      widget.amountChanged(
        OnchainFeeType.blockTarget,
        _blockTargetValid ? Int64(intVal) : null,
        _blockTargetValid,
      );

      setState(() {
        _blockTarget = txt;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var feeTypes = {
      OnchainFeeType.blockTarget: tr(context, 'channels.open.fee_target_block'),
      OnchainFeeType.manual: tr(
        context,
        'channels.open.fee_manual_sat_per_byte',
      )
    };

    Widget inputWidget;
    if (_feeType == OnchainFeeType.blockTarget) {
      inputWidget = FilledTextFieldManual(
        valid: _blockTargetValid,
        controller: _blockTargetController,
        textHint: tr(context, 'channels.open.fee_target_block'),
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
      );
    } else {
      inputWidget = MoneyValueInput(
        amount: _feePerKB,
        amountChanged: (Int64 val) {
          _feePerKB = val;
          widget.amountChanged(
            OnchainFeeType.manual,
            _feePerKB,
            true,
          );
        },
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        DropdownButton<OnchainFeeType>(
          value: _feeType,
          onChanged: (value) {
            setState(() {
              _feeType = value;
              _blockTargetController.text = value == OnchainFeeType.blockTarget
                  ? _blockTarget.toString()
                  : _feePerKB.toString();
            });
          },
          items: feeTypes.keys.map((item) {
            return DropdownMenuItem(
              value: item,
              child: Text(feeTypes[item]),
            );
          }).toList(),
        ),
        Container(
          width: 15.0,
        ),
        Expanded(
          child: inputWidget,
        ),
      ],
    );
  }
}
