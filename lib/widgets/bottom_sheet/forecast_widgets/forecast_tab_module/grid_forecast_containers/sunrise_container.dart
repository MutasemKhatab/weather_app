import 'package:flutter/material.dart';
import '../../../../../helpers/style_helpers/app_text_styles.dart';
import '../../../../../providers/forecast_containers_icon_provider.dart';
import 'forecast_container_header.dart';
import 'sunrise_sunset_curve.dart';
import 'tab_container.dart';

class SunriseContainer extends StatelessWidget {
  const SunriseContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return TabContainer(
      children: [
        ForecastContainerHeader(
            title: 'SUNRISE', icon: ForecastContainersIconProvider.sunrise),
        const Text('5:45 PM', style: AppTextStyles.title),
        const Spacer(),
        const SunriseSunsetCurve(),
        const Text('Sunset: 5:45 PM', style: AppTextStyles.bodySmall),
      ],
    );
  }
}
