import 'package:flutter/material.dart';

import '../../../../../helpers/style_helpers/app_text_styles.dart';
import '../../../../../providers/forecast/weather_info.dart';
import '../../../../../providers/forecast_containers_icon_provider.dart';
import 'forecast_container_header.dart';
import 'tab_container.dart';

class VisibilityContainer extends StatelessWidget {
  const VisibilityContainer({super.key});

  static final visibility = WeatherInfo.visibility;

  @override
  Widget build(BuildContext context) {
    return TabContainer(
      children: [
        ForecastContainerHeader(
            title: 'VISIBILITY',
            icon: ForecastContainersIconProvider.visibility),
        const SizedBox(height: 5),
        Text('$visibility km', style: AppTextStyles.title),
        const Spacer(),
        const Text('Generally good', style: AppTextStyles.bodySmall),
      ],
    );
  }
}
