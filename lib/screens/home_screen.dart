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
        appBar: AppBar(
            title: Text('MAUSAM APP'),
            bottom: TabBar(
                labelColor: kLabelColor,
                unselectedLabelColor: Colors.white,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    border: Border.all(color: kLabelColor, width: 1),
                    color: Colors.white),
                tabs: [
                  Tab(
                    child: const TabLabelWidget(
                      tabLabel: 'TODAY',
                    ),
                  ),
                  Tab(
                    child: const TabLabelWidget(
                      tabLabel: 'TOMORROW',
                    ),
                  ),
                  Tab(
                    child: const TabLabelWidget(
                      tabLabel: 'NEXT WEEK',
                    ),
                  ),
                ]),
            elevation: 0.0,
            flexibleSpace: Container(
              decoration: kBoxDecoration,
            )),
        body: TabBarView(
          children: [TodayPage(), TomorrowPage(), NextWeekPage()],
        ),
      ),
    );
  }
}
