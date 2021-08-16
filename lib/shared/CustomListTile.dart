import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget BuildListTile({
  @required String title,
  @required IconData trailing,
}) =>
    ListTile(
      title: Text(title),
      trailing: Icon(trailing),
    );
