import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'home.dart';

class BackgroundImage extends StatelessWidget {
  const BackgroundImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        //TODO: make provider for the background image
        Image.asset(
          'assets/images/background.png',
          width: 100.w,
          fit: BoxFit.fitWidth,
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(top: 10.h),
          child: Image.asset(
            'assets/images/house.png',
            width: 40.h,
          ),
        ),
        const Home(),
      ],
    );
  }
}
