import 'package:flutter/material.dart';

class SendManyTab extends StatefulWidget {
  static int selectedIndex = 0;
  final int index;
  final Function onTap;
  final String labelText;
  final IconData iconData;
  final bool selected;
  final TabController controller;
  const SendManyTab({
    @required this.index,
    @required this.onTap,
    @required this.labelText,
    @required this.iconData,
    @required this.controller,
    this.selected = false,
    Key key,
  }) : super(key: key);
  @override
  _SendManyTabState createState() => _SendManyTabState();
}

class _SendManyTabState extends State<SendManyTab> {
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var selectedFactor = 0.5 / 400 * screenWidth;
    if (selectedFactor > 0.5) selectedFactor = 0.5;

    var padding = 0.0;
    if (screenWidth <= 320.0) {
      padding = 16.0;
    }

    // Absolute width of the selected tab, including the icon
    var selectedWidth = screenWidth * selectedFactor;
    // The width of the base (unselected) icon
    var baseWidth = (screenWidth - selectedWidth) / 4;
    // The extra with of the extended (selected) tab
    var extensionWidth = selectedWidth - baseWidth;

    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: _onTap,
      child: AnimatedBuilder(
        animation: widget.controller.animation,
        builder: (context, child) {
          var animState = widget.controller.animation.value;
          var prevIndex = widget.controller.previousIndex;
          int nextIndex;
          double normalizedState;

          if (widget.controller.indexIsChanging) {
            // User clicked on a tab in the tab bar
            nextIndex = widget.controller.index;
            var diff = nextIndex - prevIndex;
            if (diff < 0) {
              // User clicks on tab on the LEFT to the current selected tab
              normalizedState = 1 - (1 / diff.abs() * (animState - nextIndex));
            } else {
              // User clicks on tab on the RIGHT to the current selected tab
              normalizedState = 1 / diff * (animState - prevIndex);
            }
          } else {
            // User swipes through the tabs
            prevIndex = widget.controller.index;
            if (animState < prevIndex) {
              nextIndex = prevIndex - 1;
              normalizedState = 1 - (animState % 1);
            } else {
              nextIndex = prevIndex + 1;
              normalizedState = animState % 1;
            }
          }

          if (widget.index == prevIndex) {
            if (normalizedState < 1) {
              return _getTab(
                baseWidth + extensionWidth * (1 - normalizedState),
                padding: padding * (1 - normalizedState),
                opacity: _clamp(1 * (1 - normalizedState)),
              );
            } else {
              return _getTab(
                selectedWidth,
                padding: padding,
                opacity: 1,
              );
            }
          } else if (widget.index == nextIndex) {
            return _getTab(
              baseWidth + extensionWidth * normalizedState,
              padding: padding * normalizedState,
              opacity: _clamp(1 * normalizedState),
            );
          } else {
            return child;
          }
        },
        child: _getTab(baseWidth),
      ),
    );
  }

  Widget _getTab(double width, {double padding = 0, double opacity = 0}) {
    return SizedBox(
      width: width - 8,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(flex: 1, child: Icon(widget.iconData)),
          padding > 0 ? SizedBox(width: padding) : Container(),
          Expanded(
            flex: 8,
            child: Opacity(
              opacity: opacity,
              child: Text(
                widget.labelText.toUpperCase(),
                overflow: TextOverflow.fade,
                textAlign: padding > 0 ? TextAlign.start : TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onTap() {
    widget.onTap(widget.index);
  }

  double _clamp(double value) {
    if (value < 0) {
      return 0;
    } else if (value > 1) {
      return 1;
    }
    return value;
  }
}
