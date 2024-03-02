import 'dart:convert';

import 'package:isar/isar.dart';

part 'prospects_model.g.dart';

List<ProspectsModel> prospectsFromJson(dynamic str) => List<ProspectsModel>.from(
  (str).map((e) => ProspectsModel.fromJson(e),
  ),
);

@Collection()
class ProspectsModel {
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
  int? customerGroupId;
  int? productId;
  bool offline;

  ProspectsModel({
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
    this.offline = false,
  });

  factory ProspectsModel.fromRawJson(String str) => ProspectsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProspectsModel.fromJson(Map<String, dynamic> json) => ProspectsModel(
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

  Map<String, String> toJson() => {
    "id": id.toString(),
    "customer_name": customerName.toString(),
    "user_code": userCode.toString(),
    "account": account.toString(),
    "manufacturer_number": manufacturerNumber.toString(),
    "vat_number": vatNumber.toString(),
    "approval": approval.toString(),
    "delivery_time": deliveryTime.toString(),
    "address": address.toString(),
    "city": city.toString(),
    "province": province.toString(),
    "postal_code": postalCode.toString(),
    "country": country.toString(),
    "latitude": latitude.toString(),
    "longitude": longitude.toString(),
    "contact_person": contactPerson.toString(),
    "telephone": telephone.toString(),
    "customer_group": customerGroup.toString(),
    "customer_secondary_group": customerSecondaryGroup.toString(),
    "price_group": priceGroup.toString(),
    "route": route.toString(),
    "route_code": routeCode.toString(),
    "branch": branch.toString(),
    "status": status.toString(),
    "email": email.toString(),
    "image": image.toString(),
    "phone_number": phoneNumber.toString(),
    "business_code": businessCode.toString(),
    "created_by": createdBy.toString(),
    "updated_by": updatedBy.toString(),
    "created_at": createdAt!.toString(),
    "updated_at": updatedAt!.toString(),
    "lead_type": leadType.toString(),
    "customer_type": customerType.toString(),
    "is_prospect": isProspect.toString(),
    "approval_prospect_status": approvalProspectStatus.toString(),
    "prospect_status": prospectStatus.toString(),
    "region_id": regionId.toString(),
    "subregion_id": subregionId.toString(),
    "zone_id": zoneId.toString(),
    "unit_id": unitId.toString(),
    "id_number": idNumber.toString(),
    "product_group": productGroup.toString(),
    "lead_source": leadSource.toString(),
    "action": action.toString(),
    "kra_pin": kraPin.toString(),
    "product_type_id": productTypeId.toString(),
    "quantity_id": quantityId.toString(),
    "is_cold": isCold.toString(),
    "reason_is_cold": reasonIsCold.toString(),
    "institution_name": institutionName.toString(),
    "customer_group_id": customerGroupId.toString(),
    "product_id": productId.toString(),
  };
}
