import 'dart:convert';

import 'package:isar/isar.dart';

part 'warehouse_model.g.dart';

List<WarehouseModel> warehousesFromJson(dynamic str) => List<WarehouseModel>.from(
  (str).map(
        (e) => WarehouseModel.fromJson(e),
  ),
);

@Collection()
class WarehouseModel {
  Id isarId = Isar.autoIncrement;
  int? id;
  String? businessCode;
  String? warehouseCode;
  String? name;
  String? country;
  String? city;
  String? location;
  String? phoneNumber;
  String? email;
  String? longitude;
  String? latitude;
  String? status;
  String? isMain;
  String? createdBy;
  String? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? manager;
  int? regionId;
  int? subregionId;

  WarehouseModel({
    this.id,
    this.businessCode,
    this.warehouseCode,
    this.name,
    this.country,
    this.city,
    this.location,
    this.phoneNumber,
    this.email,
    this.longitude,
    this.latitude,
    this.status,
    this.isMain,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.manager,
    this.regionId,
    this.subregionId,
  });

  factory WarehouseModel.fromRawJson(String str) => WarehouseModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory WarehouseModel.fromJson(Map<String, dynamic> json) => WarehouseModel(
    id: json["id"],
    businessCode: json["business_code"],
    warehouseCode: json["warehouse_code"],
    name: json["name"],
    country: json["country"],
    city: json["city"],
    location: json["location"],
    phoneNumber: json["phone_number"],
    email: json["email"],
    longitude: json["longitude"],
    latitude: json["latitude"],
    status: json["status"],
    isMain: json["is_main"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    manager: json["manager"],
    regionId: json["region_id"],
    subregionId: json["subregion_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "business_code": businessCode,
    "warehouse_code": warehouseCode,
    "name": name,
    "country": country,
    "city": city,
    "location": location,
    "phone_number": phoneNumber,
    "email": email,
    "longitude": longitude,
    "latitude": latitude,
    "status": status,
    "is_main": isMain,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "manager": manager,
    "region_id": regionId,
    "subregion_id": subregionId,
  };
}
