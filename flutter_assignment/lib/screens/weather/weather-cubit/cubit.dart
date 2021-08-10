import 'dart:convert';

import 'package:flutter_assignment/screens/weather/model.dart';
import 'package:flutter_assignment/screens/weather/weather-cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;


class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(ShowWeatherInitialState());

  static WeatherCubit get(context) => BlocProvider.of(context);

  Future<Weather> fetchAlbum(String City) async {
    final response = await http
        .get(Uri.parse('http://api.openweathermap.org/data/2.5/weather?q=$City&appid=9c15af06166e304ab03ac7075db2b74a'));

    if (response.statusCode == 200) {

      return Weather.fromJson(jsonDecode(response.body));
    } else {

      throw Exception('Failed to load Weather');
    }
  }
}