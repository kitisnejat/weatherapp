

import 'package:weatherappwithprovider/models/weather_model.dart';
import 'package:weatherappwithprovider/services/weather_api.dart';

class WeatherRepository {
  Future<WeatherModel> getWeather(String cityName) async {
    return await WeatherApi().getData(cityName);
  }
}
