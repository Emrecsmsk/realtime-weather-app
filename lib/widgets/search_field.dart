import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:realtimeweather/controller/weather_controller.dart';
import 'package:realtimeweather/widgets/weather_view.dart';
import 'package:realtimeweather/weather_service/model/weather_model.dart';
import 'package:realtimeweather/weather_service/service/weather_service.dart';

class SearchField extends StatefulWidget {
  SearchField({
    Key? key,
    required this.showSheet,
  }) : super(key: key);

  VoidCallback showSheet;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  void initState() {
    super.initState();
    _formController = TextEditingController();
    weatherService = WeatherService();
    weatherController = Get.put(WeatherController());
  }

  late TextEditingController _formController;
  late WeatherService weatherService;
  late WeatherController weatherController;
  late WeatherModel weatherModel;

  Future<void> _fetchWeather(String city) async {
    var response = await weatherService.fetchWeather(_formController.text);
    weatherModel = response;
    if (weatherModel.location?.name != null) {
      weatherController.city = weatherModel.location?.name;
      weatherController.country = weatherModel.location?.country;
      weatherController.temp_c = weatherModel.current?.temp_c?.toInt();
      weatherController.temp_f = weatherModel.current?.temp_f?.toInt();
      weatherController.conditionText = weatherModel.current?.condition?.text;
      weatherController.error = false;
    } else {
      weatherController.error = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: IconButton(
              onPressed: () async {
                await _fetchWeather(_formController.text);

                widget.showSheet.call();
              },
              icon: Icon(Icons.search)),
          labelText: 'enter'.tr,
        ),
        controller: _formController,
        keyboardType: TextInputType.name,
      ),
    );
  }
}
