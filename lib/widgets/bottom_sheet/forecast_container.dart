import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/attribute_helpers/colors_helper.dart';
import 'package:some_random_design1/helpers/themes/app_text_styles.dart';
import 'package:some_random_design1/widgets/bottom_sheet/forecast_container_image.dart';

class ForecastContainer extends StatelessWidget {
  const ForecastContainer({super.key});

  final containerPadding =
      const EdgeInsets.symmetric(horizontal: 10, vertical: 16);
  final containerMargin = const EdgeInsets.only(left: 10);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: containerMargin,
      padding: containerPadding,
      decoration: _DecorationHelper.roundedRectangleWithShadow,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('3 AM', style: AppTextStyles.bodyMedium),
          ForecastContainerImage(),
          Text('19°', style: AppTextStyles.bodyMedium),
        ],
      ),
    );
  }
}

/// TODO extract similar colors to [ExtraColors]
abstract class _DecorationHelper {
  static const _backgroundColor = Color(0x3348319D);
  static const _sideColor = Color(0x21FFFFFF);
  static const _shadowColor = Color(0x3F000000);
  static const _shadowOffset = Offset(5, 4);
  static const _borderRadius = BorderRadius.all(Radius.circular(30));

  static const Decoration roundedRectangleWithShadow =
      ShapeDecoration(
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
