import 'dart:math';

import 'package:flutter/material.dart';
import 'package:some_random_design1/providers/forecast_image_provider.dart';

class ForecastContainerImage extends StatelessWidget {
  const ForecastContainerImage({super.key});

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

  @override
  Widget build(BuildContext context) {
    return randomImage;
  }
}
