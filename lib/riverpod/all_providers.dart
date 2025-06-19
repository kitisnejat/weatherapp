import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherappwithprovider/models/weather_model.dart';
import 'package:weatherappwithprovider/services/weather_api.dart';

final weatherDataProvider = FutureProvider.family<WeatherModel, String>((
  ref,
  cityName,
) async {
  return WeatherApi().getData(cityName);
});

