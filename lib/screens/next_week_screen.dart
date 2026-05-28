import 'package:flutter/material.dart';
import 'package:mausam_app/utils/constants.dart';
import 'package:mausam_app/utils/weather_model.dart';

class NextWeekPage extends StatefulWidget {
  const NextWeekPage({super.key});

  @override
  State<NextWeekPage> createState() => _NextWeekPageState();
}

class _NextWeekPageState extends State<NextWeekPage> {
  @override
  Widget build(BuildContext context) {
    final forecastList = weeklyForecast;

    return Container(
      decoration: kBoxDecoration,
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                '7-Day Forecast',
                style: TextStyle(
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView.builder(
                  itemCount: forecastList.length,
                  itemBuilder: (context, index) {
                    final dayForecast = forecastList[index];
                    return Container(
                      margin: const EdgeInsets.only(bottom: 12.0),
                      padding: const EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.12),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: Colors.white.withValues(alpha: 0.15),
                          width: 1,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Day name and condition
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  dayForecast.day,
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  dayForecast.condition,
                                  style: const TextStyle(
                                    fontSize: 13.0,
                                    color: Colors.white70,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          // Weather Icon
                          Expanded(
                            flex: 2,
                            child: Image.asset(
                              dayForecast.iconPath,
                              width: 44,
                              height: 44,
                            ),
                          ),

                          // Min/Max Temperatures
                          Expanded(
                            flex: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Text(
                                  dayForecast.maxTemp,
                                  style: const TextStyle(
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  '/',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white.withValues(alpha: 0.5),
                                  ),
                                ),
                                const SizedBox(width: 6),
                                Text(
                                  dayForecast.minTemp,
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white70,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
