import 'package:get/get.dart';

class Controller extends GetxController {
  var _isDark = true.obs;

  get isDark => _isDark.value;
  set isDark(data) => _isDark.value = data;
}
