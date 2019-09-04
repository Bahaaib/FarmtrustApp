import 'package:flutter/material.dart';
import 'package:farmtrust_app/custom_paints/arc_painter.dart';

class ArcButton extends StatelessWidget {
  double startAngle;
  double sweepAngle;

  ArcButton(double startAngle, double sweepAngle) {
    this.startAngle = startAngle;
    this.sweepAngle = sweepAngle;
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: ArcPainter(startAngle, sweepAngle),
      child: Container(
        height: 220,
        width: 220,
      ),
    );
  }
}
