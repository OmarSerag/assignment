import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_weather_assignment/screens/weather/weather-cubit/cubit.dart';
import 'package:flutter_weather_assignment/screens/weather/weather-cubit/states.dart';
import 'package:flutter_weather_assignment/shared/BuildButton.dart';
import 'package:flutter_weather_assignment/shared/BuildTextField.dart';

import 'model.dart';

class WeatherScreen extends StatefulWidget {
  @override
  _WeatherDescriptionState createState() => _WeatherDescriptionState();
}

class _WeatherDescriptionState extends State<WeatherScreen> {
  var _WeatherController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocProvider(
        create: (BuildContext context) => WeatherCubit(),
        child: BlocConsumer<WeatherCubit, WeatherState>(
          listener: (BuildContext context, state) {},
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
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
                  defaultButton(
                    text: 'Search',
                    backgroundcolor: Colors.deepPurple,
                    function: () {
                      getData(_WeatherController.text, context);
                    },
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

Future getData(String txt, BuildContext context) async {
  WeatherModel model = await WeatherCubit.getWeather(
      city: txt, id: '9c15af06166e304ab03ac7075db2b74a');
  if (model.cod == 200) {
    Navigator.of(context).pushNamed('second', arguments: model);
  } else {}
}
