import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/forecast_tab_controller_provider.dart';
import 'forecast_widgets/forecast_tab_module/forecast_tab_bar.dart';
import 'forecast_widgets/forecast_tab_module/forecast_tab_view.dart';

class BottomSheetContainer extends StatelessWidget {
  const BottomSheetContainer({super.key});

  final tabViewContainerPadding = const EdgeInsets.only(top: 20, bottom: 10);

  ForecastTabControllerProvider initializeTabController(BuildContext _) {
    final tabController = TabController(length: 2, vsync: Scaffold.of(_));

    return ForecastTabControllerProvider(tabController);
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: initializeTabController,
      child: const Expanded(
        child: Column(
          children: [
            ForecastTabBar(),
            ForecastTabView(),
          ],
        ),
      ),
    );
  }
}
