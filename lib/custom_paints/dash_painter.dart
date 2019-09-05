import 'package:flutter/material.dart';

class DashLinePainter extends CustomPainter {
  Color color;

  DashLinePainter({Color color}) {
    this.color = color;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..strokeWidth = 2
      ..color = color;
    var max = 340;
    var dashWidth = 5;
    var dashSpace = 5;
    double startX = 0;
    while (max >= 0) {
      canvas.drawLine(Offset(startX, 0), Offset(startX + dashWidth, 0), paint);
      final space = (dashSpace + dashWidth);
      startX += space;
      max -= space;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
