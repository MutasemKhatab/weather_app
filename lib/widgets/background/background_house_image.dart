import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../providers/background_image_provider.dart';

class BackgroundHouseImage extends StatelessWidget {
  const BackgroundHouseImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(top: 10.h),
        child: BackgroundImageProvider.illustrationImage);
  }
}
