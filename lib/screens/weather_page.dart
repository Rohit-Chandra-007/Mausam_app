import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mausam_app/services/location.dart';
import 'package:mausam_app/services/networking.dart';
import 'package:mausam_app/utils/constants.dart';
import 'package:mausam_app/widgets/min_max_temp_widget.dart';
import 'package:mausam_app/widgets/weather_detail_widget.dart';

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

    NetworkHelper forecastResponseData = NetworkHelper(
        weatherUrl: 'https://api.openweathermap.org/data/2.5/weather?'
            'lat=$latitude&lon=$longitude&appid=$APIKEY',
        forecastUrl: 'https://api.openweathermap.org/data/2.5/onecall?'
            'lat=$latitude&lon=$longitude&exclude=current,minutely,'
            'hourly,alerts&units=metric&appid=$APIKEY');

    var getWeatherData = await forecastResponseData.getData();
    print(getWeatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Container(
        padding: const EdgeInsets.only(top: 32, left: 8, right: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "ROORKEE",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff3177F9)),
            ),
            Text(
              "CLEAR SKY",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.normal,
                  color: Colors.blueGrey),
            ),
            Image.asset(
              "assets/images/storm.png",
              scale: 4,
              fit: BoxFit.contain,
            ),
            Text(
              '29°',
              style: kTemperatureText,
            ),
            MinMaxTempWidget(),
            Divider(
              color: Colors.red,
            ),
            horizontalList2,
            Divider(
              color: Colors.red,
            ),
            WeatherDetailWidget()
          ],
        ),
      ),
    );
  }
}

Widget horizontalList2 = new Container(
    margin: EdgeInsets.symmetric(vertical: 8.0),
    height: 100,
    child: new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          child: Column(
            children: [
              Text("Sunday"),
              Image.asset(
                'assets/images/sunny_day.png',
                scale: 16,
                fit: BoxFit.contain,
              ),
              Text("29°"),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Text("Sunday"),
              Image.asset(
                'assets/images/wind.png',
                scale: 16,
                fit: BoxFit.contain,
              ),
              Text("29°"),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Text("Sunday"),
              Image.asset(
                'assets/images/wind.png',
                scale: 16,
                fit: BoxFit.contain,
              ),
              Text("29°"),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Text("Sunday"),
              Image.asset(
                'assets/images/wind.png',
                scale: 16,
                fit: BoxFit.contain,
              ),
              Text("29°"),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Text("Sunday"),
              Image.asset(
                'assets/images/sunny_day.png',
                scale: 16,
                fit: BoxFit.contain,
              ),
              Text("29°"),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Text("Sunday"),
              Image.asset(
                'assets/images/wind.png',
                scale: 16,
                fit: BoxFit.contain,
              ),
              Text("29°"),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Text("Sunday"),
              Image.asset(
                'assets/images/wind.png',
                scale: 16,
                fit: BoxFit.contain,
              ),
              Text("29°"),
            ],
          ),
        ),
        Container(
          child: Column(
            children: [
              Text("Sunday"),
              Image.asset(
                'assets/images/wind.png',
                scale: 16,
                fit: BoxFit.contain,
              ),
              Text("29°"),
            ],
          ),
        )
      ],
    ));
