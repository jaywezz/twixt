import 'dart:convert';

import 'package:isar/isar.dart';

part 'cold_customer_model.g.dart';

List<ColdCustomerModel> coldCustomersFromJson(dynamic str) => List<ColdCustomerModel>.from(
  (str).map(
        (e) => ColdCustomerModel.fromJson(e),
  ),
);

@Collection()
class ColdCustomerModel {
  Id isarId = Isar.autoIncrement;
  int? id;
  String? customerName;
  String? userCode;
  String? account;
  String? manufacturerNumber;
  String? vatNumber;
  String? approval;
  String? deliveryTime;
  String? address;
  String? city;
  String? province;
  String? postalCode;
  String? country;
  String? latitude;
  String? longitude;
  String? contactPerson;
  String? telephone;
  String? customerGroup;
  String? customerSecondaryGroup;
  String? priceGroup;
  String? route;
  String? routeCode;
  String? branch;
  String? status;
  String? email;
  String? image;
  String? phoneNumber;
  String? businessCode;
  String? createdBy;
  String? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? leadType;
  String? customerType;
  int? isProspect;
  String? approvalProspectStatus;
  String? prospectStatus;
  int? regionId;
  int? subregionId;
  String? zoneId;
  int? unitId;
  String? idNumber;
  String? productGroup;
  String? leadSource;
  String? action;
  String? kraPin;
  String? productTypeId;
  String? quantityId;
  int? isCold;
  String? reasonIsCold;
  String? institutionName;
  String? customerGroupId;
  String? productId;

  ColdCustomerModel({
    this.id,
    this.customerName,
    this.userCode,
    this.account,
    this.manufacturerNumber,
    this.vatNumber,
    this.approval,
    this.deliveryTime,
    this.address,
    this.city,
    this.province,
    this.postalCode,
    this.country,
    this.latitude,
    this.longitude,
    this.contactPerson,
    this.telephone,
    this.customerGroup,
    this.customerSecondaryGroup,
    this.priceGroup,
    this.route,
    this.routeCode,
    this.branch,
    this.status,
    this.email,
    this.image,
    this.phoneNumber,
    this.businessCode,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.leadType,
    this.customerType,
    this.isProspect,
    this.approvalProspectStatus,
    this.prospectStatus,
    this.regionId,
    this.subregionId,
    this.zoneId,
    this.unitId,
    this.idNumber,
    this.productGroup,
    this.leadSource,
    this.action,
    this.kraPin,
    this.productTypeId,
    this.quantityId,
    this.isCold,
    this.reasonIsCold,
    this.institutionName,
    this.customerGroupId,
    this.productId,
  });

  factory ColdCustomerModel.fromRawJson(String str) => ColdCustomerModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ColdCustomerModel.fromJson(Map<String, dynamic> json) => ColdCustomerModel(
    id: json["id"],
    customerName: json["customer_name"],
    userCode: json["user_code"],
    account: json["account"],
    manufacturerNumber: json["manufacturer_number"],
    vatNumber: json["vat_number"],
    approval: json["approval"],
    deliveryTime: json["delivery_time"],
    address: json["address"],
    city: json["city"],
    province: json["province"],
    postalCode: json["postal_code"],
    country: json["country"],
    latitude: json["latitude"],
    longitude: json["longitude"],
    contactPerson: json["contact_person"],
    telephone: json["telephone"],
    customerGroup: json["customer_group"],
    customerSecondaryGroup: json["customer_secondary_group"],
    priceGroup: json["price_group"],
    route: json["route"],
    routeCode: json["route_code"],
    branch: json["branch"],
    status: json["status"],
    email: json["email"],
    image: json["image"],
    phoneNumber: json["phone_number"],
    businessCode: json["business_code"],
    createdBy: json["created_by"],
    updatedBy: json["updated_by"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    leadType: json["lead_type"],
    customerType: json["customer_type"],
    isProspect: json["is_prospect"],
    approvalProspectStatus: json["approval_prospect_status"],
    prospectStatus: json["prospect_status"],
    regionId: json["region_id"],
    subregionId: json["subregion_id"],
    zoneId: json["zone_id"],
    unitId: json["unit_id"],
    idNumber: json["id_number"],
    productGroup: json["product_group"],
    leadSource: json["lead_source"],
    action: json["action"],
    kraPin: json["kra_pin"],
    productTypeId: json["product_type_id"],
    quantityId: json["quantity_id"],
    isCold: json["is_cold"],
    reasonIsCold: json["reason_is_cold"],
    institutionName: json["institution_name"],
    customerGroupId: json["customer_group_id"],
    productId: json["product_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "customer_name": customerName,
    "user_code": userCode,
    "account": account,
    "manufacturer_number": manufacturerNumber,
    "vat_number": vatNumber,
    "approval": approval,
    "delivery_time": deliveryTime,
    "address": address,
    "city": city,
    "province": province,
    "postal_code": postalCode,
    "country": country,
    "latitude": latitude,
    "longitude": longitude,
    "contact_person": contactPerson,
    "telephone": telephone,
    "customer_group": customerGroup,
    "customer_secondary_group": customerSecondaryGroup,
    "price_group": priceGroup,
    "route": route,
    "route_code": routeCode,
    "branch": branch,
    "status": status,
    "email": email,
    "image": image,
    "phone_number": phoneNumber,
    "business_code": businessCode,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "lead_type": leadType,
    "customer_type": customerType,
    "is_prospect": isProspect,
    "approval_prospect_status": approvalProspectStatus,
    "prospect_status": prospectStatus,
    "region_id": regionId,
    "subregion_id": subregionId,
    "zone_id": zoneId,
    "unit_id": unitId,
    "id_number": idNumber,
    "product_group": productGroup,
    "lead_source": leadSource,
    "action": action,
    "kra_pin": kraPin,
    "product_type_id": productTypeId,
    "quantity_id": quantityId,
    "is_cold": isCold,
    "reason_is_cold": reasonIsCold,
    "institution_name": institutionName,
    "customer_group_id": customerGroupId,
    "product_id": productId,
  };
}