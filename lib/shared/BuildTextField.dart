import 'package:flutter/material.dart';

Widget defaultFormField(
    {
      @required TextEditingController controller,
      @required TextInputType type,
      @required String label,
      @required Function validate,
      Function OnChange,
      Function OnSubmit,
    }) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      validator: validate,
      onFieldSubmitted: OnSubmit,
      onChanged: OnChange,
      decoration: InputDecoration(
        labelStyle: TextStyle(color: Colors.black),
        labelText: label,
        border: OutlineInputBorder(),
      ),
    );