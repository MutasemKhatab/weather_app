// ignore_for_file: constant_identifier_names

import 'package:flutter/widgets.dart';

abstract class ForecastImageProvider {
  static const String _moon_cloud_fast_wind =
      'assets/images/forecast/moon_cloud_fast_wind.png';
  static const String _moon_cloud_mid_rain =
      'assets/images/forecast/moon_cloud_mid_rain.png';
  static const String _sun_cloud_angled_rain =
      'assets/images/forecast/sun_cloud_angled_rain.png';
  static const String _sun_cloud_mid_rain =
      'assets/images/forecast/sun_cloud_mid_rain.png';
  static const String _tornado = 'assets/images/forecast/tornado.png';

  static Image _containerImage(String path) =>
      Image.asset(path, fit: BoxFit.contain, width: 32, height: 32);

  static Image get moonCloudFastWind => _containerImage(_moon_cloud_fast_wind);
  static Image get moonCloudMidRain => _containerImage(_moon_cloud_mid_rain);
  static Image get moonCloudAngledRain =>
      _containerImage(_sun_cloud_angled_rain);
  static Image get sunCloudMidRain => _containerImage(_sun_cloud_mid_rain);
  static Image get tornado => _containerImage(_tornado);
}
