import 'dart:convert';

import 'package:isar/isar.dart';
part 'customer_group_model.g.dart';

List<CustomerGroupModel> customerGroupsFromJson(dynamic str) => List<CustomerGroupModel>.from(
  (str).map((e) => CustomerGroupModel.fromJson(e),
  ),
);

@Collection()
class CustomerGroupModel {
  Id isarId = Isar.autoIncrement;
  int? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? groupName;
  String? businessCode;

  CustomerGroupModel({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.groupName,
    this.businessCode,
  });

  factory CustomerGroupModel.fromRawJson(String str) => CustomerGroupModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory CustomerGroupModel.fromJson(Map<String, dynamic> json) => CustomerGroupModel(
    id: json["id"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    groupName: json["group_name"],
    businessCode: json["business_code"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "group_name": groupName,
    "business_code": businessCode,
  };
}
