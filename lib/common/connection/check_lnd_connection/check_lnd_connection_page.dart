import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:torden/common/connection/check_lnd_connection/bloc.dart';
import 'package:torden/common/models/models.dart';
import 'package:torden/common/utils.dart';
import 'package:torden/common/widgets/widgets.dart';

enum CheckConnectionResultReason {
  // Connection successful and user pressed OK
  userPositive,

  // Connection successful but user pressed Cancel
  userNegative,

  // Connection could not be established with given credentions.
  // See error message for further details.
  connectionError,
}

class CheckConnectionResult {
  final bool success;
  final CheckConnectionResultReason reason;
  final String error; // only set then success == false

  CheckConnectionResult(this.success, this.reason, [this.error]);
}

class CheckLNDConnectionPage extends StatefulWidget {
  final LndConnectionData data;

  const CheckLNDConnectionPage({
    Key key,
    @required this.data,
  }) : super(key: key);
  @override
  _CheckLNDConnectionPageState createState() => _CheckLNDConnectionPageState();
}

class _CheckLNDConnectionPageState extends State<CheckLNDConnectionPage> {
  CheckLndConnectionBloc _bloc = CheckLndConnectionBloc();
  @override
  void initState() {
    _bloc.dispatch(DoCheckLNDConnectionEvent(data: widget.data));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      body: BlocBuilder(
        bloc: _bloc,
        builder: (BuildContext context, CheckLNDConnectionState state) {
          if (state is InitialCheckLNDConnectionState) {
            return Center(child: TranslatedText("onboarding.initializing"));
          } else if (state is CheckingLNDConnectionState) {
            return Center(child: TranslatedText("onboarding.checking"));
          } else if (state is CheckLNDConnectionSuccessState) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: _buildSuccessStateScreen(context, state),
            );
          } else if (state is CheckLNDConnectionErrorState) {
            final double h = 16.0;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(height: 64),
                  TranslatedText(
                    "onboarding.check_connection_error",
                    style: theme.textTheme.display1,
                    textAlign: TextAlign.center,
                  ),
                  Container(height: h),
                  Icon(MdiIcons.networkOff, size: 96),
                  Container(height: h),
                  Text(
                    _getErrorMessage(state.error),
                    style: theme.textTheme.body1,
                    textAlign: TextAlign.center,
                  ),
                  Container(height: h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        child: Text("onboarding.retry_connection_test"),
                        onPressed: () {
                          Navigator.pop(
                            context,
                            CheckConnectionResult(
                              false,
                              CheckConnectionResultReason.connectionError,
                            ),
                          );
                        },
                      )
                    ],
                  )
                ],
              ),
            );
          } else {
            return Center(child: Text("Unknown State $state"));
          }
        },
      ),
    );
  }

  SingleChildScrollView _buildSuccessStateScreen(
    BuildContext context,
    CheckLNDConnectionSuccessState state,
  ) {
    ThemeData theme = Theme.of(context);
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(height: 64),
          TranslatedText(
            "onboarding.check_connection_success",
            style: theme.textTheme.display1,
            textAlign: TextAlign.center,
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: NodeInfo(
              state.info,
              tr(context, "onboarding.check_info"),
              showShareButton: false,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              FlatButton(
                child: TranslatedText("onboarding.cancel_add_node"),
                onPressed: () {
                  Navigator.pop(
                    context,
                    CheckConnectionResult(
                      true,
                      CheckConnectionResultReason.userNegative,
                    ),
                  );
                },
              ),
              RaisedButton(
                child: TranslatedText("onboarding.add_node"),
                onPressed: () {
                  Navigator.pop(
                    context,
                    CheckConnectionResult(
                      true,
                      CheckConnectionResultReason.userPositive,
                    ),
                  );
                },
              )
            ],
          )
        ],
      ),
    );
  }

  String _getErrorMessage(String msg) {
    if (msg.contains("timed out")) {
      return tr(context, "onboarding.error_node_unreachable");
    }
    return msg;
  }
}
