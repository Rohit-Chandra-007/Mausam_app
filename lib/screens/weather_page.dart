import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mausam_app/services/location.dart';
import 'package:mausam_app/services/networking.dart';
import 'package:mausam_app/utils/constants.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  double? latitude;
  double? longitude;
  static const String APIKEY = '0319c9f269575e5df0601a45b93580ee';

  @override
  void initState() {
    super.initState();
    getDeviceLocationWeatherData();
  }

  void getDeviceLocationWeatherData() async {
    Position position = await Location.determinePosition();
    latitude = position.latitude;
    longitude = position.longitude;
    NetworkHelper networkHelper = NetworkHelper(
        'https://api.openweathermap.org/data/2.5/onecall?lat=$latitude&lon=$longitude&units=metric&appid=$APIKEY');

    var getWeatherData = await networkHelper.getData();

    //  double temp = jsonResponse['main']['temp'];
    //   String weatherCondition = jsonResponse['weather'][0]['main'];
    // print(getWeatherData);

    // print(weatherCondition);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        child: Column(
          children: [
            Text(
              "ROORKEE",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(
              "CLEAR SKY",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
            ),
            Image.asset(
              "assets/images/storm.png",
              scale: 4,
              fit: BoxFit.contain,
            ),
            Text(
              '29°',
              style: kTemperatureText,
            )
          ],
        ),
      ),
    );
  }
}

class WeatherCardWidget extends StatelessWidget {
  final String weatherInfo;

  final String weatherValue;

  const WeatherCardWidget(
      {Key? key, required this.weatherInfo, required this.weatherValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5.0,
        color: Colors.white,
        child: Container(
          alignment: Alignment.center,
          width: 80.0,
          height: 80.0,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                weatherInfo,
                style: TextStyle(color: Colors.grey[800]),
              ),
              Text(weatherValue,
                  style: TextStyle(
                      color: Color(0xff3177F9),
                      fontWeight: FontWeight.bold,
                      fontSize: 16)),
            ],
          ),
        ));
  }
}
