import 'package:flutter/material.dart';
import 'package:realtimeweather/utility/colors/colors.dart';

class ThemeLight extends ColorCustom {
  late ThemeData theme;
  ThemeLight() {
    theme = ThemeData(
        textTheme: TextTheme(
            subtitle1: TextStyle(color: white),
            headline4: TextStyle(color: white)),
        inputDecorationTheme: InputDecorationTheme(
            floatingLabelStyle: TextStyle(color: white),
            hintStyle: TextStyle(color: white),
            labelStyle: TextStyle(color: white),
            fillColor: white,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(style: BorderStyle.solid, color: white)),
            iconColor: white,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(style: BorderStyle.solid, color: white),
            )));
  }
}
