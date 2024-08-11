import 'package:flutter/material.dart';
import 'dart:math' as math;

import '../style_helpers/extra_colors.dart';

//TODO [LATER] make inner curve at the beginning and end
class SunriseSunsetPainter extends CustomPainter {
  final double sunriseTime;
  final double currentTime;

  SunriseSunsetPainter({required this.sunriseTime, required this.currentTime});

  @override
  void paint(Canvas canvas, Size size) {
    final A = size.height;
    final L = size.width / 2;
    final horizontalLineY = size.height -
        (A * math.sin((math.pi * (size.width * (sunriseTime / 24))) / (2 * L)));

    _drawCurveAbove(canvas, size, A, L, horizontalLineY);
    _drawCurveBelow(canvas, size, A, L, horizontalLineY);
    _drawHorizontalLine(canvas, size, horizontalLineY);
    _drawSunWithShadow(canvas, size, A, L);
  }

  void _drawCurveAbove(
      Canvas canvas, Size size, double A, double L, double horizontalLineY) {
    final pathAbove = Path();
    final paintAbove = Paint()
      ..color = ExtraColors.lightSteelBlue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;

    for (double x = 0; x <= size.width; x++) {
      final y = A * math.sin((math.pi * x) / (2 * L));
      if (size.height - y < horizontalLineY) {
        if (x == 0) {
          pathAbove.moveTo(x, size.height - y);
        } else {
          pathAbove.lineTo(x, size.height - y);
        }
      } else {
        pathAbove.moveTo(x, size.height - y);
      }
    }
    canvas.drawPath(pathAbove, paintAbove);
  }

  void _drawCurveBelow(
      Canvas canvas, Size size, double A, double L, double horizontalLineY) {
    final pathBelow = Path();
    final paintBelow = Paint()
      ..color = ExtraColors.darkNavyBlue
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2.0;

    for (double x = 0; x <= size.width; x++) {
      final y = A * math.sin((math.pi * x) / (2 * L));
      if (size.height - y > horizontalLineY) {
        if (x == 0) {
          pathBelow.moveTo(x, size.height - y);
        } else {
          pathBelow.lineTo(x, size.height - y);
        }
      } else {
        pathBelow.moveTo(x, size.height - y);
      }
    }
    canvas.drawPath(pathBelow, paintBelow);
  }

  void _drawHorizontalLine(Canvas canvas, Size size, double horizontalLineY) {
    final horizontalLinePaint = Paint()
      ..color = ExtraColors.semiTransparentPaleWhite
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0;
    canvas.drawLine(Offset(0, horizontalLineY),
        Offset(size.width, horizontalLineY), horizontalLinePaint);
  }

  void _drawSunWithShadow(Canvas canvas, Size size, double A, double L) {
    final timePaint = Paint()..color = Colors.white;
    final timePosition = Offset(
      size.width * (currentTime / 24),
      size.height -
          (A *
              math.sin(
                  (math.pi * (size.width * (currentTime / 24))) / (2 * L))),
    );
    canvas.drawShadow(
        Path()
          ..addOval(Rect.fromCircle(
              center: Offset(timePosition.dx, timePosition.dy - 5), radius: 5)),
        Colors.white,
        5,
        true);
    canvas.drawCircle(timePosition, 3, timePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
