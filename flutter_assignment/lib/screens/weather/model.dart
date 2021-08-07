/*
"weather": [
{
"description": "few clouds",
}
],
*/
class WeatherModel {
  WeatherData data;

  WeatherModel.fromJson(Map<String, dynamic> json) {
    data = json['weather'] != null ? WeatherData.fromJson(json['weather']) : null;
  }
}

class WeatherData {
  String description;

  WeatherData({this.description});

  WeatherData.fromJson(Map<String, dynamic> json) {
    description = json['description'];
  }
}
