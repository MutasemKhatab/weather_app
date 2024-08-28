import 'package:flutter/material.dart';
import 'package:some_random_design1/providers/forecast/weather_info.dart';

import '../../../../../helpers/style_helpers/app_text_styles.dart';
import '../../../../../providers/forecast_containers_icon_provider.dart';
import 'forecast_container_header.dart';
import 'tab_container.dart';

class FeelsLikeContainer extends StatelessWidget {
  const FeelsLikeContainer({super.key});

  static final feelsLike = WeatherInfo.feelsLike;

  @override
  Widget build(BuildContext context) {
    return TabContainer(
      children: [
        ForecastContainerHeader(
            title: 'FEELS LIKE',
            icon: ForecastContainersIconProvider.feelsLike),
        const SizedBox(height: 5),
        Text('$feelsLike°', style: AppTextStyles.title),
        const Spacer(),
        const Text('Similar to the actual temperature',
            style: AppTextStyles.bodySmall),
      ],
    );
  }
}
