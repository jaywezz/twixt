import 'dart:convert';

import 'package:isar/isar.dart';
part 'delivery_model.g.dart';

List<DeliveryModel> deliveriesFromJson(dynamic str) => List<DeliveryModel>.from(
  (str).map(
        (e) => DeliveryModel.fromJson(e),
  ),
);

@Collection()
class DeliveryModel {
  Id isarId = Isar.autoIncrement;
  int? id;
  String? businessCode;
  String? deliveryCode;
  String? orderCode;
  int? allocated;
  String? deliveryNote;
  String? deliveryStatus;
  DeliveryCustomer? customer;
  String? deliveredTime;
  String? acceptAllocation;
  String? customerConfirmation;
  int? approval;
  String? createdBy;
  String? updatedBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  DateTime? deliveryDate;
  int? riderId;
  String? stockStatus;
  Order? order;
  List<OrderItem>? orderItems;

  DeliveryModel({
    this.id,
    this.businessCode,
    this.deliveryCode,
    this.orderCode,
    this.allocated,
    this.deliveryNote,
    this.deliveryStatus,
    this.customer,
    this.deliveredTime,
    this.acceptAllocation,
    this.customerConfirmation,
    this.approval,
    this.createdBy,
    this.updatedBy,
    this.createdAt,
    this.updatedAt,
    this.deliveryDate,
    this.riderId,
    this.stockStatus,
    this.order,
    this.orderItems,
  });

