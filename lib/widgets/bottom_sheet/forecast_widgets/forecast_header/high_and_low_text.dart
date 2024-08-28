import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/style_helpers/app_text_styles.dart';
import 'package:some_random_design1/providers/forecast/weather_info.dart';

import '../../../../helpers/forecast_header_helpers/high_and_low_text_utils.dart';

class HighAndLowText extends StatelessWidget {
  const HighAndLowText({super.key, required this.heightScale});

  final double heightScale;
  static final high = WeatherInfo.high;
  static final low = WeatherInfo.low;

  @override
  Widget build(BuildContext context) {
    final utils = HighAndLowTextUtils(heightScale);

    if (utils.isHidden) return const SizedBox.shrink();

    return Positioned(
      top: utils.topPosition,
      child: Opacity(
        opacity: utils.reversedHeightScale,
        child: Text('H:$high°   L:$low°', style: AppTextStyles.headlineLarge),
      ),
    );
  }
}
