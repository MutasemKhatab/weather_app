import 'package:flutter/material.dart';

class ForecastTabControllerProvider extends ChangeNotifier {
  ForecastTabControllerProvider(this._tabController);

  final TabController _tabController;

  TabController get controller => _tabController;
}
