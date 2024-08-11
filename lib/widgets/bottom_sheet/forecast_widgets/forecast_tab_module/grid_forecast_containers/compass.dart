import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../helpers/painters/compass_painter.dart';

class Compass extends StatelessWidget {
  const Compass({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(25.w, 25.w),
      painter: CompassPainter(
          windDirection: 240, windSpeed: 7.9), // Example wind direction
    );
  }
}
