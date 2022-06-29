import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    backgroundColor: Color(0xFF303030),
    textTheme: textTheme(),
  );
}

TextTheme textTheme() {
  return TextTheme(
    headline1: TextStyle(
        color: Colors.white, fontSize: 32, fontWeight: FontWeight.bold),
    headline2: TextStyle(
        color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
    headline3: TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    headline4: TextStyle(
        color: Colors.white, fontSize: 17, fontWeight: FontWeight.bold),
    headline5: TextStyle(
        color: Color(0xff8F8F8F), fontSize: 14, fontWeight: FontWeight.normal),
    headline6: TextStyle(
        color: Color(0xff8F8F8F), fontSize: 14, fontWeight: FontWeight.normal),
    bodyText1: TextStyle(
        color: Color(0xff8F8F8F), fontSize: 12, fontWeight: FontWeight.normal),
    bodyText2: TextStyle(
        color: Color(0xff8F8F8F), fontSize: 10, fontWeight: FontWeight.normal),
  );
}
