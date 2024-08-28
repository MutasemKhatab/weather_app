import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../providers/forecast_tab_controller_provider.dart';

class ForecastTabBar extends StatelessWidget {
  const ForecastTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController =
        Provider.of<ForecastTabControllerProvider>(context).controller;
    return TabBar(
      controller: tabController,
      tabs: const [
        Tab(text: 'Hourly Forecast'),
        Tab(text: 'Daily Forecast'),
      ],
    );
  }
}
