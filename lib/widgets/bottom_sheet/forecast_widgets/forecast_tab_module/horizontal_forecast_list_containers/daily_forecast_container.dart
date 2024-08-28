import 'package:flutter/material.dart';
import 'package:some_random_design1/providers/forecast/weather_info.dart';

import 'vertical_forecast_container.dart';

class DailyForecastContainer extends StatelessWidget {
  const DailyForecastContainer({super.key, required this.index});

  final int index;



  @override
  Widget build(BuildContext context) {
    final temp = WeatherInfo.hourlyTemperature(index);
    final day = WeatherInfo.hourlyTime(index);//TODO
    final icon = WeatherInfo.hourlyIcon(index);
    return VerticalForecastContainer(
        time: day,
        icon: icon,
        temp: temp);
  }
}
