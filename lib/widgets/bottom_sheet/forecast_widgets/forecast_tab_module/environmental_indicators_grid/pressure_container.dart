import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:some_random_design1/providers/forecast/weather_info.dart';

import '../../../../../helpers/painters/pressure_painter.dart';
import '../../../../../providers/forecast_containers_icon_provider.dart';
import 'forecast_container_header.dart';
import 'tab_container.dart';

class PressureContainer extends StatelessWidget {
  const PressureContainer({super.key});
static final pressure =WeatherInfo.pressure;
  @override
  Widget build(BuildContext context) {
    return TabContainer(
      children: [
        ForecastContainerHeader(
            title: 'PRESSURE', icon: ForecastContainersIconProvider.pressure),
        Center(
          child: CustomPaint(
            size: Size(25.w, 25.w),
            painter:
                PressurePainter(pressure: pressure), // Example pressure value
          ),
        ),
      ],
    );
  }
}
