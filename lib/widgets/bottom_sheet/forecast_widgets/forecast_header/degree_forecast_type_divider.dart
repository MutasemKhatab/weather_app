import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../helpers/style_helpers/app_text_styles.dart';

class DegreeForecastTypeDivider extends StatelessWidget {
  const DegreeForecastTypeDivider({super.key, required this.opacity});

  final double opacity;
  static final topPosition = 3.h;
  static final leftPosition = 40.5.w;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: topPosition,
        left: leftPosition,
        child: Opacity(
          opacity: opacity,
          child: const Text('|', style: AppTextStyles.displaySmall),
        ));
  }
}
