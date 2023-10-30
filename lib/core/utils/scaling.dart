import 'package:flutter/material.dart';

//This Function scales to the width of the Screen
//update 413  according to figma width and height

double scaleWidth(double value, BuildContext context) {
  return MediaQuery.of(context).size.width  * (value/414);
}

double scaleHeight( double value, BuildContext context) {
  return MediaQuery.of(context).size.height  * (value/867);
}
