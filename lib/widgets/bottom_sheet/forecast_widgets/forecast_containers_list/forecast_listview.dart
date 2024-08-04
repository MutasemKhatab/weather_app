import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'forecast_container.dart';

class ForecastListView extends StatelessWidget {
  const ForecastListView({super.key});

  final listPadding = const EdgeInsets.only(bottom: 10, right: 10, top: 10);
  final scrollDirection = Axis.horizontal;

  @override
  Widget build(BuildContext context) {
    final tabViewHeight = 20.h;

    return SizedBox(
      height: tabViewHeight,
      child: ListView.builder(
        padding: listPadding,
        //TODO: this is a placeholder
        itemCount: 10,
        //TODO: use provider instead of passing the parameter
        scrollDirection: scrollDirection,
        itemBuilder: (_, index) => const ForecastContainer(),
      ),
    );
  }
}
