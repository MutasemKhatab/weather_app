import 'package:flutter/material.dart';
import 'dart:math' as math;
import '../style_helpers/app_text_styles.dart';
import '../style_helpers/extra_colors.dart';

class CompassPainter extends CustomPainter {
  final double windDirection;
  final double windSpeed;

  CompassPainter({required this.windDirection, required this.windSpeed});

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = size.width / 2;

    drawCompassTicks(canvas, center, radius);
    drawCompassLabels(canvas, center, radius);
    drawWindDirectionArrow(canvas, center, radius);
    drawWindSpeed(canvas, center);
  }

  void drawCompassTicks(Canvas canvas, Offset center, double radius) {
    final tickPaint = Paint()
      ..color = ExtraColors.semiTransparentPaleWhite
      ..strokeWidth = 0.1;
    final semiMainTickPaint = Paint()
      ..color = ExtraColors.semiTransparentPaleWhite
      ..strokeWidth = 1;
    final mainTickPaint = Paint()
      ..color = Colors.white
      ..strokeWidth = 2;

    for (int i = 0; i < 360; i += 2) {
      final angle = (i * math.pi) / 180;
      final startX = center.dx + radius * math.cos(angle);
      final startY = center.dy + radius * math.sin(angle);
      final endX = center.dx + (radius - 7) * math.cos(angle);
      final endY = center.dy + (radius - 7) * math.sin(angle);
      canvas.drawLine(
          Offset(startX, startY),
          Offset(endX, endY),
          i % 90 == 0
              ? mainTickPaint
              : i % 30 == 0
                  ? semiMainTickPaint
                  : tickPaint);
    }
  }

  void drawCompassLabels(Canvas canvas, Offset center, double radius) {
    drawLabel(canvas, center, radius, 0.0, 'E');
    drawLabel(canvas, center, radius, 90.0, 'S');
    drawLabel(canvas, center, radius, 180.0, 'W');
    drawLabel(canvas, center, radius, 270.0, 'M');
  }

  void drawLabel(Canvas canvas, Offset center, double radius,
      double angleDegrees, String label) {
    final angle = (angleDegrees * math.pi) / 180;
    final textPainter = TextPainter(
      text: TextSpan(
        text: label,
        style: AppTextStyles.bodyMedium,
      ),
      textDirection: TextDirection.ltr,
    );
    textPainter.layout();
    textPainter.paint(
        canvas,
        Offset(
            center.dx + (radius - 15) * math.cos(angle) - textPainter.width / 2,
            center.dy +
                (radius - 15) * math.sin(angle) -
                textPainter.height / 2));
  }

  void drawWindDirectionArrow(Canvas canvas, Offset center, double radius) {
    final arrowPaint = Paint()
      ..color = ExtraColors.lightSteelBlue
      ..style = PaintingStyle.fill;
    final arrowLength = radius;
    const arrowHeadSize = 10.0;
    drawArrow(canvas, center, radius, windDirection.toDouble(), arrowLength,
        arrowHeadSize, arrowPaint);
  }

  void drawArrow(
      Canvas canvas,
      Offset center,
      double radius,
      double angleDegrees,
      double arrowLength,
      double arrowHeadSize,
      Paint paint) {
    final angle = (angleDegrees * math.pi) / 180;

    // Calculate the end point of the arrow
    final arrowX = center.dx + arrowLength * math.cos(angle);
    final arrowY = center.dy + arrowLength * math.sin(angle);
    final arrowStickX = center.dx + arrowLength * 0.9 * math.cos(angle);
    final arrowStickY = center.dy + arrowLength * 0.9 * math.sin(angle);

    // calculate the start point of the arrow
    final arrowStartX = center.dx + (radius - 20) * math.cos(angle);
    final arrowStartY = center.dy + (radius - 20) * math.sin(angle);

    // Draw the arrow shaft (stick)
    final stickPaint = Paint()
      ..color = paint.color
      ..strokeWidth = 2.0
      ..style = PaintingStyle.stroke;
    canvas.drawLine(Offset(arrowStartX, arrowStartY),
        Offset(arrowStickX, arrowStickY), stickPaint);

    // Draw the arrow head
    final arrowHeadPath = Path()
      ..moveTo(arrowX, arrowY)
      ..lineTo(arrowX - arrowHeadSize * math.cos(angle - math.pi / 6),
          arrowY - arrowHeadSize * math.sin(angle - math.pi / 6))
      ..lineTo(arrowX - arrowHeadSize * math.cos(angle + math.pi / 6),
          arrowY - arrowHeadSize * math.sin(angle + math.pi / 6))
      ..close();

    canvas.drawPath(arrowHeadPath, paint);
  }

  void drawWindSpeed(Canvas canvas, Offset center) {
    final textPainter = TextPainter(
      text: TextSpan(
        text: '${windSpeed.toStringAsFixed(1)}\nkm/h',
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
