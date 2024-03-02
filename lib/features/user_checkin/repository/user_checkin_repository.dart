import 'package:dio/dio.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/checkout_form_model/checkin_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/regions_model/region_model.dart';
import 'package:nested_navigation_gorouter_example/features/user_checkin/models/checkin_model.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/api_handler.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/dio_exceptions.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';

import '../../../services/dio_service/network_service.dart';

final checkiRepositoryProvider =
Provider<CheckinRepository>((ref) => CheckinRepository(ref));


class CheckinRepository extends StateNotifier {
  final Ref _reader;

  CheckinRepository(this._reader) : super(0);

  Future<Response> userCheckin(var data)async{
    try {
      final res = await ApiHandler.doPost(
          dio: _reader.read(networkServiceProvider),
          url: "/user/checkin/session",
          data: data);
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<Response> userCheckOut()async{
    try {
      Isar isar = await IsarService().db;
      UserCheckinModel? checkin = await isar.userCheckinModels.where().findFirst();
      final res = await ApiHandler.doGet(
          dio: _reader.read(networkServiceProvider),
          url: "/user/${checkin!.checkinCode}/out"
      );
      return res;
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      throw message;
    } catch (e, s) {
      print(s);
      throw "An unknown error occurred. Try again later";
    }
  }
}


