import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/products_inventory_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/stock_allocation/stock_allocation_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/warehouse/warehouse_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/api_handler.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/dio_exceptions.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/network_service.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';

final inventoryRepositoryProvider =
Provider<InventoryRepository>((ref) => InventoryRepository(ref));


class InventoryRepository extends StateNotifier {
  final Ref _reader;

  InventoryRepository(this._reader) : super(0);

  Future<List<ProductsModel>> getProducts(bool isSync)async{
    Isar isar = await IsarService().db;
    try {
      final localProducts = await isar.productsModels.where().findAll();
      if(localProducts.isNotEmpty && isSync == false){
        return localProducts;
      }else{
        final res = await ApiHandler.doGet(
          dio:_reader.read(networkServiceProvider),
          url: "/products/{Qx4FstqLJfHwf3WA}",);

        List<ProductsModel> products = productsFromJson(res.data["list"]);
        await isar.writeTxn(() async {
          await isar.productsModels.clear();//clear db to insert new record
        });
        for(ProductsModel product in products){
          await isar.writeTxn(() async {
            await isar.productsModels.put(product); // insert & update
          });
        }
        return products;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        return await isar.productsModels.where().findAll();
      }else{
        throw message;
      }
    } catch (e, s) {
      print(s);
      print(e);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<List<WarehouseModel>> getWarehouses(bool isSync)async{
    Isar isar = await IsarService().db;
    try {
      final localWarehouses = await isar.warehouseModels.where().findAll();
      if(localWarehouses.isNotEmpty && isSync == false){
        return localWarehouses;
      }else{
        final res = await ApiHandler.doGet(
          dio:_reader.read(networkServiceProvider),
          url: "/delivery/get/warehouses",);

        List<WarehouseModel> warehouses = warehousesFromJson(res.data["data"]);
        await isar.writeTxn(() async {
          await isar.warehouseModels.clear();//clear db to insert new record
        });
        for(WarehouseModel warehouse in warehouses){
          await isar.writeTxn(() async {
            await isar.warehouseModels.put(warehouse); // insert & update
          });
        }
        return warehouses;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        return await isar.warehouseModels.where().findAll();
      }else{
        throw message;
      }
    } catch (e, s) {
      print(s);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<List<StockAllocationModel>> getMyStock(bool isSync)async{
    Isar isar = await IsarService().db;
    try {
      final localStock = await isar.stockAllocationModels.where().findAll();
      if(localStock.isNotEmpty && isSync == false){
        return localStock;
      }else{
        final res = await ApiHandler.doGet(
          dio:_reader.read(networkServiceProvider),
          url: "/delivery/stocklift/show",);

        List<StockAllocationModel> allocations = stockAllocationFromJson(res.data["data"]);
        await isar.writeTxn(() async {
          await isar.stockAllocationModels.clear();//clear db to insert new record
        });
        for(StockAllocationModel allocation in allocations){
          await isar.writeTxn(() async {
            await isar.stockAllocationModels.put(allocation); // insert & update
          });
        }
        return allocations;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        return await isar.stockAllocationModels.where().findAll();
      }else{
        throw message;
      }
    } catch (e, s) {
      print(s);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> addStockLift(var cartData, File receiptFile, String warehouseCode) async {
   try{
     FormData data1 = FormData.fromMap(
         {
           "products":cartData,
           "warehouse_code": warehouseCode,
         }
     );
     data1.files.add(MapEntry(
       "image", await MultipartFile.fromFile(receiptFile.path, filename: "stockLiftReceipt_${DateTime.now()}_${receiptFile.path.toString().split(".").last}",),
     ));
     final res = await ApiHandler.doPost(
         dio:_reader.read(networkServiceProvider),
         url: "/delivery/stocklift",data: data1);
     return res;
   } on DioException catch (e, s) {
     String message = DioExceptions.fromDioError(e).message;
     throw message;
   } catch (e, s) {
     throw "An unknown error occurred. Try again later";
   }
  }

  Future<Response> reconcile(var data, String warehouseCode) async {
    try{
      final res = await ApiHandler.doPost(
          dio:_reader.read(networkServiceProvider),
          url: "/delivery/reconcile/products/$warehouseCode",data: json.encode(data));
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      throw "An unknown error occurred. Try again later";
    }
  }



}


