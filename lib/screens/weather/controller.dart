
import 'package:dio/dio.dart';

import 'model.dart';


class DioHelper {
  static Dio dio;

  static Future<WeatherModel> getWeather({String city, String id}) async {
    Map<String, dynamic> body = {
      'q': city,
      'appid': id,
    };
    BaseOptions options = new BaseOptions(
        connectTimeout: 5000,
        receiveTimeout: 3000,
        queryParameters: body,
        validateStatus: (v) {
          return true;
        }

    );
    Dio _dio = Dio(options);
    final _result = await _dio.get(
      'http://api.openweathermap.org/data/2.5/weather',
    );
    final WeatherModel weatherResponse = WeatherModel.fromJson(_result.data);
    return weatherResponse;
  }
}