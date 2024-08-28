import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:some_random_design1/providers/forecast/weather_info.dart';

import '../../../../../helpers/painters/sunrise_sunset_painter.dart';

class SunriseSunsetCurve extends StatelessWidget {
  const SunriseSunsetCurve({super.key});

  double get sunrise {
    final sunrise = WeatherInfo.formattedSunrise;
    final x = sunrise.replaceAll(':', '.');
    final y = x.substring(0, sunrise.length - 3);
    return double.parse(y);
  }

  double get currentTime {
    final currentTime = '${DateTime.now().hour}.${DateTime.now().minute}';
    return double.parse(currentTime);
  }

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(50.w, 8.w),
      painter: SunriseSunsetPainter(
        currentTime: currentTime,
        sunriseTime: sunrise,
      ),
    );
  }
}
