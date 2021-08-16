import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_assignment/screens/weather/controller.dart';
import 'package:flutter_weather_assignment/screens/weather/weather-cubit/states.dart';

import '../model.dart';


class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(ShowWeatherInitialState());

  static WeatherCubit get(context) => BlocProvider.of(context);

  static Future<WeatherModel> getWeather({String city, String id})
  {
    return DioHelper.getWeather(city: city,id: id);
  }

}