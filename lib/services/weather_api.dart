import 'package:dio/dio.dart';
import 'package:weatherappwithprovider/models/weather_model.dart';
import 'package:weatherappwithprovider/services/api_key.dart';

const baseUrl = "http://api.weatherstack.com/";

Dio _dio = Dio(BaseOptions(baseUrl: baseUrl));

class WeatherApi with ApiKey {
  Future<WeatherModel> getData(String cityName) async {
    final response = await _dio.get(
      "current?access_key=$apiKey&query=$cityName",
    );
    final datas = WeatherModel.fromJson(response.data);
    return datas;
  }
}
