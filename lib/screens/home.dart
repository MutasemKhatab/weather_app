import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:some_random_design1/widgets/bottom_sheet/forecast_widgets/forecast_bottom_sheet.dart';
import 'package:some_random_design1/widgets/home_weather_header.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      bottomSheet: ProviderScope(child: ForecastBottomSheet()),
      body: HomeWeatherHeader(),
    );
  }
}
