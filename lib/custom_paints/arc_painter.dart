import 'package:flutter/material.dart';
import 'dart:math' as Math;

class ArcPainter extends CustomPainter {
  double startAngle;
  double sweepAngle;
  Color color;

  ArcPainter(double startAngle, double sweepAngle, Color color) {
    this.startAngle = startAngle;
    this.sweepAngle = sweepAngle;
    this.color = color;
  }

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = 100.0;

    num degToRad(num deg) => deg * (Math.pi / 180.0);

    Path path = Path();

    path.addArc(Rect.fromLTWH(0.0, 0.0, size.width, size.height),
        degToRad(startAngle), degToRad(sweepAngle));
    canvas.drawShadow(path, color, 10.0, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
