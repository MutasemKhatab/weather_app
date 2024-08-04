import 'package:flutter/material.dart';

import '../helpers/style_helpers/app_text_styles.dart';

class HomeWeatherHeader extends StatelessWidget {
  const HomeWeatherHeader({super.key});

  @override
  Widget build(BuildContext context) {
    const alignment = Alignment(0.0, -0.75);
    const columnSize = MainAxisSize.min;

    return const Align(
      alignment: alignment,
      child: Column(
        mainAxisSize: columnSize,
        children: [
          Text('Montreal', style: AppTextStyles.displayMedium),
          Text('19°', style: AppTextStyles.displayLarge),
          Text('Mostly Clear', style: AppTextStyles.displaySmall),
          Text('H:24°   L:18°', style: AppTextStyles.headlineLarge),
        ],
      ),
    );
  }
}
