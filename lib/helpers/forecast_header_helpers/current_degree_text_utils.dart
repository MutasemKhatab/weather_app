import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../style_helpers/extra_colors.dart';
import '../text_utils.dart';

class CurrentDegreeTextUtils {
  CurrentDegreeTextUtils(this.heightScale);

  final double heightScale;

  static const minFontSize = 18.0;
  static const maxFontSize = 96.0;
  static const sizeDifference = maxFontSize - minFontSize;
  static final maxTopPosition = 3.h;
  static final minTopPosition = -1.h;
  static final positionDifference = 4.h; // maxTopPosition - minTopPosition;
  static const leftPositionFactor = 55;
  double? _textWidth;

  double get leftPosition {
    final middleScreenPosition = 50.w - textWidth / 2;
    final reversedHeightScale = -1.0 * heightScale;
    final leftPosition = leftPositionFactor * reversedHeightScale;
    final left = middleScreenPosition + leftPosition;

    return left;
  }

  double get topPosition {
    final normalizedPosition = heightScale * positionDifference;
    final top = minTopPosition + normalizedPosition;

    return top;
  }

  double get textWidth {
    _textWidth ??= TextUtils.calculateLetterWidths('19°', style);
    return _textWidth!;
  }

  TextStyle get style {
    return TextStyle(
      fontSize: _fontSize,
      color: _color,
      fontWeight: _fontWeight,
    );
  }

  double get _fontSize {
    final fontSizeScale = sizeDifference * heightScale;
    final fontSize = maxFontSize - fontSizeScale;

    return fontSize;
  }

  Color get _color {
    return Color.lerp(
        ExtraColors.defaultTextColor, ExtraColors.semiWhite, heightScale)!;
  }

  FontWeight get _fontWeight {
    if (heightScale > 0.5) {
      return FontWeight.bold;
    } else {
      return FontWeight.normal;
    }
  }
}
