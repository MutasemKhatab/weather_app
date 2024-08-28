import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/style_helpers/app_text_styles.dart';
import 'package:some_random_design1/providers/forecast/weather_info.dart';

import '../../../../helpers/forecast_header_helpers/forecast_type_text_utils.dart';

class ForecastTypeText extends StatelessWidget {
  const ForecastTypeText({super.key, required this.heightScale});

  final double heightScale;
  static final forecastType = WeatherInfo.weatherDescription;

  @override
  Widget build(BuildContext context) {
    final utils = ForecastTypeTextUtils(heightScale);
    //TODO: its kinda fucked the horizantal pos when the texts is not long
    return Positioned(
      top: utils.topPosition,
      left: utils.leftPosition,
      child: SizedBox(
        width: utils.textWidth,
        child: Text(
          forecastType,
          textAlign: TextAlign.center,
          style: AppTextStyles.displaySmall,
        ),
      ),
    );
  }
}
