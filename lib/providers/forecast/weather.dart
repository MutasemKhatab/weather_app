import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:some_random_design1/providers/forecast/weather_services.dart';

abstract class Weather {
  static late WeatherService _weatherService;
  static late Map<String, dynamic> _json;

  static Map<String, dynamic> get json {
    return _json;
  }

  static Future<WeatherService> _fetchWeatherService() async {
    _weatherService = await WeatherService.instance;
    return _weatherService;
  }

  static Future<void> initialize() async {
    await _fetchWeatherService();
    _json = await _fetchWeather();
  }

  static Future<Map<String, dynamic>> _fetchWeather() async {
    try {
      final url = Uri.parse(_weatherService.weatherUrl);
      final response = await http.get(url);
      if (response.statusCode == 200) {
        return jsonDecode(response.body);
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      throw Exception('Error fetching weather data: $e');
    }
  }
}
