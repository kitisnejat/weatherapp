import 'package:flutter/material.dart';
import 'package:weatherappwithprovider/locator.dart';
import 'package:weatherappwithprovider/models/weather_model.dart';
import 'package:weatherappwithprovider/repository/weather_repository.dart';

enum WeatherState { initialState, loadingState, loadedState, errorState }

class WeatherViewModel with ChangeNotifier {
  late WeatherState _state;
  late WeatherModel _comingWeather;
  final WeatherRepository _weatherRepository = locator<WeatherRepository>();

  WeatherViewModel() {
    _comingWeather = WeatherModel();
    _state = WeatherState.initialState;
  }

  WeatherModel get comingWeather => _comingWeather;

  WeatherState get state => _state;

  set state(WeatherState value) {
    _state = value;
    notifyListeners();
  }

  Future<WeatherModel?> getWeatherData(String cityName) async {
    try {
      state = WeatherState.loadingState;
      _comingWeather = await _weatherRepository.getWeather(cityName);
      state = WeatherState.loadedState;
      return _comingWeather;
    } catch (e) {
      state = WeatherState.errorState;
      return null;
    }
  }
}
