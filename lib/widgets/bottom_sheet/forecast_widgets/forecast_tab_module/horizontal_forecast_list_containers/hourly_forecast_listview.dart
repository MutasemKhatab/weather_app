import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'hourly_forecast_container.dart';

class HourlyForecastListView extends StatelessWidget {
  const HourlyForecastListView({super.key});

  final listPadding = const EdgeInsets.only(bottom: 10, right: 10, top: 10);
  final scrollDirection = Axis.horizontal;

  @override
  Widget build(BuildContext context) {
    final tabViewHeight = 20.h;

    return SizedBox(
      height: tabViewHeight,
      child: ListView.builder(
        padding: listPadding,
        //TODO: this is a placeholder
        itemCount: 10,
        scrollDirection: scrollDirection,
        itemBuilder: (_, index) => HourlyForecastContainer(index: index),
      ),
    );
  }
}
