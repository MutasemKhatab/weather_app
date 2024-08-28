import 'package:geolocator/geolocator.dart';

abstract class LocationUtils {
  static Future<Position> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        locationSettings:
            const LocationSettings(accuracy: LocationAccuracy.low));
    return position;
  }
}
