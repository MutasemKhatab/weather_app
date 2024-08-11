import 'package:flutter/material.dart';

import '../../../../../helpers/style_helpers/app_text_styles.dart';
import '../../../../../providers/forecast_containers_icon_provider.dart';
import 'forecast_container_header.dart';
import 'tab_container.dart';

class HumidityContainer extends StatelessWidget {
  const HumidityContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return TabContainer(
      children: [
        ForecastContainerHeader(
            title: 'HUMIDITY', icon: ForecastContainersIconProvider.humidity),
        const SizedBox(height: 5),
        const Text('90%', style: AppTextStyles.title),
        const Spacer(),
        const Text('The dew point is 17 right now',
            style: AppTextStyles.bodySmall),
      ],
    );
  }
}
