import 'package:flutter/material.dart';
import 'package:some_random_design1/providers/forecast/weather_info.dart';

import 'vertical_forecast_container.dart';

class HourlyForecastContainer extends StatelessWidget {
  const HourlyForecastContainer({super.key, required this.index});

  final int index;

  final containerPadding =
      const EdgeInsets.symmetric(horizontal: 10, vertical: 16);
  final containerMargin = const EdgeInsets.only(left: 10);

  @override
  Widget build(BuildContext context) {
    final temp = WeatherInfo.hourlyTemperature(index);
    final hour = WeatherInfo.hourlyTime(index);
    final icon = WeatherInfo.hourlyIcon(index);
    return VerticalForecastContainer(time: hour, icon: icon, temp: temp);
  }
}
