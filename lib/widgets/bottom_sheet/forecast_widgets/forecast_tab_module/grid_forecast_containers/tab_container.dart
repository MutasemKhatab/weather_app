import 'package:flutter/material.dart';
import 'package:some_random_design1/helpers/style_helpers/extra_colors.dart';

class TabContainer extends StatelessWidget {
  const TabContainer({super.key, required this.children});

  final List<Widget> children;

  static const containerPadding =
      EdgeInsets.symmetric(horizontal: 10, vertical: 10);
  static const decoration = BoxDecoration(
    color: ExtraColors.darkPurple,
    border: Border.fromBorderSide(BorderSide(color: ExtraColors.deepLavender)),
    borderRadius: BorderRadius.all(Radius.circular(20)),
  );

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: containerPadding,
        decoration: decoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: children,
        ));
  }
}
