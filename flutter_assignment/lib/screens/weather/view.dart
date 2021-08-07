import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/weather/model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conditional_builder/conditional_builder.dart';

import 'weather-cubit/cubit.dart';
import 'weather-cubit/states.dart';

class WeatherDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WeatherData userData;
    return Padding(
        padding: const EdgeInsets.only(bottom: 30.0),
        child: BlocProvider(
          create: (BuildContext context) => WeatherCubit(),
          child: BlocConsumer<WeatherCubit, WeatherState>(
            listener: (BuildContext context, state) {},
            builder: (context, state) {
              return ConditionalBuilder(
                condition: state is! WeatherGetLoadingState,
                builder: (context) => Center(
                  child: Text(
                    '${userData.description}',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                fallback: (context) =>
                    Center(child: CircularProgressIndicator()),
              );
            },
          ),
        ));
  }
}
