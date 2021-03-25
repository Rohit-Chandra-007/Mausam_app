import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class NetworkHelper {
  final String weatherUrl;
  final String forecastUrl;

  NetworkHelper({required this.weatherUrl, required this.forecastUrl});

  Future<dynamic> getData() async {
    var weatherResponse = await http.get(Uri.parse(weatherUrl));
    var forecastResponse = await http.get(Uri.parse(forecastUrl));
    if (weatherResponse.statusCode == 200 &&
        forecastResponse.statusCode == 200) {
      return convert.jsonDecode(weatherResponse.body);
    } else {
      print('Request failed with status: ${weatherResponse.statusCode}.');
    }
  }
}
