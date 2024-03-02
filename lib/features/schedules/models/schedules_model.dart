import 'dart:convert';

import 'package:isar/isar.dart';
part 'schedules_model.g.dart';


List<UserSchedule> schedulesFromJson(dynamic str) => List<UserSchedule>.from(
  (str).map(
        (e) => UserSchedule.fromJson(e),
  ),
);

@Collection()
class UserSchedule {
  Id isarId = Isar.autoIncrement;
  Schedule? schedule;
  Customer? customer;

  UserSchedule({
    this.schedule,
    this.customer,
  });

  factory UserSchedule.fromRawJson(String str) => UserSchedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory UserSchedule.fromJson(Map<String, dynamic> json) => UserSchedule(
    schedule: json["schedule"] == null ? null : Schedule.fromJson(json["schedule"]),
    customer: json["customer"] == null ? null : Customer.fromJson(json["customer"]),
  );

  Map<String, dynamic> toJson() => {
    "schedule": schedule?.toJson(),
    "customer": customer?.toJson(),
  };
}

@Embedded()
class Customer {
  int? id;
  String? customerName;
  String? address;
  String? email;
  String? phoneNumber;
  String? latitude;
  String? longitude;
  String? customerType;

  Customer({
    this.id,
    this.customerName,
    this.address,
    this.email,
    this.phoneNumber,
    this.latitude,
    this.longitude,
    this.customerType,
  });

  factory Customer.fromRawJson(String str) => Customer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
    id: json["id"],
    customerName: json["customer_name"],
    address: json["address"],
    email: json["email"],
    phoneNumber: json["phone_number"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    customerType: json["customer_type"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "customer_name": customerName,
    "address": address,
    "email": email,
    "phone_number": phoneNumber,
    "latitude": latitude,
    "longitude": longitude,
    "customer_type": customerType,
  };
}

@Embedded()
class Schedule {
  String? userCode;
  String? shopId;
  DateTime? date;
  String? type;
  String? time;
  String? description;
  String? visitedStatus;

  Schedule({
    this.userCode,
    this.shopId,
    this.date,
    this.type,
    this.time,
    this.description,
    this.visitedStatus,
  });

  factory Schedule.fromRawJson(String str) => Schedule.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Schedule.fromJson(Map<String, dynamic> json) => Schedule(
    userCode: json["user_code"],
    shopId: json["shopID"],
    date: json["Date"] == null ? null : DateTime.parse(json["Date"]),
    type: json["Type"],
    time: json["Time"],
    description: json["Description"],
    visitedStatus: json["VisitedStatus"],
  );

  Map<String, dynamic> toJson() => {
    "user_code": userCode,
    "shopID": shopId,
    "Date": date?.toIso8601String(),
    "Type": type,
    "Time": time,
    "Description": description,
    "VisitedStatus": visitedStatus,
  };
}
