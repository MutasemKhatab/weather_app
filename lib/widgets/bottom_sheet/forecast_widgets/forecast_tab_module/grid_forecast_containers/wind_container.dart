import 'package:flutter/material.dart';
import '../../../../../providers/forecast_containers_icon_provider.dart';
import 'compass.dart';
import 'forecast_container_header.dart';
import 'tab_container.dart';

class WindContainer extends StatelessWidget {
  const WindContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return TabContainer(
      children: [
        ForecastContainerHeader(
            title: 'WIND', icon: ForecastContainersIconProvider.wind),
        const Center(
          child: Compass(),
        ),
      ],
    );
  }
}
