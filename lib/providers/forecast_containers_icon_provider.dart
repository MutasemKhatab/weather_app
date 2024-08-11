import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:some_random_design1/helpers/style_helpers/extra_colors.dart';

abstract class ForecastContainersIconProvider {
  static const String _airQuality = 'air_quality.svg';
  static const String _humidity = 'humidity.svg';
  static const String _pressure = 'pressure.svg';
  static const String _feelsLike = 'feels_like.svg';
  static const String _wind = 'wind.svg';
  static const String _sunrise = 'sunrise.svg';
  static const String _uvIndex = 'sun.svg';
  static const String _visibility = 'visibility.svg';
  static const String _rainfall = 'rainfall.svg';

  static SvgPicture _svgWidget(String svgName) {
    const colorFilter =
        ColorFilter.mode(ExtraColors.semiTransparentWhite, BlendMode.srcIn);

    return SvgPicture.asset('assets/icons/$svgName',
        width: 25, height: 25, colorFilter: colorFilter);
  }

  static SvgPicture get airQuality => _svgWidget(_airQuality);

  static SvgPicture get humidity => _svgWidget(_humidity);

  static SvgPicture get pressure => _svgWidget(_pressure);

  static SvgPicture get feelsLike => _svgWidget(_feelsLike);

  static SvgPicture get wind => _svgWidget(_wind);

  static SvgPicture get sunrise => _svgWidget(_sunrise);

  static SvgPicture get uvIndex => _svgWidget(_uvIndex);

  static SvgPicture get visibility => _svgWidget(_visibility);

  static SvgPicture get rainfall => _svgWidget(_rainfall);
}
