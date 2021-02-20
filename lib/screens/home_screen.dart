import 'package:flutter/material.dart';
import 'package:mausam_app/screens/next_week_screen.dart';
import 'package:mausam_app/screens/today_screen.dart';
import 'package:mausam_app/screens/tomorrow_screen.dart';
import 'package:mausam_app/utils/constants.dart';
import 'package:mausam_app/widgets/tab_label_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // appBar: AppBar(
        //     elevation: 0,
        //     leading: InkWell(
        //       child: Icon(
        //         Icons.room,
        //         size: 26.0,
        //       ),
        //       onTap: () {},
        //     ),
        //     centerTitle: true,
        //     title: Text('MAUSAM APP'),
        //     actions: [
        //       Padding(
        //         padding: const EdgeInsets.only(
        //           right: 8,
        //         ),
        //         child: InkWell(
        //           onTap: () {},
        //           child: Icon(
        //             Icons.search,
        //             size: 26.0,
        //           ),
        //         ),
        //       ),
        //     ],
        //     flexibleSpace: Container(
        //       decoration: kBoxDecoration,
        //     )),
        body: TodayPage(),
      ),
    );
  }
}
