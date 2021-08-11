import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/weather/model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conditional_builder/conditional_builder.dart';

import 'weather-cubit/cubit.dart';
import 'weather-cubit/states.dart';

class WeatherData extends StatefulWidget {
  @override
  _WeatherDescriptionState createState() => _WeatherDescriptionState();
}

class _WeatherDescriptionState extends State<WeatherData> {
  Weather dataModel;

  void initState() {
    super.initState();
    dataModel = Weather();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30.0),
      child: Center(
        child: Column(
          children: [
            Text(
              '${dataModel.weather[0].description}',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
                fontSize: 20.0,
              ),
            ),
            ListTile(
              title: Text(dataModel.main.temp.toString()),
              trailing: Icon(Icons.thermostat_outlined),
            ),
            ListTile(
              title: Text(dataModel.main.tempMin.toString()),
              trailing: Icon(Icons.thermostat_outlined),
            ),
            ListTile(
              title: Text(dataModel.main.tempMax.toString()),
              trailing: Icon(Icons.thermostat_outlined),
            ),
            ListTile(
              title: Text(dataModel.wind.speed.toString()),
              trailing: Icon(Icons.thermostat_outlined),
            ),
          ],
        ),
      ),
    );
  }
}
