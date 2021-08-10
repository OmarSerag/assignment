import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/weather/controller.dart';
import 'package:flutter_assignment/screens/weather/view.dart';
import 'package:flutter_assignment/shared/BuildButton.dart';
import 'package:flutter_assignment/shared/BuildTextField.dart';

class City extends StatelessWidget {
  var _WeatherController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
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
      ],
    );
  }
}
