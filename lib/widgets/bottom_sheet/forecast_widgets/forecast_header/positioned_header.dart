import 'package:flutter/material.dart';

import 'forecast_header_content.dart';

class PositionedHeader extends StatelessWidget {
  const PositionedHeader({super.key});

  static const alignment = Alignment(0.0, -0.75);

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: alignment,
      child: SizedBox(
        height: 75,
        child: ForecastHeaderContent(),
      ),
    );
  }
}
