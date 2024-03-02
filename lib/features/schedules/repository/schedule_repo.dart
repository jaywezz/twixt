
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/models/schedules_model.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/api_handler.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/dio_exceptions.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/network_service.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';

final routesRepository =
Provider<RoutesRepository>((ref) => RoutesRepository(ref));

class RoutesRepository extends StateNotifier {
  final Ref _reader;

  RoutesRepository(this._reader) : super(0);

  Future<List<UserSchedule>> getUserRoutes(bool isSync) async {
    isSync =true;

    Isar isar = await IsarService().db;
    User? user = await isar.users.where().findFirst();
    try {
      final localSchedules = await isar.userSchedules.where().findAll();
      if(localSchedules.isNotEmpty && isSync == false){
        return localSchedules;
      }else{
        final res = await ApiHandler.doGet(
          dio:_reader.read(networkServiceProvider),
          url: "/scheduleVisits",);

        List<UserSchedule> schedules = schedulesFromJson(res.data["ShopVisits"]);
        await isar.writeTxn(() async {
          await isar.userSchedules.clear();//clear db to insert new record
        });
        for(UserSchedule schedule in schedules){
          await isar.writeTxn(() async {
            await isar.userSchedules.put(schedule); // insert & update
          });
        }
        return schedules;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        return await isar.userSchedules.where().findAll();
      }else{
        throw message;
      }
    } catch (e, s) {
      print(e);
      print(s);
      throw "An unknown error occurred. Try again later";
    }
  }

  Future<String> addCustomerVisit(UserSchedule offlineData) async {
    Isar isar = await IsarService().db;
    User? user = await isar.users.where().findFirst();

    print("customer id when schde ${offlineData.customer!.id}");
    try {
      var data = {
        "date": offlineData.schedule!.date.toString(),
        "time": "${offlineData.schedule!.date!.hour}:${offlineData.schedule!.date!.minute}:${offlineData.schedule!.date!.second}",
        "shopID": offlineData.customer!.id!,
        "description": offlineData.schedule!.description
      };
      final res = await ApiHandler.doPost(
        dio:_reader.read(networkServiceProvider),
        url: "/scheduleVisit/${user!.id}",
        data: data
      );
      return "Successfully added schedule";
    }on DioException catch (e, s) {
      print("error:$s");
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        await isar.writeTxn(() async {
          await isar.userSchedules.put(offlineData); // insert & update
        });
        return "Schedule added offline";
      }else{
        throw message;
      }
    }
    catch (e,s) {
      print(s);
      showCustomSnackBar(e.toString(), isError: true);
      return "An unknown error occurred";
    }
  }
}
