import 'package:flutter/material.dart';
import 'package:some_random_design1/widgets/bottom_sheet/forecast_listview.dart';

class ForecastTab extends StatelessWidget {
  const ForecastTab({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        controller: scrollController,
        child: const Column(
          children: [
            ForecastListView(),
            SizedBox(height: 1000),
          ],
        ));
  }
}
