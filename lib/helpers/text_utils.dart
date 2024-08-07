import 'package:flutter/material.dart';

import '../consts/bottom_sheet_consts.dart';

abstract class TextUtils {
  static double calculateLetterWidths(String text, TextStyle style) {
    double totalWidth = 0;
    final textPainter = TextPainter(
      textDirection: TextDirection.ltr,
    );

    textPainter.text = TextSpan(text: text, style: style);
    textPainter.layout();
    totalWidth = textPainter.size.width;

    return totalWidth;
  }

  //TODO calculate it once in the listener and see whats the error from
  static double calculateHeightScale(double height) {
    final normalizedHeight = height - minBottomSheetHeight;
    final heightScale = normalizedHeight / bottomSheetHeightDifference;

    return heightScale;
  }
}
