import 'package:mausam_app/modals/forecast_data.dart';

class WeatherForecastList {
  final List list;

  WeatherForecastList({required this.list});

  factory WeatherForecastList.fromJson(Map<String, dynamic> json) {
    List list = [];

    for (dynamic e in json['daily']) {
      ForecastData w = new ForecastData(
        // date: new DateTime.fromMillisecondsSinceEpoch(e['dt'] * 1000,
        //     isUtc: false),
        // name: json['city']['name'],
        // temp: e['main']['temp'].toDouble(),
        // main: e['weather'][0]['main'],
        // icon: e['weather'][0]['icon']
      );
      list.add(w);
    }

    return WeatherForecastList(
      list: list,
    );
  }