import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/features/deliveries/models/delivery_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/products_inventory_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/api_handler.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/dio_exceptions.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/network_service.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';

final deliveriesRepositoryProvider =
Provider<DeliveriesRepository>((ref) => DeliveriesRepository(ref));


class DeliveriesRepository extends StateNotifier {
  final Ref _reader;

  DeliveriesRepository(this._reader) : super(0);

  Future<List<DeliveryModel>> getDeliveries(bool isSync)async{
    Isar isar = await IsarService().db;
    try {
      final localDeliveries = await isar.deliveryModels.where().findAll();
      if(localDeliveries.isNotEmpty && isSync == false){
        return localDeliveries;
      }else{
        final res = await ApiHandler.doGet(
          dio:_reader.read(networkServiceProvider),
          url: "/delivery/getDelivery",);

        List<DeliveryModel> deliveries = deliveriesFromJson(res.data["deliveries"]);
        await isar.writeTxn(() async {
          await isar.deliveryModels.clear();//clear db to insert new record
        });
        for(DeliveryModel delivery in deliveries){
          await isar.writeTxn(() async {
            await isar.deliveryModels.put(delivery); // insert & update
          });
        }
        return deliveries;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        return await isar.deliveryModels.where().findAll();
      }else{
        throw message;
      }
    } catch (e, s) {
      print(s);
      print(e);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> acceptDelivery(String deliveryId)async{
    Isar isar = await IsarService().db;

    try {
      final res = await ApiHandler.doPost(
          dio:_reader.read(networkServiceProvider),
          url: "/accept/delivery/$deliveryId",
          data: {"rider_id" : deliveryId}
      );
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      print(e);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> completeDelivery(String deliveryId)async{
    Isar isar = await IsarService().db;

    try {
      final res = await ApiHandler.doPost(
          dio:_reader.read(networkServiceProvider),
          url: "/complete/delivery/$deliveryId",
          data: {"rider_id" : deliveryId}
      );
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      print(e);
      throw "An unknown error occurred. Try again later";
    }
  }


}


