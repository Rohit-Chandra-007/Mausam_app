import 'package:flutter/material.dart';
import 'package:mausam_app/utils/constants.dart';

class TemperatureWidget extends StatelessWidget {
  const TemperatureWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Roorkee',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  '29°',
                  style: kTemperatureText,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  width: 130.0,
                  height: 130.0,
                  padding: EdgeInsets.all(8.0),
                  child: Image(
                    image: AssetImage('assets/images/037-fog.png'),
                    fit: BoxFit.scaleDown,
                  ),
                ),
                Text(
                  'Haze',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
