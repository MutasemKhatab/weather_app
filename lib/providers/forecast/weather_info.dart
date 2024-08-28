import 'package:some_random_design1/helpers/string_extention/capitalize_first_char_of_each_word.dart';

import 'weather.dart';

abstract class WeatherInfo {
  static final json = Weather.json;
  static final main = currentDay['main'];
  static final currentDay = json['list'][0];

  static final cityName = json['city']['name'];
  static final currentDegree = main['temp'].toInt();
  static final weatherDescription = currentDay['weather'][0]['description']
      .toString()
      .capitalizeFirstCharOfEachWord();
  static final high = main['temp_max'].toInt();
  static final low = main['temp_min'].toInt();
  static final uvIndex = main['uvi'].toString(); //TODO: uvi not int the json
  static final humidity = main['humidity'].toString();
  static final pressure = main['pressure'];
  static final rainfall = currentDay['rain']?['3h']?.toString() ?? '0';
  static final sunriseInMilliseconds = json['city']['sunrise'];
  static final sunsetInMilliseconds = json['city']['sunset'];

  static final feelsLike =
      main['feels_like'].toString().substring(0, 2); //change to index of '.'
  static final visibility = (currentDay['visibility'] / 1000).toInt();
  static final windSpeed = currentDay['wind']['speed'];
  static final windDirection = currentDay['wind']['deg'].toDouble();

  static String get formattedSunrise {
    return formatTime(sunriseInMilliseconds);
  }

  static String get formattedSunset {
    return formatTime(sunsetInMilliseconds);
  }

  //TODO its not accurate
  static String formatTime(int timeStamp) {
    final dateTime =
        DateTime.fromMillisecondsSinceEpoch(timeStamp * 1000).toLocal();
    final hours = dateTime.hour;
    final minutes = dateTime.minute;
    final period = hours >= 12 ? 'PM' : 'AM';
    final formattedHours = hours % 12 == 0 ? 12 : hours % 12;
    final formattedMinutes = minutes.toString().padLeft(2, '0');

    return '$formattedHours:$formattedMinutes $period';
  }

  static String convertTimeString(String timeString) {
    final dateTime = DateTime.parse(timeString);
    final hours = dateTime.hour;
    final period = hours >= 12 ? 'PM' : 'AM';
    final formattedHours = hours % 12 == 0 ? 12 : hours % 12;
    return '$formattedHours $period';
  }

  static String hourlyTime(int index) {
    final time = json['list'][index]['dt_txt'];
    return convertTimeString(time);
  }

  static int hourlyTemperature(int index) =>
      json['list'][index]['main']['temp'].toInt();

  static String hourlyIcon(int index) =>
      json['list'][index]['weather'][0]['icon'];
//TODO implement the following methods
// static String dailyTime(int index) {
//
// }
//
// static int dailyTemperature(int index) {
// }
//
// static String dailyIcon(int index) {
// }
}
