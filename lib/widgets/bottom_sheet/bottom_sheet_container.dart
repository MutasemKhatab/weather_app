import 'package:flutter/material.dart';
import 'forecast_widgets/forecast_tab_module/forecast_tab_bar.dart';
import 'forecast_widgets/forecast_tab_module/forecast_tab_view.dart';

class BottomSheetContainer extends StatefulWidget {
  const BottomSheetContainer({super.key, required this.scrollController});

  final ScrollController scrollController;

  @override
  State<BottomSheetContainer> createState() => _BottomSheetContainerState();
}

class _BottomSheetContainerState extends State<BottomSheetContainer>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late ScrollController scrollController;
  final tabViewContainerPadding = const EdgeInsets.only(top: 20, bottom: 10);

  @override
  void initState() {
    super.initState();
    initializeLateVariables();
  }

  void initializeLateVariables() {
    scrollController = widget.scrollController;
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          ForecastTabBar(tabController: tabController),
          ForecastTabView(
              tabController: tabController, scrollController: scrollController),
        ],
      ),
    );
  }
}
