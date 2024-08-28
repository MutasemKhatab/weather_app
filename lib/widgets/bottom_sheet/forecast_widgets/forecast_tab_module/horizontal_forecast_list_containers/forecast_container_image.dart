import 'dart:math';

import 'package:flutter/material.dart';
import 'package:some_random_design1/providers/forecast_image_provider.dart';

class ForecastContainerImage extends StatelessWidget {
  const ForecastContainerImage({super.key, required this.iconCode});

  final String iconCode;

  //TODO remove
  static final imageList = [
    ForecastImageProvider.sunCloudMidRain,
    ForecastImageProvider.moonCloudAngledRain,
    ForecastImageProvider.moonCloudMidRain,
    ForecastImageProvider.moonCloudFastWind,
    ForecastImageProvider.tornado,
  ];

  Image get randomImage {
    Random random = Random();
    final randomIndex = random.nextInt(imageList.length);
    return imageList[randomIndex];
  }

  String get iconUrl {
    return 'https://openweathermap.org/img/wn/$iconCode.png';
  }

  @override
  Widget build(BuildContext context) {
    return Image.network(iconUrl, fit: BoxFit.contain, width: 35, height: 35);
  }
}
