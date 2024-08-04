import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/themes/app_text_styles.dart';
import '../attribute_helpers/colors_helper.dart';
import '../widgets_helper/tabbar_gradient_indicator.dart';

final theme = ThemeData(
  fontFamily: fontFamilyName,
  tabBarTheme: tabBarTheme,
  bottomSheetTheme: bottomSheetTheme,
);

const fontFamilyName = 'SfPro';

const tabBarTheme = TabBarTheme(
    labelColor: ExtraColors.semiWhite,
    unselectedLabelColor: ExtraColors.semiWhite,
    labelStyle: AppTextStyles.labelLarge,
    unselectedLabelStyle: AppTextStyles.labelLarge,
    dividerHeight: 3,
    dividerColor: ExtraColors.semiTransparentDarkBlue,
    indicatorSize: TabBarIndicatorSize.tab,
    indicator: TabBarGradientIndicator(
        gradientColor: [Colors.transparent, ExtraColors.white30opacity],
        indicatorWidth: 3));

const bottomSheetTheme =
    BottomSheetThemeData(backgroundColor: Colors.transparent);
