import 'package:flutter/material.dart';


class ForecastTabBar extends StatelessWidget {
  const ForecastTabBar({
    super.key,
    required this.tabController,
  });

  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return TabBar(
      //TODO: make provider for the tab bar
      controller: tabController,
      tabs: const [
        Tab(text: 'Hourly Forecast'),
        Tab(text: 'Weekly Forecast'),
      ],
    );
  }
}
