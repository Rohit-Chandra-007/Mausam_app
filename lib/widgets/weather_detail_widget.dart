import 'package:flutter/material.dart';

class WeatherDetailWidget extends StatelessWidget {
  const WeatherDetailWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 60,
          padding: EdgeInsets.all(4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('wind speed'), Text('4.73 m/s')],
          ),
        ),
        Container(
          height: 30,
          child: VerticalDivider(color: Colors.red),
        ),
        Container(
          padding: EdgeInsets.all(4),
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('sunrise'), Text('6:33 am')],
          ),
        ),
        Container(
          height: 30,
          child: VerticalDivider(color: Colors.red),
        ),
        Container(
          padding: EdgeInsets.all(4),
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('sunset'), Text('6:03 pm')],
          ),
        ),
        Container(
          height: 30,
          child: VerticalDivider(color: Colors.red),
        ),
        Container(
          padding: EdgeInsets.all(4),
          height: 60,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [Text('humidty'), Text('72%')],
          ),
        ),
      ],
    );
  }
}
