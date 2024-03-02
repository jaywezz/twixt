import 'dart:convert';

import 'package:isar/isar.dart';
part 'checkin_model.g.dart';

@Collection()
class UserCheckinModel {
  Id isarId = Isar.autoIncrement;
  String? checkinTime;
  String? latitude;
  String? longitude;
  String? checkinCode;

  UserCheckinModel({
    this.checkinTime,
    this.latitude,
    this.longitude,
    this.checkinCode,
  });

  factory UserCheckinModel.fromRawJson(String str) => UserCheckinModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserCheckinModel.fromJson(Map<String, dynamic> json) => UserCheckinModel(
    checkinTime: json["checkinTime"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    checkinCode: json["checkinCode"],
  );

  Map<String, dynamic> toJson() => {
    "checkinTime": checkinTime,
    "latitude": latitude,
    "longitude": longitude,
    "checkinCode": checkinCode,
  };
}
