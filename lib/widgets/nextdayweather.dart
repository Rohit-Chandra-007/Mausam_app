import 'package:flutter/material.dart';

class NextDayWeatherWidget extends StatelessWidget {
  const NextDayWeatherWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final weekDays = [
      'Sunday',
      'Monday',
      'Tuesday',
      'Wednesday',
      'Thursday',
      'Friday',
      'Saturday'
    ];
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(8),
        child: ListView.separated(
          itemCount: weekDays.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
                leading: Text(weekDays[index],style: TextStyle(color: Colors.white,fontSize: 18),),
                trailing: Container(
                  child: Image(image: AssetImage('assets/images/cloud-128px.png'),),
                ));
          },
          separatorBuilder: (BuildContext context, int index) {
            return Divider(color: Colors.white);
          },
        ),
      ),
    );
  }
}
