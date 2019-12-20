import 'package:flutter/material.dart';

import '../chart_section_input.dart';

class _LineChartSection {
  final double start;
  final double end;
  final Paint paint;

  _LineChartSection(this.start, this.end, this.paint);
}

class FlatLineChartPainter extends CustomPainter {
  List<_LineChartSection> sections = [];
  final double total;
  final double strokeWidth;

  FlatLineChartPainter(
    this.total,
    List<ChartSectionInput> values, {
    this.strokeWidth = 4.0,
  }) {
    var unit = 1.0 / total;
    var lastEnd = 0.0;
    values.forEach((v) {
      var p = Paint()
        ..color = v.color
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth;
      var length = v.amount * unit;
      sections.add(_LineChartSection(lastEnd, lastEnd + length, p));
      lastEnd += length;
    });
  }

  @override
  void paint(Canvas canvas, Size size) {
    var y = strokeWidth / 2;
    sections.forEach((s) {
      canvas.drawLine(
        Offset(s.start * size.width, y),
        Offset(s.end * size.width, y),
        s.paint,
      );
    });
  }

  @override
  bool shouldRepaint(FlatLineChartPainter oldDelegate) {
    if (oldDelegate.total != total ||
        oldDelegate.sections.length != sections.length) {
      return true;
    }
    return false;
  }
}
