import 'package:flutter/material.dart';

import '../chart_section_input.dart';
import 'flat_line_chart_painter.dart';

class FlatLineChart extends StatelessWidget {
  final List<ChartSectionInput> values;
  final double total;
  final double strokeWidth;

  const FlatLineChart({
    Key key,
    @required this.values,
    @required this.total,
    this.strokeWidth = 6.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(300, strokeWidth),
      painter: FlatLineChartPainter(total, values, strokeWidth: strokeWidth),
    );
  }
}
