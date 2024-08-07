import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/scroll_utils.dart';

import '../../../../helpers/text_utils.dart';
import 'city_name_text.dart';
import 'current_degree_text.dart';
import 'degree_forecast_type_divider.dart';
import 'forecast_type_text.dart';
import 'high_and_low_text.dart';

class ForecastHeaderContent extends StatelessWidget {
  const ForecastHeaderContent({super.key});

  static final heightNotifier = ScrollUtils.heightNotifier;

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: heightNotifier,
        builder: (_, height, __) {
          final heightScale = TextUtils.calculateHeightScale(height);

          return Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              const CityNameText(),
              CurrentDegreeText(heightScale: heightScale),
              ForecastTypeText(heightScale: heightScale),
              DegreeForecastTypeDivider(opacity: heightScale),
              HighAndLowText(heightScale: heightScale),
            ],
          );
        });
  }
}
