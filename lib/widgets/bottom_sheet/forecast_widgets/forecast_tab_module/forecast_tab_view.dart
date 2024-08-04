import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:some_random_design1/providers/forecast_tab_controller_provider.dart';

import 'forecast_tab.dart';

class ForecastTabView extends ConsumerWidget {
  const ForecastTabView({
    super.key
  });
  final scrollPhysics = const NeverScrollableScrollPhysics();

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    final tabController =
        ref.read(forecastTabControllerProvider.notifier).controller;
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
