import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mausam_app/services/location.dart';
import 'package:mausam_app/services/networking.dart';
import 'package:mausam_app/utils/constants.dart';
import 'package:mausam_app/widgets/temperature_widget.dart';

class TodayPage extends StatefulWidget {
  @override
  _TodayPageState createState() => _TodayPageState();
}

class _TodayPageState extends State<TodayPage> {
  double latitute;
  double longitute;
  static const String APIKEY = '0319c9f269575e5df0601a45b93580ee';

  @override
  void initState() {
    super.initState();
    getDeviceLocationWeatherData();
  }

  void getDeviceLocationWeatherData() async {
    Position position = await Location.determinePosition();
    latitute = position.latitude;
    longitute = position.longitude;
    NetworkHelper networkHelper = NetworkHelper(
        'http://api.openweathermap.org/data/2.5/weather?lat=$latitute&lon=$longitute&appid=$APIKEY');

    var getWeatherData = await networkHelper.getData();

    //  double temp = jsonResponse['main']['temp'];
    //   String weatherCondition = jsonResponse['weather'][0]['main'];
    print(getWeatherData);
    //print(weatherCondition);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: kBoxDecoration,
        padding: EdgeInsets.symmetric(vertical: 32.0, horizontal: 16.0),
        child: Column(children: [
          TemperatureWidget(),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                WeatherCardWidget(
                  weatherInfo: 'Wind',
                  weatherValue: "N 7 mph",
                ),
                WeatherCardWidget(
                  weatherInfo: 'Rain',
                  weatherValue: "18%",
                ),
                WeatherCardWidget(
                  weatherInfo: 'Humidity',
                  weatherValue: "59%",
                ),
                WeatherCardWidget(
                  weatherInfo: 'Feels Like',
                  weatherValue: "5°",
                ),
              ],
            ),
          ),
        ]));
  }
}

class WeatherCardWidget extends StatelessWidget {
  final String weatherInfo;

  final String weatherValue;

  const WeatherCardWidget(
      {Key key, @required this.weatherInfo, @required this.weatherValue})
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
