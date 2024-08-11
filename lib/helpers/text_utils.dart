import 'package:flutter/material.dart';

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
}
