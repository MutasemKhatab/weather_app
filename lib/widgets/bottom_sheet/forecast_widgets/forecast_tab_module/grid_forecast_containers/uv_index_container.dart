import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/style_helpers/app_text_styles.dart';

import '../../../../../providers/forecast_containers_icon_provider.dart';
import 'forecast_container_header.dart';
import 'line_value_indicator.dart';
import 'tab_container.dart';

class UVIndexContainer extends StatelessWidget {
  const UVIndexContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return TabContainer(
      children: [
        ForecastContainerHeader(
            title: 'UV INDEX', icon: ForecastContainersIconProvider.uvIndex),
        const SizedBox(height: 10),
        const Text('4', style: AppTextStyles.title),
        const Text('Moderate', style: AppTextStyles.title),
        const SizedBox(height: 10),
        const LineValueIndicator(),
      ],
    );
  }
}
