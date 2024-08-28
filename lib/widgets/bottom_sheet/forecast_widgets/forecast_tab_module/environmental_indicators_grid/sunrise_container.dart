import 'package:flutter/material.dart';
import 'package:some_random_design1/providers/forecast/weather_info.dart';
import '../../../../../helpers/style_helpers/app_text_styles.dart';
import '../../../../../providers/forecast_containers_icon_provider.dart';
import 'forecast_container_header.dart';
import 'sunrise_sunset_curve.dart';
import 'tab_container.dart';

class SunriseContainer extends StatelessWidget {
  const SunriseContainer({super.key});

  static final sunrise = WeatherInfo.formattedSunrise;
  static final sunset = WeatherInfo.formattedSunset;

  @override
  Widget build(BuildContext context) {
    return TabContainer(
      children: [
        ForecastContainerHeader(
            title: 'SUNRISE', icon: ForecastContainersIconProvider.sunrise),
        Text(sunrise, style: AppTextStyles.title),
        const Spacer(),
        const SunriseSunsetCurve(),
        Text('Sunset: $sunset', style: AppTextStyles.bodySmall),
      ],
    );
  }
}
