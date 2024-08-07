import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:some_random_design1/providers/bottom_sheet_scroll_controller_provider.dart';
import 'package:some_random_design1/widgets/bottom_sheet/forecast_widgets/forecast_containers_list/forecast_listview.dart';

class ForecastTab extends StatelessWidget {
  const ForecastTab({super.key});

  @override
  Widget build(BuildContext context) {
    final scrollController =
        Provider.of<BottomSheetScrollControllerProvider>(context)
            .scrollViewController;

    return SingleChildScrollView(
        controller: scrollController, child: const ForecastListView());
  }
}
