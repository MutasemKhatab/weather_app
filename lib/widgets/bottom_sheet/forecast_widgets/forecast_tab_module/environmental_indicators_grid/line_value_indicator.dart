import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/style_helpers/extra_colors.dart';

class LineValueIndicator extends StatelessWidget {
  const LineValueIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF3658B1), Color(0xFFE64294)],
        ),
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      alignment: Alignment.center,
      child: OverflowBox(
        maxHeight: 10,
        child: Container(
          height: 10,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            border: Border.all(color: ExtraColors.darkPurple, width: 2),
          ),
        ),
      ),
    );
  }
}
