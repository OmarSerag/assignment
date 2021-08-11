import 'package:conditional_builder/conditional_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/weather/controller.dart';
import 'package:flutter_assignment/screens/weather/view.dart';
import 'package:flutter_assignment/screens/weather/weather-cubit/cubit.dart';
import 'package:flutter_assignment/screens/weather/weather-cubit/states.dart';
import 'package:flutter_assignment/shared/BuildButton.dart';
import 'package:flutter_assignment/shared/BuildTextField.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class City extends StatelessWidget {
  var _WeatherController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WeatherCubit(),
      child: BlocConsumer<WeatherCubit, WeatherState>(
        listener: (BuildContext context, state) {},
        builder: (context, state) {
          return ConditionalBuilder(
            condition: state is! WeatherGetLoadingState,
            fallback: (context) => Center(
              child: CircularProgressIndicator(),
            ),
            builder: (context) => ListView(children: [
              defaultFormField(
                controller: _WeatherController,
                type: TextInputType.name,
                label: 'Enter City',
                validate: (String value) {
                  if (value.isEmpty) {
                    return 'invalid city';
                  }
                },
              ),
              SizedBox(
                height: 10,
              ),
              defaultButton(
                text: 'Search',
                backgroundcolor: Colors.deepPurple,
                function: () {
                  fetchData(_WeatherController.text);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WeatherData(),
                    ),
                  );
                },
              ),
            ]),
          );
        },
      ),
    );
  }
}
