import 'environmental_indicators_provider.dart';
import 'forecast_header_provider.dart';
import 'period_forecast_provider.dart';
import 'weather_info.dart';

//TODO felt cute, might delete later >_<
class WeatherBuilder {
  static ForecastHeaderProvider get forecastHeaderProvider {
    final forecastHeaderProvider = ForecastHeaderProvider()
      ..cityName = WeatherInfo.cityName
      ..low = WeatherInfo.low
      ..high = WeatherInfo.high
      ..currentTemperature = WeatherInfo.currentDegree
      ..weatherDescription = WeatherInfo.weatherDescription;
    return forecastHeaderProvider;
  }

//TODO add daily forecast second list provider
  static List<PeriodForecastProvider> get hourlyForecastProvider {
    final List<PeriodForecastProvider> hourlyForecastProvider = [];
    for (int i = 0; i < 5; i++) {
      PeriodForecastProvider hourlyForecast = _loopHourlyForecast(i);
      hourlyForecastProvider.add(hourlyForecast);
    }
    return hourlyForecastProvider;
  }

  static PeriodForecastProvider _loopHourlyForecast(int index) {
    final time = WeatherInfo.hourlyTime(index);
    // ignore: unused_local_variable
    final temperature = WeatherInfo.hourlyTemperature(index);
    final icon = WeatherInfo.hourlyIcon(index);
    final hourlyForecast = PeriodForecastProvider()
      ..time = time
      // ..temperature = temperature TODO: uncomment this line
      ..icon = icon;
    return hourlyForecast;
  }

  static EnvironmentalIndicatorsProvider get environmentalIndicatorsProvider {
    final environmentalIndicators = EnvironmentalIndicatorsProvider()
      ..uvIndex = WeatherInfo.uvIndex
      ..humidity = WeatherInfo.humidity
      ..windSpeed = WeatherInfo.windSpeed
      ..pressure = WeatherInfo.pressure
      ..rainfall = WeatherInfo.rainfall
      ..sunrise = WeatherInfo.formattedSunrise
      ..feelsLike = WeatherInfo.feelsLike
      ..visibility = WeatherInfo.visibility
      ..windDirection = WeatherInfo.windDirection;

    return environmentalIndicators;
  }
}
