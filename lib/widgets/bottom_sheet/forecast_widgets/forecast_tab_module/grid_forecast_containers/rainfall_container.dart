import 'package:flutter/material.dart';

import '../../../../../helpers/style_helpers/app_text_styles.dart';
import '../../../../../providers/forecast_containers_icon_provider.dart';
import 'forecast_container_header.dart';
import 'tab_container.dart';

class RainfallContainer extends StatelessWidget {
  const RainfallContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return TabContainer(
      children: [
        ForecastContainerHeader(
            title: 'RAINFALL', icon: ForecastContainersIconProvider.rainfall),
        const Text('1.8 mm', style: AppTextStyles.title),
        const Text('in last hour', style: AppTextStyles.labelLarge),
        const Spacer(),
        const Text('2.3 mm expected in next 24h',
            style: AppTextStyles.bodySmall),
      ],
    );
  }
}
