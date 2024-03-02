
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/stock_allocation/stock_allocation_model.dart';
import 'package:nested_navigation_gorouter_example/features/reports/models/target_model.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/api_handler.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/dio_exceptions.dart';
import 'package:nested_navigation_gorouter_example/services/dio_service/network_service.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';

final targetsRepositoryProvider =
Provider<TargetRepository>((ref) => TargetRepository(ref));


class TargetRepository extends StateNotifier {
  final Ref _reader;

  TargetRepository(this._reader) : super(0);

  Future<TargetsModel> getTargets(bool isSync)async{
    Isar isar = await IsarService().db;
    try {
      final localTarget = await isar.targetsModels.where().findAll();
      if(localTarget.isNotEmpty && isSync == false){
        return localTarget.first;
      }else{
        final res = await ApiHandler.doGet(
          dio:_reader.read(networkServiceProvider),
          url: "/get/targets",);
        print(res.data["Targets"]["targets_visit"]);

        TargetsModel targetsModel = TargetsModel.fromJson(res.data["Targets"]);
        await isar.writeTxn(() async {
          await isar.targetsModels.clear();//clear db to insert new record
        });
        await isar.writeTxn(() async {
          await isar.targetsModels.put(targetsModel); // insert & update
        });
        return targetsModel;
      }
    } on DioException catch (e, s) {
      String message = DioExceptions.fromDioError(e).message;
      if(message == "Connection TimeOut" || message == "Receive Timeout"){
        TargetsModel? target = await isar.targetsModels.where().findFirst();
        if(target == null){
          throw "No internet Connection";
        }else{
          return target;
        }
      }else{
        throw message;
      }
    } catch (e, s) {
      print(s);
      throw "An unknown error occurred. Try again later";
    }
  }


}


