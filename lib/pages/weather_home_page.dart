import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weatherappwithprovider/models/weather_model.dart';
import 'package:weatherappwithprovider/riverpod/all_providers.dart';
import 'package:weatherappwithprovider/styles/page_styles.dart';
import 'package:weatherappwithprovider/widgets/my_icon.dart';
import 'package:weatherappwithprovider/widgets/my_text.dart';
import 'package:weatherappwithprovider/widgets/my_text_field.dart';
import 'package:weatherappwithprovider/widgets/my_title.dart';

class WeatherHomePage extends ConsumerStatefulWidget {
  const WeatherHomePage({super.key});

  @override
  ConsumerState<WeatherHomePage> createState() => _WeatherHomePageState();
}

class _WeatherHomePageState extends ConsumerState<WeatherHomePage> {
  String currentCity = "Ankara";
  @override
  Widget build(BuildContext context) {
    final weatherAsyncValue = ref.watch(weatherDataProvider(currentCity));
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Api"),
        centerTitle: true,
        backgroundColor: appBarBackgroundColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: weatherAsyncValue.when(
          data: (data) {
            return MyListView(data: data);
          },
          error: (error, stackTrace) {
            return Text(error.toString());
            
          },
          loading: () {
            return Center(child: CircularProgressIndicator());
          },
        ),
      ),
      bottomNavigationBar: MyTextField(
        initialCity: currentCity,
        onCityChanged: (String newCity) {
          setState(() {
            currentCity = newCity;
          });
        },
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key, required this.data});
  final WeatherModel data;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        MyTitle(data: data),
        SizedBox(height: 20),
        MyText(data: data),
        MyIcon(data: data),
      ],
    );
  }
}
