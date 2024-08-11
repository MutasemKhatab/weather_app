import 'package:flutter/material.dart';

import '../style_helpers/app_text_styles.dart';
import '../style_helpers/extra_colors.dart';

import 'dart:math' as math;

class PressurePainter extends CustomPainter {
  final double pressure; // Pressure value in hPa

  PressurePainter({required this.pressure});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    drawPressureTicks(canvas, center, radius);
    drawPressureValueArc(canvas, center, radius);
    drawThickTick(canvas, center, radius);
    drawPressureValue(canvas, center);
  }

  void drawPressureTicks(Canvas canvas, Offset center, double radius) {
    final tickPaint = Paint()
      ..color = ExtraColors.semiTransparentPaleWhite
      ..strokeWidth = 1;
    final mainTickPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2;

    for (int i = 0; i < 360; i += 10) {
      final angle = (i * math.pi) / 180;
      final startX = center.dx + radius * math.cos(angle);
      final startY = center.dy + radius * math.sin(angle);
      final endX = center.dx + (radius - 7) * math.cos(angle);
      final endY = center.dy + (radius - 7) * math.sin(angle);
      canvas.drawLine(Offset(startX, startY), Offset(endX, endY),
          i % 90 == 0 ? mainTickPaint : tickPaint);
    }
  }

  void drawPressureValueArc(Canvas canvas, Offset center, double radius) {
    final angle = (pressure - 15 % 360) * (math.pi / 180);
    final startAngle = angle - math.pi / 12; // 30 degrees in radians
    const sweepAngle = math.pi / 6; // 30 degrees in radians
    final gradient = LinearGradient(
      colors: const [
        Color(0x00FFFFFF),
        Color(0x52FFFFFF),
      ],
      begin: Alignment(math.cos(startAngle), math.sin(startAngle)),
      end: Alignment(
          math.cos(startAngle + sweepAngle), math.sin(startAngle + sweepAngle)),
    );
    final arcPaint = Paint()
      ..shader =
          gradient.createShader(Rect.fromCircle(center: center, radius: radius))
      ..style = PaintingStyle.stroke
      ..strokeWidth = 7;

    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius - 3.5),
      startAngle,
      sweepAngle,
      false,
      arcPaint,
    );
  }

  void drawThickTick(Canvas canvas, Offset center, double radius) {
    final angle = (pressure % 360) * (math.pi / 180);
    final tickPaint = Paint()
      ..color = Colors.white
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 4;

    final startX = center.dx + radius * math.cos(angle);
    final startY = center.dy + radius * math.sin(angle);
    final endX = center.dx + (radius - 7) * math.cos(angle);
    final endY = center.dy + (radius - 7) * math.sin(angle);
    canvas.drawLine(Offset(startX, startY), Offset(endX, endY), tickPaint);
  }

  void drawPressureValue(Canvas canvas, Offset center) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: '${pressure.toStringAsFixed(1)}\nmb',
        style: AppTextStyles.bodyMedium,
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(
        canvas,
        Offset(center.dx - textPainter.width / 2,
            center.dy - textPainter.height / 2));
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
