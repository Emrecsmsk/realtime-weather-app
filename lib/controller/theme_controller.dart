import 'package:get/get.dart';

class ThemeController extends GetxController {
  var _isDark = false.obs;

  get isDark => _isDark.value;
  set isDark(data) => _isDark.value = data;
}
