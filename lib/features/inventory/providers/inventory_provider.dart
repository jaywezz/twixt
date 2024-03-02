import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/products_inventory_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/stock_allocation/stock_allocation_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/warehouse/warehouse_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/repository/inventory_repository.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';

final productsProvider = FutureProvider<List<ProductsModel>>((ref) async {
  final products = await ref.watch(inventoryRepositoryProvider).getProducts(true);
  return products;
});

final warehousesProvider = FutureProvider<List<WarehouseModel>>((ref) async {
  final warehouses = await ref.watch(inventoryRepositoryProvider).getWarehouses(true);
  return warehouses;
});

final allocationsProvider = FutureProvider<List<StockAllocationModel>>((ref) async {
  final allocations = await ref.watch(inventoryRepositoryProvider).getMyStock(true);
  return allocations;
});

final inventoryNotifier =
StateNotifierProvider<InventoryNotifier, AsyncValue>((ref) {
  return InventoryNotifier(read: ref);
});


class InventoryNotifier extends StateNotifier<AsyncValue> {
  InventoryNotifier({required this.read})
      : super(const AsyncValue.data(null));
  Ref read;

  Future<void> addStockLift(File receiptFile, String warehouseCode, BuildContext context) async {
    state = const AsyncValue.loading();
    var productsData = [];
    for(ProductsModel product in read.watch(orderCartData)){
      productsData.add({
        "id": product.id,
        "product_name": product.productName,
        "qty": product.qty
      });
    }
    print("cart data: ${productsData}");
    try {
      final responseModel = await read.read(inventoryRepositoryProvider).addStockLift(json.encode(productsData), receiptFile, warehouseCode);
      showCustomSnackBar("StockLift requested", isError: false);
      read.refresh(allocationsProvider);
      read.read(orderCartData).clear();
      Navigator.pop(context);
      Navigator.pop(context);
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar("An error occurred", isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> reconcile(String warehouseCode) async {
    state = const AsyncValue.loading();
    var cartData = [];
    for(StockAllocationModel allocation in read.watch(allocationsCart)){
      cartData.add({
        "productID": allocation.productId.toString(),
        "amount": allocation.currentStock!
      });
    }
    try {
      final responseModel = await read.read(inventoryRepositoryProvider).reconcile(cartData, warehouseCode);
      showCustomSnackBar("Reconciled Successfully", isError: false);
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar("An error occurred", isError: true);
      state = AsyncValue.error(e.toString());
    }
  }
}

final allocationsCart = StateProvider<List<StockAllocationModel>>((ref)=>[]);

