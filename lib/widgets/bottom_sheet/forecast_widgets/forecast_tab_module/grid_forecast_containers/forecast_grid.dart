import 'package:flutter/material.dart';

import 'air_quality_container.dart';
import 'feels_like_container.dart';
import 'humidity_container.dart';
import 'pressure_container.dart';
import 'rainfall_container.dart';
import 'sunrise_container.dart';
import 'uv_index_container.dart';
import 'visibility_container.dart';
import 'wind_container.dart';

class ForecastGrid extends StatelessWidget {
  const ForecastGrid({super.key});

  static const gridPadding = EdgeInsets.symmetric(horizontal: 20);
  static const spacing = 10.0;
  static const childAspectRatio = 1.2;
  static const physics = NeverScrollableScrollPhysics();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const AirQualityContainer(),
        GridView.count(
          padding: gridPadding,
          shrinkWrap: true,
          crossAxisCount: 2,
          crossAxisSpacing: spacing,
          mainAxisSpacing: spacing,
          childAspectRatio: childAspectRatio,
          physics: physics,
          children: const [
            UVIndexContainer(),
            SunriseContainer(),
            WindContainer(),
            RainfallContainer(),
            FeelsLikeContainer(),
            HumidityContainer(),
            VisibilityContainer(),
            PressureContainer()
          ],
        ),
      ],
    );
  }
}
