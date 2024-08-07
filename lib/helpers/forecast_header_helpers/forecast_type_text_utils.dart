import 'package:sizer/sizer.dart';

import '../style_helpers/app_text_styles.dart';
import '../text_utils.dart';

class ForecastTypeTextUtils {
  ForecastTypeTextUtils(this.heightScale);

  final double heightScale;

  static final maxTopPosition = 14.h;
  static final minTopPosition = 3.h;
  static final positionDifference = 11.h; // maxTopPosition - minTopPosition;
  static const leftPositionFactor = 20;

  double? _textWidth;

  double get leftPosition {
    //TODO find a suitable name for this
    final normalizedLeftPosition = leftPositionFactor * heightScale;
    final middleScreen = 50.w - textWidth / 2;
    final leftPosition = middleScreen + normalizedLeftPosition;

    return leftPosition;
  }

  double get topPosition {
    //TODO find a suitable name for this
    final normalizedPosition = heightScale * positionDifference;
    final top = maxTopPosition - normalizedPosition;

    return top;
  }

  double get textWidth {
    _textWidth ??= TextUtils.calculateLetterWidths(
        'Mostly Clear', AppTextStyles.displaySmall);
    return _textWidth!;
  }
}
