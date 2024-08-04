import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:some_random_design1/providers/background_image_provider.dart';

import 'home.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImageProvider.backgroundImage,
        Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(top: 10.h),
            child: BackgroundImageProvider.illustrationImage),
        const Home(),
      ],
    );
  }
}
