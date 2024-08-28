import 'package:geolocator/geolocator.dart';
import 'package:some_random_design1/consts/api_key.dart';
import '../../helpers/location_utils.dart';

class WeatherService {
  static WeatherService? _instance;

  static Future<WeatherService> get instance async {
    if (_instance == null) {
      await _getLocationInfo();
      _instance = WeatherService();
    }
    return _instance!;
  }

  static const String _baseUrl =
      'https://api.openweathermap.org/data/2.5/forecast';
  static double? _lat, _lon;

  String get weatherUrl {
    final weatherUrl =
        '$_baseUrl?lat=$_lat&lon=$_lon&units=metric&appid=$api_key';

    return weatherUrl;
  }

  static Future<void> _getLocationInfo() async {
    if (_lat != null && _lon != null) return;
    Position position = await LocationUtils.getCurrentLocation();
    _lat = position.latitude;
    _lon = position.longitude;
  }
}
