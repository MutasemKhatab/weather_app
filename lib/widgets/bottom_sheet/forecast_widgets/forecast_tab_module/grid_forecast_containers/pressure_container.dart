import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../../helpers/painters/pressure_painter.dart';
import '../../../../../providers/forecast_containers_icon_provider.dart';
import 'forecast_container_header.dart';
import 'tab_container.dart';

class PressureContainer extends StatelessWidget {
  const PressureContainer({super.key});

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
                PressurePainter(pressure: 1000.25), // Example pressure value
          ),
        ),
      ],
    );
  }
}
