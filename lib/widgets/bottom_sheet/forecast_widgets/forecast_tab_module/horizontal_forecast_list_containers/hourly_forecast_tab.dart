import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:some_random_design1/providers/bottom_sheet_scroll_controller_provider.dart';
import 'package:some_random_design1/widgets/bottom_sheet/forecast_widgets/forecast_tab_module/horizontal_forecast_list_containers/hourly_forecast_listview.dart';

import '../environmental_indicators_grid/forecast_grid.dart';

class HourlyForecastTab extends StatelessWidget {
  const HourlyForecastTab({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController =
        Provider.of<BottomSheetScrollControllerProvider>(context)
            .scrollViewController;
    return SingleChildScrollView(
      controller: scrollController,
      child: const Column(
        children: [
          HourlyForecastListView(),
          ForecastGrid(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
