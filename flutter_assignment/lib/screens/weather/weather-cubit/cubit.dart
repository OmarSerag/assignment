import 'package:flutter_assignment/screens/weather/model.dart';
import 'package:flutter_assignment/screens/weather/weather-cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller.dart';


class WeatherCubit extends Cubit<WeatherState> {
  WeatherCubit() : super(ShowWeatherInitialState());

  static WeatherCubit get(context) => BlocProvider.of(context);
  WeatherModel _weatherModel;

  void getWeather() {
    emit(WeatherGetLoadingState());
    DioHelper.getData(
      url: 'data/2.5/weather',
      query: {
        'q': 'city',
        'apiKey': '9a033518b937e01480a326bbf48beeb8'
      },
    ).then((value) {
      _weatherModel=WeatherModel.fromJson(value.data);
      print(_weatherModel.data.description);
      emit(WeatherGetSuccessState());
    }).catchError(
          (error) {
        print(error.toString());
        emit(
          WeatherGetErrorState(
            error.toString(),
          ),
        );
      },
    );
  }
}