import 'package:sizer/sizer.dart';

class HighAndLowTextUtils {
  HighAndLowTextUtils(this.heightScale);

  final double heightScale;

  static final maxTopPosition = 18.h;
  static final minTopPosition = 8.h;
  static final positionDifference = 10.h; // maxTopPosition - minTopPosition;

  double get topPosition {
    final normalizedPosition = heightScale * positionDifference;
    final topPosition = maxTopPosition - normalizedPosition;

    return topPosition;
  }

  double get reversedHeightScale {
    final reversedHeightScale = 1.0 - heightScale;

    return reversedHeightScale;
  }

  bool get isHidden {
    final isHidden = reversedHeightScale < 0.0;

    return isHidden;
  }
}
