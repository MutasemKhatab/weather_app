import 'package:flutter/painting.dart';

import '../attribute_helpers/colors_helper.dart';

abstract class AppTextStyles {
  static const whiteDefault = TextStyle(color: ExtraColors.defaultTextColor);
  static const displayLarge =
      TextStyle(color: ExtraColors.defaultTextColor, fontSize: 90, height: 0.9);
  static const displayMedium =
      TextStyle(color: ExtraColors.defaultTextColor, fontSize: 35);
  static const displaySmall = TextStyle(
      fontSize: 18, fontWeight: FontWeight.bold, color: ExtraColors.semiWhite);
  static const headlineLarge =
      TextStyle(color: ExtraColors.defaultTextColor, fontSize: 18, height: 0.7);
  static const labelLarge =
      TextStyle(fontSize: 17, fontWeight: FontWeight.bold);
  static const bodyMedium = TextStyle(
    color: ExtraColors.defaultTextColor,
    fontSize: 15,
    fontWeight: FontWeight.bold,
  );
}
