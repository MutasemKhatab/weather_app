import 'package:flutter/material.dart';
import 'package:some_random_design1/providers/forecast/weather_info.dart';

import '../../../../helpers/forecast_header_helpers/current_degree_text_utils.dart';

class CurrentDegreeText extends StatelessWidget {
  const CurrentDegreeText({super.key, required this.heightScale});

  final double heightScale;
  static final currentDegree = WeatherInfo.currentDegree;

  @override
  Widget build(BuildContext context) {
    final utils = CurrentDegreeTextUtils(heightScale);

    return Positioned(
      top: utils.topPosition,
      left: utils.leftPosition,
      child: SizedBox(
        width: utils.textWidth,
        child: Text('$currentDegree',
            textAlign: TextAlign.center, style: utils.style),
      ),
    );
  }
}
