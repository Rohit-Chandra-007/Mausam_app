class ForecastData {
  final String? day;
  final String? weatherIcon;
  final int? temperature;
  ForecastData({this.day, this.weatherIcon, this.temperature});

 factory ForecastData.fromJson(Map<String,dynamic> map){
    return ForecastData();
  }
}
