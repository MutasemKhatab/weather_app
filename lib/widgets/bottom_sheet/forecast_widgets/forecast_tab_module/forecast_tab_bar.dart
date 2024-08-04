import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../providers/forecast_tab_controller_provider.dart';

class ForecastTabBar extends ConsumerWidget {
  const ForecastTabBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final TabController tabController =
        ref.read(forecastTabControllerProvider).controller;
    return TabBar(
      controller: tabController,
      tabs: const [
        Tab(text: 'Hourly Forecast'),
        Tab(text: 'Weekly Forecast'),
      ],
    );
  }
}
