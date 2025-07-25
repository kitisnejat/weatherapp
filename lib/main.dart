import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherappwithprovider/locator.dart';
import 'package:weatherappwithprovider/pages/weather_home_page.dart';


void main() {
  setupLocator();
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Weather App',
        debugShowCheckedModeBanner: false,
        home: WeatherHomePage(),
    );
  }
}
