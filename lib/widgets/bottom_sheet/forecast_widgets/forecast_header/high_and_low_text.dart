import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/style_helpers/app_text_styles.dart';

import '../../../../helpers/forecast_header_helpers/high_and_low_text_utils.dart';

class HighAndLowText extends StatelessWidget {
  const HighAndLowText({super.key, required this.heightScale});

  final double heightScale;

  @override
  Widget build(BuildContext context) {
    final utils = HighAndLowTextUtils(heightScale);

    if (utils.isHidden) return const SizedBox.shrink();

    return Positioned(
      top: utils.topPosition,
      child: Opacity(
        opacity: utils.reversedHeightScale,
        child: const Text('H:24°   L:18°', style: AppTextStyles.headlineLarge),
      ),
    );
  }
}
