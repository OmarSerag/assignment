import 'package:flutter_assignment/screens/wind/model.dart';
import 'package:flutter_assignment/screens/wind/windcubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller.dart';

class WindCubit extends Cubit<WindState> {
  WindCubit() : super(WindInitialState());

  static WindCubit get(context) => BlocProvider.of(context);
  WindModel _model;

  void getWindSpeed() {
    emit(WindGetLoadingState());
    DioHelper.getData(
      url: 'data/2.5/weather',
      query: {'q': 'city', 'apiKey': '9a033518b937e01480a326bbf48beeb8'},
    ).then((value) {
      _model = WindModel.fromJson(value.data);
      print(_model.data.speed);
      emit(WindGetSuccessState());
    }).catchError(
      (error) {
        print(error.toString());
        emit(
          WindGetErrorState(
            error.toString(),
          ),
        );
      },
    );
  }
}
