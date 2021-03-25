class WeatherData {
  String? weatherCondition;
  String? weatherIcon;
  int? temperature;
  int? minTemp;
  int? maxTemp;
  int? humidity;
  double? windSpeed;
  double? sunset;
  double? sunrise;

  WeatherData(
      {this.weatherCondition,
      this.weatherIcon,
      this.temperature,
      this.minTemp,
      this.maxTemp,
      this.humidity,
      this.windSpeed,
      this.sunset,
      this.sunrise});

  factory WeatherData.fromJson(Map<String, dynamic> map) {
    return WeatherData(
        // cityName: map[];
        );
  }
}
