import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:mausam_app/services/location.dart';
import 'package:mausam_app/utils/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

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
    getDeviceLocation();
  }

  void getDeviceLocation() async {
    Position position = await Location.determinePosition();
    latitute = position.latitude;
    longitute = position.longitude;
    print(position);
    print(latitute);
    print(longitute);
    getWeatherData();
  }

  getWeatherData() async {
    var response = await http.get(
        'http://api.openweathermap.org/data/2.5/weather?lat=$latitute&lon=$longitute&appid=$APIKEY');
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      double temp = jsonResponse['main']['temp'];
      print(temp - 273);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: kBoxDecoration,
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        '2°',
                        style: kTemperatureText,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                    child: Container(
                      width: 130.0,
                      height: 130.0,
                      padding: EdgeInsets.all(8.0),
                      child: Image(
                        image: AssetImage('assets/images/037-fog.png'),
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          child: Card(
                            color: Colors.white,
                            elevation: 10,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
