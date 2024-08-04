import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/forecast_tab_controller_provider.dart';
import 'forecast_widgets/forecast_tab_module/forecast_tab_bar.dart';
import 'forecast_widgets/forecast_tab_module/forecast_tab_view.dart';

class BottomSheetContainer extends ConsumerWidget {
  const BottomSheetContainer({super.key});

  final tabViewContainerPadding = const EdgeInsets.only(top: 20, bottom: 10);

  void initializeTabController(BuildContext context,WidgetRef ref){
    ref.read(forecastTabControllerProvider).initializeTabController(context);
  }

  @override
  Widget build(BuildContext context,WidgetRef ref) {
    initializeTabController(context, ref);

    return const Expanded(
      child: Column(
        children: [
          ForecastTabBar(),
          ForecastTabView(),
        ],
      ),
    );
  }
}
