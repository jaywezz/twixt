import 'dart:convert';

import 'package:isar/isar.dart';

part 'stock_allocation_model.g.dart';

List<StockAllocationModel> stockAllocationFromJson(dynamic str) => List<StockAllocationModel>.from(
  (str).map(
        (e) => StockAllocationModel.fromJson(e),
  ),
);

@Collection()
class StockAllocationModel {
  Id isarId = Isar.autoIncrement;
  String? itemCode;
  int? productCategoryId;
  int? productId;
  String? productName;
  String? price;
  String? currentStock;
  String? allocatedQty;

  StockAllocationModel({
    this.itemCode,
    this.productCategoryId,
    this.productId,
    this.productName,
    this.price,
    this.currentStock,
    this.allocatedQty,
  });

  factory StockAllocationModel.fromRawJson(String str) => StockAllocationModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory StockAllocationModel.fromJson(Map<String, dynamic> json) => StockAllocationModel(
    itemCode: json["item_code"],
    productCategoryId: json["product_category_id"],
    productId: json["productID"],
    productName: json["product_name"],
    price: json["price"],
    currentStock: json["allocated_quantity"].toString(),
    allocatedQty: json["allocated_quantity"].toString(),
  );

  Map<String, dynamic> toJson() => {
    "item_code": itemCode,
    "product_category_id": productCategoryId,
    "productID": productId,
    "product_name": productName,
    "price": price,
    "current_stock": currentStock,
  };
}
