import 'package:get/get.dart';

class WeatherController extends GetxController {
  var _city = "".obs;
  var _country = "".obs;
  var _temp_c = 0.obs;
  var _temp_f = 0.obs;
  var _conditionText = "".obs;
  var _error = false.obs;

  get city => _city.value;
  set city(data) => _city.value = data;

  get country => _country.value;
  set country(data) => _country.value = data;

  get temp_c => _temp_c.value;
  set temp_c(data) => _temp_c.value = data;

  get temp_f => _temp_f.value;
  set temp_f(data) => _temp_f.value = data;

  get conditionText => _conditionText.value;
  set conditionText(data) => _conditionText.value = data;

  get error => _error.value;
  set error(data) => _error.value = data;
}
