import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:some_random_design1/providers/forecast_tab_controller_provider.dart';

import 'forecast_tab.dart';

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
          ForecastTab(),
          ForecastTab(),
        ],
      ),
    );
  }
}
