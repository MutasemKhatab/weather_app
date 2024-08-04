import 'package:flutter/material.dart';
import '../../helpers/style_helpers/extra_colors.dart';

class BottomSheetDragger extends StatelessWidget {
  const BottomSheetDragger({super.key});

  final width = 50.0;
  final height = 5.0;

  final decoration = const BoxDecoration(
      color: ExtraColors.black30opacity,
      borderRadius: BorderRadius.all(Radius.circular(10)));

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: decoration,
    );
  }
}
