import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:realtimeweather/utility/colors/colors.dart';

class ThemeDark extends ColorCustom {
  late ThemeData theme;

  ThemeDark() {
    theme = ThemeData.dark().copyWith(
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: yankeesBlue.withOpacity(1)),
        textTheme: TextTheme(
            subtitle1: TextStyle(color: white70),
            headline1: TextStyle(color: razzleDazzleRose),
            headline3: TextStyle(color: white),
            headline4: TextStyle(color: white70),
            headline5:
                TextStyle(color: philippineGray, fontWeight: FontWeight.bold)),
        inputDecorationTheme: InputDecorationTheme(
            floatingLabelStyle: TextStyle(color: white70),
            hintStyle: TextStyle(color: white70),
            labelStyle: TextStyle(color: white70),
            fillColor: white,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    BorderSide(style: BorderStyle.solid, color: white70)),
            iconColor: white70,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(style: BorderStyle.solid, color: white70),
            )));
  }
}
