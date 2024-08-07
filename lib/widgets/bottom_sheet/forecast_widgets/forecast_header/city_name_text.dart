import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:some_random_design1/helpers/style_helpers/app_text_styles.dart';

class CityNameText extends StatelessWidget {
  const CityNameText({super.key});

  static final topPosition = -2.h;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: topPosition,
      child: const Text('Montreal', style: AppTextStyles.displayMedium),
    );
  }
}
