import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/checkout_form_model/checkin_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/api_handler.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/dio_exceptions.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/network_service.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

final leadsRepositoryProvider =
Provider<LeadsRepository>((ref) => LeadsRepository(ref));


class LeadsRepository extends StateNotifier {
  final Ref _reader;

  LeadsRepository(this._reader) : super(0);

  Future<List<LeadsModel>> getLeads(bool isSync)async{
    print("isrefrshing: $isSync");
    Isar isar = await IsarService().db;

    try {
      final localLeads = await isar.leadsModels.where().findAll();
      if(localLeads.isNotEmpty && _reader.read(isRefreshProvider) == false){
        return localLeads.reversed.toList();
      }else{
        final res = await ApiHandler.doGet(
          dio:_reader.read(networkServiceProvider),
          url: "/leads",);

        List<LeadsModel> leads = leadsFromJson(res.data["data"]);
        await isar.writeTxn(() async {
          await isar.leadsModels.clear();//clear db to insert new record
        });
        for(LeadsModel lead in leads){
          await isar.writeTxn(() async {
            await isar.leadsModels.put(lead); // insert & update
          });
        }
        _reader.read(isRefreshProvider.state).state = false;
        return leads;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        _reader.read(isRefreshProvider.state).state = false;
        return await isar.leadsModels.where().findAll();
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

  Future<Response> createLead(var data)async{
    Isar isar = await IsarService().db;

    try {
      final res = await ApiHandler.doPost(
        dio:_reader.read(networkServiceProvider),
        url: "/leads/add-leads",
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

  Future<Response> customerCheckout(var data)async{
    Isar isar = await IsarService().db;
    try {
      CheckInModel? checkInModel = await isar.checkInModels.filter()
          .statusEqualTo('Active', caseSensitive: false)
          .limit(1).findFirst();
      if(checkInModel != null){
        final res = await ApiHandler.doGet(
            dio:_reader.read(networkServiceProvider),
            url: "/checkin/${checkInModel.checkinCode}/out",
            data: data
        );
        await isar.writeTxn(() async {
          await isar.checkInModels.clear(); // insert & update
        });
        return res;
      }else{
        throw "No active check-in";
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      print(e);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> customerCheckIn(CheckInModel checkInModel)async{
    Isar isar = await IsarService().db;
    User? user = await isar.users.where().findFirst();
    try {
      var data = {
        "customerID": checkInModel.customerId,
        "user_code": user!.userCode,
        "latitude": checkInModel.latitude,
        "longitude": checkInModel.longitude
      };
      final res = await ApiHandler.doPost(
          dio:_reader.read(networkServiceProvider),
          url: "/customer/checkin/session",
          data: data
      );
      checkInModel.checkinCode = res.data["checking Code"];
      await isar.writeTxn(() async {
        await isar.checkInModels.put(checkInModel); // insert & update
      });
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        checkInModel.offline = true;
        await isar.writeTxn(() async {
          await isar.checkInModels.put(checkInModel); // insert & update
        });
        throw "Offline";
      }else{
        throw message;
      }
      throw message;
    } catch (e, s) {
      print(e);
      throw "An unknown error occurred. Try again later";
    }
  }

}


