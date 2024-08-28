import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:some_random_design1/providers/forecast/weather_info.dart';

import '../../../../../helpers/painters/compass_painter.dart';

class Compass extends StatelessWidget {
  const Compass({super.key});

  static final windDirection = WeatherInfo.windDirection;
  static final windSpeed = WeatherInfo.windSpeed;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(25.w, 25.w),
      painter:
          CompassPainter(windDirection: windDirection, windSpeed: windSpeed),
    );
  }
}
