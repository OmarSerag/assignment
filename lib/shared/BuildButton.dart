import 'package:flutter/material.dart';

Widget defaultButton({
  @required String text,
  @required Color backgroundcolor,
  @required Function function,
}) =>
    Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: backgroundcolor,
      ),
      child: MaterialButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
