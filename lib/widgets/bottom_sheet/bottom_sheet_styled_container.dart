import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/attribute_helpers/colors_helper.dart';
import '../../helpers/attribute_helpers/filters.dart';

class StyledContainerForBottomSheet extends StatelessWidget {
  const StyledContainerForBottomSheet({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _Dimensions.fullDeviceWidth,
      height: _Dimensions.bottomSheetHeight,
      decoration: _BottomSheetDecorations.outerContainerDecoration,
      clipBehavior: Clip.hardEdge,
      child: BackdropFilter(
        filter: Filters.blurFilter,
        child: Container(
            decoration: _BottomSheetDecorations.innerContainerDecoration,
            child: child),
      ),
    );
  }
}

abstract class _Dimensions {
  static final double fullDeviceWidth = 100.w;
  static final double bottomSheetHeight = 80.h;
}

abstract class _BottomSheetDecorations {
  static const outerContainerDecoration = BoxDecoration(
    borderRadius: _BorderRadiusHelper.containerBorderRadius,
    gradient: _GradientHelper.outerContainerGradient,
  );
  static const innerContainerDecoration = BoxDecoration(
      border: _BorderHelper.innerContainerBorder,
      borderRadius: _BorderRadiusHelper.containerBorderRadius,
      gradient: _GradientHelper.innerContainerGradient);
}

abstract class _BorderRadiusHelper {
  static const containerBorderRadius = BorderRadius.only(
      topLeft: sheetBorderRadius, topRight: sheetBorderRadius);
  static const sheetBorderRadius = Radius.circular(50);
}

abstract class _BorderHelper {
  static const innerContainerBorder =
      Border(top: BorderSide(color: ExtraColors.white30opacity, width: 1));
}

abstract class _GradientHelper {
  static const outerContainerGradient = LinearGradient(
    colors: [ExtraColors.semiTransparentPurple, Colors.transparent],
    begin: Alignment.topCenter,
    end: Alignment.center,
  );

  static const innerContainerGradient = LinearGradient(
    begin: Alignment(-0.08, -1.0),
    end: Alignment(1.0, 0.95),
    colors: [
      ExtraColors.semiTransparentDarkBlue,
      ExtraColors.darkBlueOverlay,
    ],
    stops: [0.0468, 0.9545],
  );
}
