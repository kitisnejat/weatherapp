import 'package:get_it/get_it.dart';
import 'package:weatherappwithprovider/repository/weather_repository.dart';
import 'package:weatherappwithprovider/services/weather_api.dart';


GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => WeatherRepository());
  locator.registerLazySingleton(() => WeatherApi());
}
