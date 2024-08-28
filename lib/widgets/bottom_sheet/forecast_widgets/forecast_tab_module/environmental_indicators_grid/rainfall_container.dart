import 'package:flutter/material.dart';

import '../../../../../helpers/style_helpers/app_text_styles.dart';
import '../../../../../providers/forecast/weather_info.dart';
import '../../../../../providers/forecast_containers_icon_provider.dart';
import 'forecast_container_header.dart';
import 'tab_container.dart';

class RainfallContainer extends StatelessWidget {
  const RainfallContainer({super.key});

  static final rainfall = WeatherInfo.rainfall;

  @override
  Widget build(BuildContext context) {
    return TabContainer(
      children: [
        ForecastContainerHeader(
            title: 'RAINFALL', icon: ForecastContainersIconProvider.rainfall),
        Text('$rainfall mm', style: AppTextStyles.title),
        const Text('in last hour', style: AppTextStyles.labelLarge),
        const Spacer(),
        const Text('2.3 mm expected in next 24h', //TODO not in the api
            style: AppTextStyles.bodySmall),
      ],
    );
  }
}
