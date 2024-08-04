import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

abstract class BackgroundImageProvider {
  static const _backgroundImage = 'assets/images/background.png';
  static const _houseImage = 'assets/images/house.png';

  static final backgroundImage =
      Image.asset(_backgroundImage, width: 100.w, fit: BoxFit.fitWidth);
  static final illustrationImage = Image.asset(_houseImage, height: 40.h);
}
