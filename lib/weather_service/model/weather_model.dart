import 'package:json_annotation/json_annotation.dart';
import 'package:vexana/vexana.dart';

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel extends INetworkModel<WeatherModel> {
  Location? location;
  Current? current;

  WeatherModel({this.location, this.current});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return _$WeatherModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$WeatherModelToJson(this);
  }

  @override
  WeatherModel fromJson(Map<String, dynamic> json) {
    // TODO: implement fromJson
    return _$WeatherModelFromJson(json);
  }
}

@JsonSerializable()
class Location {
  String? name;
  String? country;

  Location({this.name, this.country});

  factory Location.fromJson(Map<String, dynamic> json) {
    return _$LocationFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$LocationToJson(this);
  }
}

@JsonSerializable()
class Current {
  double? temp_c;
  double? temp_f;
  Condition? condition;

  Current({this.temp_c, this.temp_f, this.condition});

  factory Current.fromJson(Map<String, dynamic> json) {
    return _$CurrentFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CurrentToJson(this);
  }
}

@JsonSerializable()
class Condition {
  String? text;
  String? icon;
  int? code;

  Condition({this.text, this.icon, this.code});

  factory Condition.fromJson(Map<String, dynamic> json) {
    return _$ConditionFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$ConditionToJson(this);
  }
}
