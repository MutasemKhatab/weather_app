import 'package:flutter/material.dart';
import 'package:some_random_design1/providers/background_image_provider.dart';

import 'background_house_image.dart';
import 'background_overlay.dart';

class Background extends StatelessWidget {
  const Background({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageProvider.backgroundImage,
        const BackgroundHouseImage(),
        const BackgroundOverlay(),
      ],
    );
  }
}


