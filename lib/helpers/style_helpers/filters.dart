import 'dart:ui';

abstract class Filters {
  static const _blurValue = 25.0;
  static final blurFilter =
      ImageFilter.blur(sigmaX: _blurValue, sigmaY: _blurValue);
}
