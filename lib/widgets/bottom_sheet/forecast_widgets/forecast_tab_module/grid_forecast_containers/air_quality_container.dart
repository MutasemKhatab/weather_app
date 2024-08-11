import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/style_helpers/app_text_styles.dart';
import 'package:some_random_design1/providers/forecast_containers_icon_provider.dart';

import 'forecast_container_header.dart';
import 'line_value_indicator.dart';
import 'tab_container.dart';

class AirQualityContainer extends StatelessWidget {
  const AirQualityContainer({super.key});

  static const containerPadding =
      EdgeInsets.symmetric(horizontal: 20, vertical: 10);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: containerPadding,
      child: TabContainer(
        children: [
          ForecastContainerHeader(
              title: 'AIR QUALITY',
              icon: ForecastContainersIconProvider.airQuality),
          const SizedBox(height: 5),
          const Text('3-Low Health Risk', style: AppTextStyles.title),
          const SizedBox(height: 10),
          const LineValueIndicator(),
          const SizedBox(height: 5),
        ],
      ),
    );
  }
}
