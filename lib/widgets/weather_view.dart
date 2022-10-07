import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:realtimeweather/controller/theme_controller.dart';
import 'package:realtimeweather/controller/weather_controller.dart';
import 'package:realtimeweather/mixin/lottie/lottie_mixin.dart';
import 'package:realtimeweather/weather_service/model/weather_model.dart';
import 'package:realtimeweather/weather_service/service/weather_service.dart';

class WeatherView extends StatefulWidget {
  const WeatherView({
    Key? key,
  }) : super(key: key);

  @override
  State<WeatherView> createState() => _WeatherViewState();
}

class _WeatherViewState extends State<WeatherView>
    with LottieMixin, TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    weatherController = Get.put(WeatherController());
    var now = new DateTime.now();
    var formatter = new DateFormat.yMMMMd('en_US');
    formattedDate = formatter.format(now);
  }

  late String formattedDate;

  late WeatherController weatherController;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3, vertical: 20),
        child: Divider(
          thickness: 3,
          indent: MediaQuery.of(context).size.width * 0.45,
          endIndent: MediaQuery.of(context).size.width * 0.45,
        ),
      ),
      weatherController.error
          ? SizedBox(
              child: Column(
                children: [
                  Text("There is no such city"),
                  Lottie.asset(
                    error,
                  )
                ],
              ),
            )
          : Column(
              children: [
                Text(
                  weatherController.city,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  weatherController.country,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  weatherController.temp_c.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .headline1
                      ?.copyWith(fontWeight: FontWeight.bold),
                ),
                Text(weatherController.conditionText,
                    style: Theme.of(context)
                        .textTheme
                        .headline3
                        ?.copyWith(fontSize: 25, fontWeight: FontWeight.bold)),
                Text(
                  formattedDate,
                  style: Theme.of(context).textTheme.headline5,
                ),
              ],
            ),
    ]);
  }
}
