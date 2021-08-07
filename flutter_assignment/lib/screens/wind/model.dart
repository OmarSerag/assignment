/*
  "wind": {
      "speed": 3.09,
},
 */

class WindModel {
  WindData data;

  WindModel.fromJson(Map<String, dynamic> json) {
    data = json['wind'] != null ? WindData.fromJson(json['wind']) : null;
  }
}

class WindData {
  double speed;

  WindData({this.speed});

  WindData.fromJson(Map<String, dynamic> json) {
    speed = json['speed'];
  }
}
