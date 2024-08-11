import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../helpers/painters/sunrise_sunset_painter.dart';

class SunriseSunsetCurve extends StatelessWidget {
  const SunriseSunsetCurve({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(50.w, 8.w),
      painter: SunriseSunsetPainter(
        currentTime: 15.45,
        sunriseTime: 4.50,
      ),
    );
  }
}
