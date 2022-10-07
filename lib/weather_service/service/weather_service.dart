import 'dart:io';
import 'package:realtimeweather/weather_service/model/weather_model.dart';
import 'package:vexana/vexana.dart';

class WeatherService {
  Map<String, dynamic> headers = {
    "X-RapidAPI-Key": "f6dbbc1413msh4e0731944ff8ebfp14f394jsndf00c989cc77"
  };
  String baseUrl = "https://weatherapi-com.p.rapidapi.com/current.json?q=";
  late INetworkManager networkManager;

  Future init() async {
    networkManager = NetworkManager(
        isEnableLogger: true,
        options: BaseOptions(baseUrl: baseUrl, headers: headers));
  }

  Future<WeatherModel> fetchWeather(String city) async {
    init();
    final response = await networkManager.send<WeatherModel, WeatherModel>(city,
        parseModel: WeatherModel(), method: RequestType.GET);

    return response.data ?? WeatherModel();
  }
}
