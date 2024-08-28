import 'package:flutter/material.dart';

import '../../../../../helpers/style_helpers/app_text_styles.dart';
import '../../../../../helpers/style_helpers/extra_colors.dart';
import 'forecast_container_image.dart';

class VerticalForecastContainer extends StatelessWidget {
  const VerticalForecastContainer({
    super.key,
    required this.time,
    required this.icon,
    required this.temp,
  });

  final containerPadding =
      const EdgeInsets.symmetric(horizontal: 10, vertical: 16);
  final containerMargin = const EdgeInsets.only(left: 10);
  final String time;
  final String icon;
  final int temp;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: containerMargin,
      padding: containerPadding,
      decoration: _DecorationHelper.roundedRectangleWithShadow,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(time, style: AppTextStyles.bodyMedium),
          ForecastContainerImage(iconCode: icon),
          Text('$temp°', style: AppTextStyles.bodyMedium),
        ],
      ),
    );
  }
}

abstract class _DecorationHelper {
  static const _backgroundColor = Color(0x3348319D);

  static const _sideColor = ExtraColors.semiTransparentLightWhite;
  static const _shadowColor = Color(0x3F000000);
  static const _shadowOffset = Offset(5, 4);
  static const _borderRadius = BorderRadius.all(Radius.circular(30));

  static const Decoration roundedRectangleWithShadow = ShapeDecoration(
    color: _backgroundColor,
    shape: RoundedRectangleBorder(
      side: BorderSide(width: 0.5, color: _sideColor),
      borderRadius: _borderRadius,
    ),
    shadows: [
      BoxShadow(color: _shadowColor, blurRadius: 10, offset: _shadowOffset)
    ],
  );
}
