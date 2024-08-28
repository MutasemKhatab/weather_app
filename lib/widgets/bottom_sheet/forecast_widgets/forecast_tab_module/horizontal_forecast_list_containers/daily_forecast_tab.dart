import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:some_random_design1/providers/bottom_sheet_scroll_controller_provider.dart';

import '../environmental_indicators_grid/forecast_grid.dart';
import 'daily_forecast_listview.dart';

class DailyForecastTab extends StatelessWidget {
  const DailyForecastTab({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController =
        Provider.of<BottomSheetScrollControllerProvider>(context)
            .scrollViewController;
    return SingleChildScrollView(
      controller: scrollController,
      child: const Column(
        children: [
          DailyForecastListView(),
          ForecastGrid(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
