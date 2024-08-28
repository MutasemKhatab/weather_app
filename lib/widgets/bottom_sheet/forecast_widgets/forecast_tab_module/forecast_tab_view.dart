import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:some_random_design1/providers/forecast_tab_controller_provider.dart';
import 'package:some_random_design1/widgets/bottom_sheet/forecast_widgets/forecast_tab_module/horizontal_forecast_list_containers/hourly_forecast_tab.dart';

import 'daily_forecast_tab.dart';

class ForecastTabView extends StatelessWidget {
  const ForecastTabView({super.key});

  final scrollPhysics = const NeverScrollableScrollPhysics();

  @override
  Widget build(BuildContext context) {
    final tabController =
        Provider.of<ForecastTabControllerProvider>(context).controller;

    return Expanded(
      child: TabBarView(
        controller: tabController,
        physics: scrollPhysics,
        children: const [
          HourlyForecastTab(),
          DailyForecastTab(),
        ],
      ),
    );
  }
}
