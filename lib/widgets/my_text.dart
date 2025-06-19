import 'package:flutter/material.dart';
import 'package:weatherappwithprovider/models/weather_model.dart';
import 'package:weatherappwithprovider/styles/page_styles.dart';

class MyText extends StatelessWidget {
  const MyText({super.key, required this.data});
  final WeatherModel data;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text("${data.current?.temperature?.floor()} °C", style: titleStyle));
  }
}
