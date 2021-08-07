import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/temp/view.dart';
import 'package:flutter_assignment/screens/weather/view.dart';
import 'package:flutter_assignment/screens/wind/view.dart';
import 'package:flutter_assignment/shared/BuildButton.dart';
import 'package:flutter_assignment/shared/BuildTextField.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  var _WeatherController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: ListView(
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
                backgroundcolor: Colors.pink,
                function: () {
                  setState(() {
                    WeatherDescription();
                    Temperature();
                    WindSpeed();
                  });
                  if(formKey.currentState.validate());

                },
              ),

            ],
          ),
        ),
      ),
    );
  }
}

