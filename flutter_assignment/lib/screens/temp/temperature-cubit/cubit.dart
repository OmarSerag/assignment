import 'package:flutter_assignment/screens/temp/temperature-cubit/states.dart';
import 'package:flutter_assignment/screens/weather/controller.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model.dart';

class temperatureCubit extends Cubit<temperatureState> {
  temperatureCubit() : super(temperatureInitialState());

  static temperatureCubit get(context) => BlocProvider.of(context);
  temperatureModel _model;

  void gettemperature() {
    emit(temperatureGetLoadingState());
    DioHelper.getData(
      url: 'data/2.5/weather',
      query: {'q': 'city', 'apiKey': '9a033518b937e01480a326bbf48beeb8'},
    ).then((value) {
      _model = temperatureModel.fromJson(value.data);
      print(_model.data.temp);
      emit(temperatureGetSuccessState());
    }).catchError(
      (error) {
        print(error.toString());
        emit(
          temperatureGetErrorState(
            error.toString(),
          ),
        );
      },
    );
  }

  void gettemperature_min() {
    emit(temperatureGetLoadingState());
    DioHelper.getData(
      url: 'data/2.5/weather',
      query: {'q': 'city', 'apiKey': '9a033518b937e01480a326bbf48beeb8'},
    ).then((value) {
      _model = temperatureModel.fromJson(value.data);
      print(_model.data.temp_min);
      emit(temperatureGetSuccessState());
    }).catchError(
      (error) {
        print(error.toString());
        emit(
          temperatureGetErrorState(
            error.toString(),
          ),
        );
      },
    );
  }

  void gettemperature_max() {
    emit(temperatureGetLoadingState());
    DioHelper.getData(
      url: 'data/2.5/weather',
      query: {'q': 'city', 'apiKey': '9a033518b937e01480a326bbf48beeb8'},
    ).then((value) {
      _model = temperatureModel.fromJson(value.data);
      print(_model.data.temp_max);
      emit(temperatureGetSuccessState());
    }).catchError(
      (error) {
        print(error.toString());
        emit(
          temperatureGetErrorState(
            error.toString(),
          ),
        );
      },
    );
  }
}
