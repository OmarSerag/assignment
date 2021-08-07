import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/temp/model.dart';
import 'package:flutter_assignment/screens/temp/temperature-cubit/cubit.dart';
import 'package:flutter_assignment/screens/temp/temperature-cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conditional_builder/conditional_builder.dart';

class Temperature extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TempData data;
    return BlocProvider(
      create: (context) => temperatureCubit()
        ..gettemperature()
        ..gettemperature_min()
        ..gettemperature_max(),
      child: BlocConsumer<temperatureCubit, temperatureState>(
        listener: (context, state) {},
        builder: (context, state) {
          return ConditionalBuilder(
            condition: state is! temperatureGetLoadingState,
            builder: (context) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey[300],
              ),
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  Text(
                    "${data.temp}",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${data.temp_min}",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${data.temp_max}",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
