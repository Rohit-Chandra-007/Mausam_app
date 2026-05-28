class WeatherDetail {
  final String label;
  final String value;
  final String iconPath;

  const WeatherDetail({
    required this.label,
    required this.value,
    required this.iconPath,
  });
}

class HourlyForecast {
  final String time;
  final String temp;
  final String iconPath;

  const HourlyForecast({
    required this.time,
    required this.temp,
    required this.iconPath,
  });
}

class DailyForecast {
  final String day;
  final String condition;
  final String minTemp;
  final String maxTemp;
  final String iconPath;

  const DailyForecast({
    required this.day,
    required this.condition,
    required this.minTemp,
    required this.maxTemp,
    required this.iconPath,
  });
}

class WeatherData {
  final String temp;
  final String condition;
  final String location;
  final String iconPath;
  final List<WeatherDetail> details;
  final List<HourlyForecast> hourly;

  const WeatherData({
    required this.temp,
    required this.condition,
    required this.location,
    required this.iconPath,
    required this.details,
    required this.hourly,
  });
}

// Mock data for Today
const WeatherData todayWeatherData = WeatherData(
  temp: '29°',
  condition: 'Passing Showers',
  location: 'ROORKEE',
  iconPath: 'assets/images/001-rainbow.png',
  details: [
    WeatherDetail(
      label: 'Humidity',
      value: '78%',
      iconPath: 'assets/images/012-water level.png',
    ),
    WeatherDetail(
      label: 'Wind Speed',
      value: '14 km/h',
      iconPath: 'assets/images/010-wind.png',
    ),
    WeatherDetail(
      label: 'Feels Like',
      value: '32°C',
      iconPath: 'assets/images/013-thermometer.png',
    ),
    WeatherDetail(
      label: 'Visibility',
      value: '8.0 km',
      iconPath: 'assets/images/040-world.png',
    ),
  ],
  hourly: [
    HourlyForecast(time: '12:00 PM', temp: '29°', iconPath: 'assets/images/014-rain.png'),
    HourlyForecast(time: '01:00 PM', temp: '30°', iconPath: 'assets/images/027-rainbow.png'),
    HourlyForecast(time: '02:00 PM', temp: '31°', iconPath: 'assets/images/003-sunny.png'),
    HourlyForecast(time: '03:00 PM', temp: '31°', iconPath: 'assets/images/025-sun.png'),
    HourlyForecast(time: '04:00 PM', temp: '30°', iconPath: 'assets/images/025-sun.png'),
    HourlyForecast(time: '05:00 PM', temp: '29°', iconPath: 'assets/images/009-forecast.png'),
    HourlyForecast(time: '06:00 PM', temp: '28°', iconPath: 'assets/images/030-sunset.png'),
  ],
);

// Mock data for Tomorrow
const WeatherData tomorrowWeatherData = WeatherData(
  temp: '32°',
  condition: 'Sunny & Warm',
  location: 'ROORKEE',
  iconPath: 'assets/images/003-sunny.png',
  details: [
    WeatherDetail(
      label: 'Humidity',
      value: '45%',
      iconPath: 'assets/images/012-water level.png',
    ),
    WeatherDetail(
      label: 'Wind Speed',
      value: '18 km/h',
      iconPath: 'assets/images/010-wind.png',
    ),
    WeatherDetail(
      label: 'Feels Like',
      value: '35°C',
      iconPath: 'assets/images/013-thermometer.png',
    ),
    WeatherDetail(
      label: 'Visibility',
      value: '10.0 km',
      iconPath: 'assets/images/040-world.png',
    ),
  ],
  hourly: [
    HourlyForecast(time: '08:00 AM', temp: '26°', iconPath: 'assets/images/029-sunrise.png'),
    HourlyForecast(time: '10:00 AM', temp: '29°', iconPath: 'assets/images/003-sunny.png'),
    HourlyForecast(time: '12:00 PM', temp: '32°', iconPath: 'assets/images/025-sun.png'),
    HourlyForecast(time: '02:00 PM', temp: '33°', iconPath: 'assets/images/025-sun.png'),
    HourlyForecast(time: '04:00 PM', temp: '31°', iconPath: 'assets/images/003-sunny.png'),
    HourlyForecast(time: '06:00 PM', temp: '28°', iconPath: 'assets/images/030-sunset.png'),
    HourlyForecast(time: '08:00 PM', temp: '25°', iconPath: 'assets/images/005-moon.png'),
  ],
);

// Mock data for Next Week
const List<DailyForecast> weeklyForecast = [
  DailyForecast(
    day: 'Monday',
    condition: 'Thunderstorms',
    minTemp: '22°',
    maxTemp: '28°',
    iconPath: 'assets/images/008-storm.png',
  ),
  DailyForecast(
    day: 'Tuesday',
    condition: 'Heavy Rain',
    minTemp: '21°',
    maxTemp: '26°',
    iconPath: 'assets/images/014-rain.png',
  ),
  DailyForecast(
    day: 'Wednesday',
    condition: 'Passing Showers',
    minTemp: '23°',
    maxTemp: '29°',
    iconPath: 'assets/images/001-rainbow.png',
  ),
  DailyForecast(
    day: 'Thursday',
    condition: 'Mostly Sunny',
    minTemp: '24°',
    maxTemp: '32°',
    iconPath: 'assets/images/003-sunny.png',
  ),
  DailyForecast(
    day: 'Friday',
    condition: 'Clear & Sunny',
    minTemp: '25°',
    maxTemp: '34°',
    iconPath: 'assets/images/025-sun.png',
  ),
  DailyForecast(
    day: 'Saturday',
    condition: 'Partly Cloudy',
    minTemp: '24°',
    maxTemp: '31°',
    iconPath: 'assets/images/009-forecast.png',
  ),
  DailyForecast(
    day: 'Sunday',
    condition: 'Windy with Dust',
    minTemp: '23°',
    maxTemp: '29°',
    iconPath: 'assets/images/010-wind.png',
  ),
];
