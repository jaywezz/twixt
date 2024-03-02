import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/features/sales/cold_customers/model/cold_customer_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/checkout_form_model/checkin_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/api_handler.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/dio_exceptions.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/network_service.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final coldRepositoryProvider =
Provider<ColdCustomerRepository>((ref) => ColdCustomerRepository(ref));


class ColdCustomerRepository extends StateNotifier {
  final Ref _reader;

  ColdCustomerRepository(this._reader) : super(0);

  Future<List<ColdCustomerModel>> getColdCustomers(bool isSync)async{
    print("isrefrshing: $isSync");
    Isar isar = await IsarService().db;

    try {
      final localCold = await isar.coldCustomerModels.where().findAll();
      if(localCold.isNotEmpty && _reader.read(isRefreshProvider) == false){
        return localCold;
      }else{
        final res = await ApiHandler.doGet(
          dio:_reader.read(networkServiceProvider),
          url: "/cold-leads",);

        List<ColdCustomerModel> coldCustomers = coldCustomersFromJson(res.data["data"]);
        await isar.writeTxn(() async {
          await isar.coldCustomerModels.clear();//clear db to insert new record
        });
        for(ColdCustomerModel cold in coldCustomers){
          await isar.writeTxn(() async {
            await isar.coldCustomerModels.put(cold); // insert & update
          });
        }
        _reader.read(isRefreshProvider.state).state = false;
        return coldCustomers;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        _reader.read(isRefreshProvider.state).state = false;
        return await isar.coldCustomerModels.where().findAll();
      }else{
        _reader.read(isRefreshProvider.state).state = false;
        throw message;
      }
    } catch (e, s) {
      print(s);
      print(e);
      _reader.read(isRefreshProvider.state).state = false;
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> markAsCold(String id, String reason)async{
    Isar isar = await IsarService().db;

    try {
      var data = {
        "id": id,
        "reason_is_cold": reason
      };
      final res = await ApiHandler.doPost(
          dio:_reader.read(networkServiceProvider),
          url: "/leads/mark-cold",
          data: data
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


