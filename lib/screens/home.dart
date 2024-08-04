import 'package:flutter/material.dart';
import 'package:some_random_design1/widgets/home_weather_header.dart';
import 'package:some_random_design1/widgets/bottom_sheet/bottom_sheet.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.transparent,
      bottomSheet: ForecastBottomSheet(),
      body: HomeWeatherHeader(),
    );
  }
}
