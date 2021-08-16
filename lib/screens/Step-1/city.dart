import 'package:flutter/material.dart';
import 'package:flutter_weather_assignment/screens/weather/model.dart';
import 'package:flutter_weather_assignment/shared/CustomListTile.dart';

class CityView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    WeatherModel data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text(
          'Step1 Result',
          style: TextStyle(
              color: Colors.black, fontSize: 25.0, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BuildListTile(
              title: 'Description: ${data.weather[0].description}',
              trailing: Icons.thermostat_outlined),
          BuildListTile(
              title: 'Temperature: ${data.main.temp}',
              trailing: Icons.thermostat_outlined),
          BuildListTile(
              title: 'TemperatureMin: ${data.main.tempMin}',
              trailing: Icons.thermostat_outlined),
          BuildListTile(
              title: 'TemperatureMax: ${data.main.tempMax}',
              trailing: Icons.thermostat_outlined),
          BuildListTile(
              title: 'WindSpeed: ${data.wind.speed}',
              trailing: Icons.thermostat_outlined),
          SizedBox(
            height: 40.0,
          ),
        ],
      ),
    );
  }
}
