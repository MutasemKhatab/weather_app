import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:some_random_design1/widgets/bottom_sheet/forecast_widgets/forecast_tab_module/horizontal_forecast_list_containers/daily_forecast_container.dart';


class DailyForecastListView extends StatelessWidget {
  const DailyForecastListView({super.key});

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
        itemCount: 7,
        scrollDirection: scrollDirection,
        itemBuilder: (_, index) => DailyForecastContainer(index: index),
      ),
    );
  }
}
