import 'package:flutter/material.dart';
import 'package:weatherappwithprovider/models/weather_model.dart';

class MyIcon extends StatelessWidget {
  const MyIcon({super.key, required this.data});
  final WeatherModel data;
  @override
  Widget build(BuildContext context) {
    return Image.network(data.current!.weatherIcons![0]);
  }
}
