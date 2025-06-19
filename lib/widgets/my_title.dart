import 'package:flutter/material.dart';
import 'package:weatherappwithprovider/models/weather_model.dart';
import 'package:weatherappwithprovider/styles/page_styles.dart';

class MyTitle extends StatelessWidget {
  const MyTitle({super.key, required this.data});
  final WeatherModel data;
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(data.location!.name.toString(), style: titleStyle));
  }
}
