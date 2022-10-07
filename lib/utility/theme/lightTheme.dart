import 'package:flutter/material.dart';
import 'package:realtimeweather/utility/colors/colors.dart';

class ThemeLight extends ColorCustom {
  late ThemeData theme;
  ThemeLight() {
    theme = ThemeData(
        bottomSheetTheme: BottomSheetThemeData(backgroundColor: white),
        textTheme: TextTheme(
            subtitle1: TextStyle(color: white),
            headline1: TextStyle(color: razzleDazzleRose),
            headline3: TextStyle(color: Colors.black),
            headline4: TextStyle(color: white),
            headline5:
                TextStyle(color: philippineGray, fontWeight: FontWeight.bold)),
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
