
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/auth_repo.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/checkout_form_model/checkin_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/regions_model/region_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/features/user_checkin/models/checkin_model.dart';
import 'package:nested_navigation_gorouter_example/features/user_checkin/repository/user_checkin_repository.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';
import 'package:nested_navigation_gorouter_example/services/location_service.dart';



final checkinStatusProvider = FutureProvider.autoDispose<UserCheckinModel?>((ref) async {
  Isar isar = await IsarService().db;
  UserCheckinModel? checkin = await isar.userCheckinModels.where().findFirst();
  if(checkin == null){
    print("checkin is null");
    return null;
  }else{
    return checkin;
  }
});

final checkinNotifier =
StateNotifierProvider<CheckinNotifier, AsyncValue>((ref) {
  return CheckinNotifier(read: ref);
});


class CheckinNotifier extends StateNotifier<AsyncValue> {
  CheckinNotifier({required this.read})
      : super(const AsyncValue.data(null));
  Ref read;

  Future<bool> checkInStatus()async{
    Isar isar = await IsarService().db;
    UserCheckinModel? checkin = await isar.userCheckinModels.where().findFirst();
    if(checkin == null){
      return false;
    }else{
      return true;
    }
  }

  Future<void> userCheckin(BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      Isar isar = await IsarService().db;
      User? user = await isar.users.where().findFirst();
      read.watch(positionProvider).whenData((value) async{
        var data = {
          "user_code": user!.userCode,
          "latitude": value!.latitude,
          "longitude": value.longitude
        };
        final responseModel = await read.read(checkiRepositoryProvider).userCheckin(data);
        UserCheckinModel checkin = UserCheckinModel(
            checkinTime: DateTime.now().toString(),
            checkinCode: responseModel.data["checking Code"],
            latitude:value.latitude.toString(),
            longitude: value.longitude.toString(),
        );
        await isar.writeTxn(() async {
          await isar.userCheckinModels.put(checkin); // insert & update
        });
        read.refresh(checkinStatusProvider);
        showCustomSnackBar("Successfully checked in.", bgColor: Colors.green, isError: false);
        state = AsyncValue.data(responseModel);
      });
    } catch (e, s) {
      print(s);
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> userCheckOut(BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      Isar isar = await IsarService().db;
      User? user = await isar.users.where().findFirst();
      final responseModel = await read.read(checkiRepositoryProvider).userCheckOut();
      await isar.writeTxn(() async {
        await isar.userCheckinModels.clear(); // insert & update
      });
      showCustomSnackBar("Successfully checked out.", isError: false);
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      print(s);
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> checkUserCheckin()async{
    Isar isar = await IsarService().db;
    UserCheckinModel? checkin = await isar.userCheckinModels.where().findFirst();
    print("the day today:${DateTime.now().day}");
    if(checkin != null){
      if(DateTime.tryParse(checkin.checkinTime?? '')!.day != DateTime.now().day){
        await isar.writeTxn(() async {
          await isar.userCheckinModels.clear(); // insert & update
        });
      }
    }
  }
}
