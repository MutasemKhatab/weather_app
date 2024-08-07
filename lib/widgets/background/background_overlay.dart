import 'package:flutter/material.dart';

import '../../helpers/scroll_utils.dart';
import '../../helpers/text_utils.dart';

class BackgroundOverlay extends StatelessWidget {
  const BackgroundOverlay({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ScrollUtils.heightNotifier,
      builder: (_, height, __) {
        return Opacity(
          opacity: TextUtils.calculateHeightScale(height),
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
  static const colors = [
    startColor,
    endColor,
  ];
  //TODO: move to extra colors
  static const startColor = Color(0xFF422E5A);
  static const endColor = Color(0xFF1C1B33);
}
