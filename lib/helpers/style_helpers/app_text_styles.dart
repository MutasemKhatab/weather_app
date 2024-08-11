import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'extra_colors.dart';

abstract class AppTextStyles {
  static const whiteDefault = TextStyle(color: ExtraColors.defaultTextColor);
  static const displayLarge = TextStyle(
    color: ExtraColors.defaultTextColor,
    fontSize: 90,
  );
  static const displayMedium =
      TextStyle(color: ExtraColors.defaultTextColor, fontSize: 35);
  static const displaySmall = TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: ExtraColors.semiTransparentPaleWhite);
  static const bodyLarge = TextStyle(
      fontSize: 13,
      fontWeight: FontWeight.bold,
      color: ExtraColors.semiTransparentPaleWhite);
  static const headlineLarge =
      TextStyle(color: ExtraColors.defaultTextColor, fontSize: 18, height: 0.7);
  static const labelLarge = TextStyle(
      fontSize: 17,
      fontWeight: FontWeight.bold,
      color: ExtraColors.defaultTextColor);
  static const bodyMedium = TextStyle(
      color: ExtraColors.defaultTextColor,
      fontSize: 15,
      fontWeight: FontWeight.bold);
  static const bodySmall = TextStyle(
    color: ExtraColors.defaultTextColor,
    fontSize: 15,
  );
  static const title = TextStyle(
      color: ExtraColors.defaultTextColor,
      fontWeight: FontWeight.bold,
      fontSize: 20);
}
