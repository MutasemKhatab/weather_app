import 'package:flutter/material.dart';

import '../style_helpers/app_text_styles.dart';
import '../style_helpers/extra_colors.dart';
import '../style_helpers/tabbar_gradient_indicator.dart';

final theme = ThemeData(
  fontFamily: fontFamilyName,
  tabBarTheme: tabBarTheme,
  bottomSheetTheme: bottomSheetTheme,
);

const fontFamilyName = 'SfPro';

const tabBarTheme = TabBarTheme(
    labelColor: ExtraColors.semiTransparentPaleWhite,
    unselectedLabelColor: ExtraColors.semiTransparentPaleWhite,
    labelStyle: AppTextStyles.labelLarge,
    unselectedLabelStyle: AppTextStyles.labelLarge,
    dividerHeight: 3,
    dividerColor: ExtraColors.semiTransparentNavyBlue,
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: TabBarGradientIndicator(
        gradientColor: [Colors.transparent, ExtraColors.semiTransparentWhite],
        indicatorWidth: 3));

const bottomSheetTheme =
    BottomSheetThemeData(backgroundColor: Colors.transparent);
