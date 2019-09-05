import 'package:flutter/material.dart';
import 'package:farmtrust_app/custom_paints/dash_painter.dart';

class Separator extends StatelessWidget {
  Color color;

  Separator({Color color}) {
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 100.0,
        child: CustomPaint(
          painter: DashLinePainter(color: color),
        ));
  }
}
