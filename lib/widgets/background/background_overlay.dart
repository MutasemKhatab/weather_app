import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/style_helpers/extra_colors.dart';

import '../../helpers/scroll_utils.dart';

class BackgroundOverlay extends StatelessWidget {
  const BackgroundOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScrollUtils.heightNotifier,
      builder: (_, height, __) {
        return Opacity(
          opacity: height,
          child: Container(
            decoration: containerDecoration,
          ),
        );
      },
    );
  }

  static const containerDecoration = BoxDecoration(
    gradient: gradient,
  );
  static const gradient = LinearGradient(
    begin: beginAlignment,
    end: endAlignment,
    colors: colors,
  );
  static const beginAlignment = Alignment(1.0, -0.62);
  static const endAlignment = Alignment(-0.95, 0.72);
  static const colors = [ExtraColors.deepPurple, ExtraColors.darkIndigo];
}
