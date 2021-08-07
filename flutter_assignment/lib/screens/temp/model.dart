/*
"main": {
        "temp": 275.96,
        "temp_min": 274.14,
        "temp_max": 277.96,
    },
*/
class temperatureModel {
  TempData data;

  temperatureModel.fromJson(Map<String, dynamic> json) {
    data = json['main'] != null ? TempData.fromJson(json['main']) : null;
  }
}

class TempData {
  double temp;
  double temp_min;
  double temp_max;

  TempData({this.temp, this.temp_min, this.temp_max});

  TempData.fromJson(Map<String, dynamic> json) {
    temp = json['temp'];
    temp_min = json['temp_min'];
    temp_max = json['temp_max'];
  }
}
