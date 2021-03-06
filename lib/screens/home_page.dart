import 'package:flutter/material.dart';
import 'package:mausam_app/screens/weather_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: WeatherPage(),
        bottom: false,
      ),
    );
  }
}
