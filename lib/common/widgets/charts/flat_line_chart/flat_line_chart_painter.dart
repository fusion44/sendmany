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
    double unit = 1 / total;
    double lastEnd = 0;
    values.forEach((v) {
      Paint p = Paint()
        ..color = v.color
        ..style = PaintingStyle.stroke
        ..strokeWidth = strokeWidth;
      double length = v.amount * unit;
      sections.add(_LineChartSection(lastEnd, lastEnd + length, p));
      lastEnd += length;
    });
  }

  @override
  void paint(Canvas canvas, Size size) {
    double y = strokeWidth / 2;
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
