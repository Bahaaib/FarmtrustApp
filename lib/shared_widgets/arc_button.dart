import 'package:flutter/material.dart';
import 'package:farmtrust_app/custom_paints/arc_painter.dart';

class ArcButton extends StatelessWidget {
  double startAngle;
  double sweepAngle;
  Color color;

  ArcButton(double startAngle, double sweepAngle, Color color) {
    this.startAngle = startAngle;
    this.sweepAngle = sweepAngle;
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ArcPainter(startAngle, sweepAngle, color),
      child: Container(
        height: 220,
        width: 220,
      ),
    );
  }
}
