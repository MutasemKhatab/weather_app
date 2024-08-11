import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../helpers/style_helpers/extra_colors.dart';
import '../../helpers/style_helpers/filters.dart';
import 'bottom_sheet_container.dart';
import 'bottom_sheet_dragger.dart';

class StyledContainerForBottomSheet extends StatelessWidget {
  const StyledContainerForBottomSheet({super.key});

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
            child: const Column(children: [
              _Dimensions.space,
              BottomSheetDragger(),
              _Dimensions.space,
              BottomSheetContainer()
            ])),
      ),
    );
  }
}

abstract class _Dimensions {
  static final double fullDeviceWidth = 100.w;
  static final double bottomSheetHeight = 80.h;
  static const space = SizedBox(height: 8);
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
  static const innerContainerBorder = Border(
      top: BorderSide(color: ExtraColors.semiTransparentLightWhite, width: 1));
}

abstract class _GradientHelper {
  static const outerContainerGradient = LinearGradient(
    colors: [ExtraColors.semiTransparentViolet, Colors.transparent],
    begin: Alignment.topCenter,
    end: Alignment(0, 0.75),
  );

  static const innerContainerGradient = LinearGradient(
    begin: Alignment(-0.08, -1.0),
    end: Alignment(1.0, 0.95),
    colors: [
      ExtraColors.semiTransparentNavyBlue,
      ExtraColors.semiTransparentMidnightBlue,
    ],
    stops: [0.0468, 0.9545],
  );
}
