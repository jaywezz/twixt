import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/models/customer_group_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/models/prospects_model.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/api_handler.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/dio_exceptions.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/network_service.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';

final prospectsRepositoryProvider =
Provider<LeadsRepository>((ref) => LeadsRepository(ref));


class LeadsRepository extends StateNotifier {
  final Ref _reader;

  LeadsRepository(this._reader) : super(0);

  Future<List<ProspectsModel>> getNegotiations(bool isSync)async{
    print("isrefrshing: ${_reader.read(isRefreshProvider)}");
    Isar isar = await IsarService().db;

    try {
      final localProspects = await isar.prospectsModels.where().findAll();
      if(localProspects.isNotEmpty && _reader.read(isRefreshProvider) == false){
        return localProspects;
      }else{
        final res = await ApiHandler.doGet(
          dio:_reader.read(networkServiceProvider),
          url: "/negotiation",);

        List<ProspectsModel> prospects = prospectsFromJson(res.data["data"]);
        await isar.writeTxn(() async {
          await isar.prospectsModels.clear();//clear db to insert new record
        });
        for(ProspectsModel prospect in prospects){
          await isar.writeTxn(() async {
            await isar.prospectsModels.put(prospect); // insert & update
          });
        }
        _reader.read(isRefreshProvider.state).state = false;
        return prospects;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        _reader.read(isRefreshProvider.state).state = false;
        return await isar.prospectsModels.where().findAll();
      }else{
        _reader.read(isRefreshProvider.state).state = false;
        throw message;
      }
    } catch (e, s) {
      print(e);
      _reader.read(isRefreshProvider.state).state = false;
      throw "An unknown error occurred. Try again later";
    }
  }
  Future<List<ProspectsModel>> getWon(bool isSync)async{
    print("isrefrshing: ${_reader.read(isRefreshProvider)}");
    Isar isar = await IsarService().db;

    try {
      final localProspects = await isar.prospectsModels.where().findAll();
      if(localProspects.isNotEmpty && _reader.read(isRefreshProvider) == false){
        return localProspects;
      }else{
        final res = await ApiHandler.doGet(
          dio:_reader.read(networkServiceProvider),
          url: "/won",);

        List<ProspectsModel> prospects = prospectsFromJson(res.data["data"]);
        await isar.writeTxn(() async {
          await isar.prospectsModels.clear();//clear db to insert new record
        });
        for(ProspectsModel prospect in prospects){
          await isar.writeTxn(() async {
            await isar.prospectsModels.put(prospect); // insert & update
          });
        }
        _reader.read(isRefreshProvider.state).state = false;
        return prospects;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        _reader.read(isRefreshProvider.state).state = false;
        return await isar.prospectsModels.where().findAll();
      }else{
        _reader.read(isRefreshProvider.state).state = false;
        throw message;
      }
    } catch (e, s) {
      print(e);
      _reader.read(isRefreshProvider.state).state = false;
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<List<CustomerGroupModel>> getCustomerGroups(bool isSync)async{
    print("isrefrshing: $isSync");
    Isar isar = await IsarService().db;

    try {
      _reader.read(isRefreshProvider.state).state = true;
      final localCustomerGroups = await isar.customerGroupModels.where().findAll();
      if(localCustomerGroups.isNotEmpty && _reader.read(isRefreshProvider)  == false){
        return localCustomerGroups;
      }else{
        final res = await ApiHandler.doGet(
          dio:_reader.read(networkServiceProvider),
          url: "/customer/groups",);

        List<CustomerGroupModel> customerGroups = customerGroupsFromJson(res.data["data"]);
        await isar.writeTxn(() async {
          await isar.customerGroupModels.clear();//clear db to insert new record
        });
        for(CustomerGroupModel customerGroup in customerGroups){
          await isar.writeTxn(() async {
            await isar.customerGroupModels.put(customerGroup); // insert & update
          });
        }
        _reader.read(isRefreshProvider.state).state = false;
        return customerGroups;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        _reader.read(isRefreshProvider.state).state = false;
        return await isar.customerGroupModels.where().findAll();
      }else{
        _reader.read(isRefreshProvider.state).state = false;
        throw message;
      }
    } catch (e, s) {
      print(e);
      _reader.read(isRefreshProvider.state).state = false;
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> createNegotiation(var data)async{
    Isar isar = await IsarService().db;
    try {
      final res = await ApiHandler.doPost(
          dio:_reader.read(networkServiceProvider),
          url: "/convert/negotiation",
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


  Future<Response> createProspect(var data)async{
    Isar isar = await IsarService().db;
    try {
      final res = await ApiHandler.doPost(
          dio:_reader.read(networkServiceProvider),
          url: "/convert/prospect",
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

  Future<Response> createRetailOrder(var data)async{
    Isar isar = await IsarService().db;
    try {
      final res = await ApiHandler.doPost(
          dio:_reader.read(networkServiceProvider),
          url: "/retail/prospect/order",
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


