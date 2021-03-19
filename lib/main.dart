import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mausam_app/screens/weather_page.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.amber,
      statusBarBrightness: Brightness.dark,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //themeMode: ThemeMode.light,
      //theme: ThemeData(brightness: Brightness.light),
      //darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/",
      routes: {"/": (context) => WeatherPage()},
    );
  }
}
