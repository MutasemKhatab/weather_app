import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/style_helpers/app_text_styles.dart';

import '../../../../helpers/forecast_header_helpers/forecast_type_text_utils.dart';

class ForecastTypeText extends StatelessWidget {
  const ForecastTypeText({super.key, required this.heightScale});

  final double heightScale;

  @override
  Widget build(BuildContext context) {
    final utils = ForecastTypeTextUtils(heightScale);
    return Positioned(
      top: utils.topPosition,
      left: utils.leftPosition,
      child: SizedBox(
        width: utils.textWidth,
        child: const Text(
          'Mostly Clear',
          textAlign: TextAlign.center,
          style: AppTextStyles.displaySmall,
        ),
      ),
    );
  }
}
