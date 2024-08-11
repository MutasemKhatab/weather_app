import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:some_random_design1/widgets/background/background.dart';
import 'package:some_random_design1/widgets/bottom_sheet/forecast_widgets/forecast_bottom_sheet.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, deviceType) => const Scaffold(
        bottomSheet: Foreground(),
        body: Background(),
      ),
    );
  }
}
