import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ForecastTabControllerProvider extends ChangeNotifier {
  late TabController _tabController;

  void initializeTabController(BuildContext context) {
    _tabController = TabController(length: 2, vsync: Scaffold.of(context));
  }


  TabController get controller => _tabController;

}

final forecastTabControllerProvider = ChangeNotifierProvider((ref) {
  return ForecastTabControllerProvider();
});