import 'package:flutter/material.dart';
import 'package:some_random_design1/providers/forecast/weather_info.dart';

import '../../../../../helpers/style_helpers/app_text_styles.dart';
import '../../../../../providers/forecast_containers_icon_provider.dart';
import 'forecast_container_header.dart';
import 'tab_container.dart';

class HumidityContainer extends StatelessWidget {
  const HumidityContainer({super.key});

  static final humidity = WeatherInfo.humidity;

  @override
  Widget build(BuildContext context) {
    return TabContainer(
      children: [
        ForecastContainerHeader(
            title: 'HUMIDITY', icon: ForecastContainersIconProvider.humidity),
        const SizedBox(height: 5),
        Text('$humidity%', style: AppTextStyles.title),
        const Spacer(),
        const Text('The dew point is 17 right now', //TODO not in the api
            style: AppTextStyles.bodySmall),
      ],
    );
  }
}
