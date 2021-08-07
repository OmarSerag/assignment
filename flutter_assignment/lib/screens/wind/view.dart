import 'package:flutter/material.dart';
import 'package:flutter_assignment/screens/wind/model.dart';
import 'package:flutter_assignment/screens/wind/windcubit/cubit.dart';
import 'package:flutter_assignment/screens/wind/windcubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:conditional_builder/conditional_builder.dart';

class WindSpeed extends StatelessWidget {
  WindData data;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => WindCubit(),
      child: BlocConsumer<WindCubit, WindState>(
        listener: (BuildContext context, state) {},
        builder: (context, state) {
          return ConditionalBuilder(
            condition: state is! WindGetLoadingState,
            builder: (context) => Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Text(
                  "${data.speed}",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            fallback: (context) => Center(child: CircularProgressIndicator()),
          );
        },
      ),
    );
  }
}
