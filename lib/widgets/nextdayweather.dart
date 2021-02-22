
import 'package:flutter/material.dart';

class NextDayWeatherWidget extends StatelessWidget {
  const NextDayWeatherWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final europeanCountries = [
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednessday',
      'Thrusday',
      'Friday',
      'Satarday'
    ];
    return ListView(
      children: [
        ListTile(
          leading: Text(europeanCountries[1]),
        )
      ],
    );
  }
}
