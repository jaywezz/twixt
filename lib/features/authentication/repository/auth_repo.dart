import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/regions_model/region_model.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/api_handler.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/dio_exceptions.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';

import '../../../services/dio_service/network_service.dart';

final authRepositoryProvider =
Provider<AuthRepository>((ref) => AuthRepository(ref));


class AuthRepository extends StateNotifier {
  final Ref _reader;

  AuthRepository(this._reader) : super(0);

  Future<Response> login(String phoneNumber, String password)async{
    Isar isar = await IsarService().db;
    try {
      String fcmToken = "";
      // await FirebaseMessaging.instance.getToken().then((value){
      //   fcm_token = value!;
      //   },
      // );
      final res = await ApiHandler.doPost(
          dio:_reader.read(networkServiceProvider),
          url: "/login",
          data: { "phone_number": phoneNumber,
            "password": password, "device_token": fcmToken,});
      await TokenStorage().storeAccessToken(res.data["access_token"]);
      print("saving data: ${User.fromJson(res.data["user"]).name}");
      await isar.writeTxn(() async {
        await isar.users.put(User.fromJson(res.data["user"])); // insert & update
      });
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      print(s);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> sendOtp(String phoneNumber)async{
    try {
      final res = await ApiHandler.doPost(
          dio: _reader.read(networkServiceProvider),
          url: "/send/otp/$phoneNumber",
          data: {"number" : phoneNumber,});
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> resetPassword(String password, String confirmPassword, String phoneNumber)async{
    FlutterSecureStorage tokenStorage = const FlutterSecureStorage();
    try {
      final res = await ApiHandler.doPost(
          dio: _reader.read(networkServiceProvider),
          url: "/reset-password",
          data: {"phone_number" : phoneNumber,
            "password": password,
            "password_confirmation": confirmPassword});
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> verifyOtp(String phoneNumber, String otp)async{
    FlutterSecureStorage tokenStorage = const FlutterSecureStorage();
    try {
      final res = await ApiHandler.doPost(
          dio: _reader.read(networkServiceProvider),
          url: "/verify/otp/$phoneNumber/$otp",
          data: {
            "number" : "0768603211",
            "otp" : "116220"
          });
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
     throw "An unknown error occurred. Try again later";
    }
  }

  Future<List<RegionModel>> getUserRegions(bool isSync)async{
    print("refreshing: $isSync");
    Isar isar = await IsarService().db;

    try {
      final localRegions = await isar.regionModels.where().findAll();
      if(localRegions.isNotEmpty && isSync == false){
        return localRegions;
      }else{
        final res = await ApiHandler.doGet(
          dio:_reader.read(networkServiceProvider),
          url: "/regions/list",);

        List<RegionModel> regions = regionsFromJson(res.data["data"]);
        await isar.writeTxn(() async {
          await isar.regionModels.clear();//clear db to insert new record
        });
        for(RegionModel region in regions){
          await isar.writeTxn(() async {
            await isar.regionModels.put(region); // insert & update
          });
        }
        return regions;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        return await isar.regionModels.where().findAll();
      }else{
        throw message;
      }
    } catch (e, s) {
      print(e);
      throw "An unknown error occurred. Try again later";
    }
  }
}


