import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_assignment/screens/Step-1/city.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_assignment/shared/BlocObServer.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.deepOrange,
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          backwardsCompatibility: false,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.black,
          ),
        )
      ),
      home: City(),
    );
  }
}

