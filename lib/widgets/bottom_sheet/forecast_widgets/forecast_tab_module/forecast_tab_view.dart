import 'package:flutter/material.dart';

import 'forecast_tab.dart';

class ForecastTabView extends StatelessWidget {
  final ScrollController scrollController;

  const ForecastTabView({
    super.key,
    //TODO: use provider instead of passing the parameter
    required this.tabController,
    required this.scrollController,
  });

  final TabController tabController;
  final scrollPhysics = const NeverScrollableScrollPhysics();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        physics: scrollPhysics,
        children: [
          ForecastTab(scrollController: scrollController),
          ForecastTab(scrollController: scrollController),
        ],
      ),
    );
  }
}
