import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtimeweather/languages/languages.dart';
import 'package:realtimeweather/screens/search_view.dart';
import 'package:realtimeweather/utility/theme/darkTheme.dart';
import 'package:realtimeweather/utility/theme/lightTheme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        theme: Get.isDarkMode ? ThemeDark().theme : ThemeLight().theme,
        translations: Languages(), // your translations
        locale:
            Locale('en', 'US'), // translations will be displayed in that locale
        fallbackLocale: Locale('en', 'UK'),
        home: const SearchView());
  }
}
