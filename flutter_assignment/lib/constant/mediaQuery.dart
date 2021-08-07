import 'package:flutter/material.dart';

BuildContext context;
double sizeFromHeight(double fraction,
    {bool removeAppBarSize = true}) {
  MediaQueryData mediaQuery = MediaQuery.of(context);
  fraction = (removeAppBarSize
      ? (mediaQuery.size.height -
      AppBar().preferredSize.height -
      mediaQuery.padding.top)
      : mediaQuery.size.height) /
      (fraction == 0 ? 1 : fraction);
  return fraction;
}

double sizeFromWidth(double fraction) {
  fraction = MediaQuery.of(context).size.width / (fraction == 0 ? 1 : fraction);
  return fraction;
}