  factory DeliveryModel.fromRawJson(String str) => DeliveryModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeliveryModel.fromJson(Map<String, dynamic> json) => DeliveryModel(
    id: json["delivery"]["id"],
    businessCode: json["delivery"]["business_code"],
    deliveryCode: json["delivery"]["delivery_code"],
    orderCode: json["delivery"]["order_code"],
    allocated: json["delivery"]["allocated"],
    deliveryNote: json["delivery"]["delivery_note"],
    deliveryStatus: json["delivery"]["delivery_status"],
    customer: json["delivery"]["customer"] == null ? null : DeliveryCustomer.fromJson(json["delivery"]["customer"]),
    deliveredTime: json["delivery"]["delivered_time"],
    acceptAllocation: json["delivery"]["accept_allocation"],
    customerConfirmation: json["delivery"]["customer_confirmation"],
    approval: json["delivery"]["approval"],
    createdBy: json["delivery"]["created_by"],
    updatedBy: json["delivery"]["updated_by"],
    createdAt: json["delivery"]["created_at"] == null ? null : DateTime.parse(json["delivery"]["created_at"]),
    updatedAt: json["delivery"]["updated_at"] == null ? null : DateTime.parse(json["delivery"]["updated_at"]),
    deliveryDate: json["delivery_date"] == null ? null : DateTime.parse(json["delivery"]["delivery_date"]),
    riderId: json["delivery"]["rider_id"],
    stockStatus: json["delivery"]["stock_status"],
    order: json["delivery"]["order"] == null ? null : Order.fromJson(json["delivery"]["order"]),
    orderItems: json["delivery"]["order_items"] == null ? [] : List<OrderItem>.from(json["delivery"]["order_items"]!.map((x) => OrderItem.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "business_code": businessCode,
    "delivery_code": deliveryCode,
    "order_code": orderCode,
    "allocated": allocated,
    "delivery_note": deliveryNote,
    "delivery_status": deliveryStatus,
    "customer": customer?.toJson(),
    "delivered_time": deliveredTime,
    "accept_allocation": acceptAllocation,
    "customer_confirmation": customerConfirmation,
    "approval": approval,
    "created_by": createdBy,
    "updated_by": updatedBy,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "delivery_date": "${deliveryDate!.year.toString().padLeft(4, '0')}-${deliveryDate!.month.toString().padLeft(2, '0')}-${deliveryDate!.day.toString().padLeft(2, '0')}",
    "rider_id": riderId,
    "stock_status": stockStatus,
    "order": order?.toJson(),
    "order_items": orderItems == null ? [] : List<dynamic>.from(orderItems!.map((x) => x.toJson())),
  };
}

@Embedded()
class DeliveryCustomer {
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

  DeliveryCustomer({
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

  factory DeliveryCustomer.fromRawJson(String str) => DeliveryCustomer.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DeliveryCustomer.fromJson(Map<String, dynamic> json) => DeliveryCustomer(
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

@Embedded()
class Order {
  int? id;
  String? orderCode;
  String? userCode;
  int? customerId;
  String? priceTotal;
  String? balance;
  String? discount;
  String? note;
  String? orderStatus;
  String? paymentStatus;
  int? qty;
  String? checkinCode;
  String? orderType;
  String? reasonsPartialDelivery;
  String? cancellationReason;
  DateTime? deliveryDate;
  String? businessCode;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? supplierId;
  String? reallocatedFromOrder;
  String? distributor;
  String? updatedQty;
  String? initialTotalPrice;
  int? deliveryByDistributor;
  int? riderId;
  String? paidTotal;

  Order({
    this.id,
    this.orderCode,
    this.userCode,
    this.customerId,
    this.priceTotal,
    this.balance,
    this.discount,
    this.note,
    this.orderStatus,
    this.paymentStatus,
    this.qty,
    this.checkinCode,
    this.orderType,
    this.reasonsPartialDelivery,
    this.cancellationReason,
    this.deliveryDate,
    this.businessCode,
    this.createdAt,
    this.updatedAt,
    this.supplierId,
    this.reallocatedFromOrder,
    this.distributor,
    this.updatedQty,
    this.initialTotalPrice,
    this.deliveryByDistributor,
    this.riderId,
    this.paidTotal,
  });

  factory Order.fromRawJson(String str) => Order.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Order.fromJson(Map<String, dynamic> json) => Order(
    id: json["id"],
    orderCode: json["order_code"],
    userCode: json["user_code"],
    customerId: json["customerID"],
    priceTotal: json["price_total"],
    balance: json["balance"],
    discount: json["discount"],
    note: json["note"],
    orderStatus: json["order_status"],
    paymentStatus: json["payment_status"],
    qty: json["qty"],
    checkinCode: json["checkin_code"],
    orderType: json["order_type"],
    reasonsPartialDelivery: json["reasons_partial_delivery"],
    cancellationReason: json["cancellation_reason"],
    deliveryDate: json["delivery_date"] == null ? null : DateTime.parse(json["delivery_date"]),
    businessCode: json["business_code"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    supplierId: json["supplierID"],
    reallocatedFromOrder: json["reallocated_from_order"],
    distributor: json["distributor"],
    updatedQty: json["updated_qty"],
    initialTotalPrice: json["initial_total_price"],
    deliveryByDistributor: json["delivery_by_distributor"],
    riderId: json["rider_id"],
    paidTotal: json["paid_total"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "order_code": orderCode,
    "user_code": userCode,
    "customerID": customerId,
    "price_total": priceTotal,
    "balance": balance,
    "discount": discount,
    "note": note,
    "order_status": orderStatus,
    "payment_status": paymentStatus,
    "qty": qty,
    "checkin_code": checkinCode,
    "order_type": orderType,
    "reasons_partial_delivery": reasonsPartialDelivery,
    "cancellation_reason": cancellationReason,
    "delivery_date": "${deliveryDate!.year.toString().padLeft(4, '0')}-${deliveryDate!.month.toString().padLeft(2, '0')}-${deliveryDate!.day.toString().padLeft(2, '0')}",
    "business_code": businessCode,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "supplierID": supplierId,
    "reallocated_from_order": reallocatedFromOrder,
    "distributor": distributor,
    "updated_qty": updatedQty,
    "initial_total_price": initialTotalPrice,
    "delivery_by_distributor": deliveryByDistributor,
    "rider_id": riderId,
    "paid_total": paidTotal,
  };
}

@Embedded()
class OrderItem {
  int? id;
  String? bussinessCode;
  String? orderCode;
  int? productId;
  String? productName;
  int? quantity;
  String? subTotal;
  String? totalAmount;
  String? sellingPrice;
  String? discount;
  int? taxrate;
  String? taxvalue;
  DateTime? createdAt;
  DateTime? updatedAt;
  String? requestedQuantity;
  String? allocatedQuantity;
  String? allocatedSubtotal;
  String? deliveryQuantity;
  String? allocatedTotalamount;
  String? riderId;

  OrderItem({
    this.id,
    this.bussinessCode,
    this.orderCode,
    this.productId,
    this.productName,
    this.quantity,
    this.subTotal,
    this.totalAmount,
    this.sellingPrice,
    this.discount,
    this.taxrate,
    this.taxvalue,
    this.createdAt,
    this.updatedAt,
    this.requestedQuantity,
    this.allocatedQuantity,
    this.allocatedSubtotal,
    this.deliveryQuantity,
    this.allocatedTotalamount,
    this.riderId,
  });

  factory OrderItem.fromRawJson(String str) => OrderItem.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory OrderItem.fromJson(Map<String, dynamic> json) => OrderItem(
    id: json["id"],
    bussinessCode: json["bussiness_code"],
    orderCode: json["order_code"],
    productId: json["productID"],
    productName: json["product_name"],
    quantity: json["quantity"],
    subTotal: json["sub_total"],
    totalAmount: json["total_amount"],
    sellingPrice: json["selling_price"],
    discount: json["discount"],
    taxrate: json["taxrate"],
    taxvalue: json["taxvalue"],
    createdAt: json["created_at"] == null ? null : DateTime.parse(json["created_at"]),
    updatedAt: json["updated_at"] == null ? null : DateTime.parse(json["updated_at"]),
    requestedQuantity: json["requested_quantity"],
    allocatedQuantity: json["allocated_quantity"],
    allocatedSubtotal: json["allocated_subtotal"],
    deliveryQuantity: json["delivery_quantity"],
    allocatedTotalamount: json["allocated_totalamount"],
    riderId: json["rider_id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "bussiness_code": bussinessCode,
    "order_code": orderCode,
    "productID": productId,
    "product_name": productName,
    "quantity": quantity,
    "sub_total": subTotal,
    "total_amount": totalAmount,
    "selling_price": sellingPrice,
    "discount": discount,
    "taxrate": taxrate,
    "taxvalue": taxvalue,
    "created_at": createdAt?.toIso8601String(),
    "updated_at": updatedAt?.toIso8601String(),
    "requested_quantity": requestedQuantity,
    "allocated_quantity": allocatedQuantity,
    "allocated_subtotal": allocatedSubtotal,
    "delivery_quantity": deliveryQuantity,
    "allocated_totalamount": allocatedTotalamount,
    "rider_id": riderId,
  };
}

