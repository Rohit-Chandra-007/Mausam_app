import 'package:flutter/material.dart';
import 'package:mausam_app/screens/weather_screen.dart';
import 'package:mausam_app/utils/constants.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0.0,
      //   leading: InkWell(
      //     child: Icon(
      //       Icons.room,
      //       size: 26.0,
      //     ),
      //     onTap: () {},
      //   ),
      //   centerTitle: true,
      //   title: Text('MAUSAM APP'),
      //   // actions: [
      //   //   Padding(
      //   //     padding: const EdgeInsets.all(8.0),
      //   //     child: InkWell(
      //   //       onTap: () {
      //   //         var date =
      //   //             new DateTime.fromMillisecondsSinceEpoch(1614628800 * 1000);
      //   //
      //   //         print(DateFormat('EEEE').format(date));
      //   //       },
      //   //       child: Icon(
      //   //         Icons.search,
      //   //         size: 26.0,
      //   //       ),
      //   //     ),
      //   //   ),
      //   // ],
      // ),
      body: SafeArea(child: WeatherPage()),
    );
  }
}
