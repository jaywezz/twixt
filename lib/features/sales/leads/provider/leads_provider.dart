import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/auth_repo.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/checkout_form_model/checkin_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/checkout_form_model/checkout_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/regions_model/region_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/repository/leads_repo.dart';
import 'package:nested_navigation_gorouter_example/features/sales/sales_base_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/services/location_service.dart';
import 'package:nested_navigation_gorouter_example/services/notification_service.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

final selectedRegionProvider = StateProvider<RegionModel?>((ref) => null);
final selectedSubRegionProvider = StateProvider<Subregion?>((ref) => null);
final selectedAreaProvider = StateProvider<Area?>((ref) => null);
final checkinTimeProvider = StateProvider<int>((ref) => 0);



final leadsProvider = FutureProvider<List<LeadsModel>>((ref) async {
  final leads = await ref.watch(leadsRepositoryProvider).getLeads(true);
  if(ref.watch(searchController).text != ""){
    return leads.where((element) => element.customerName!.toLowerCase().contains(ref.watch(searchController).text.toLowerCase())).toList();
  }else{
    return leads.reversed.toList();
  }
});

final leadsNotifier =
StateNotifierProvider<LeadsNotifier, AsyncValue>((ref) {
  return LeadsNotifier(read: ref);
});


class LeadsNotifier extends StateNotifier<AsyncValue> {
  LeadsNotifier({required this.read})
      : super(const AsyncValue.data(null));
  Ref read;

  late Timer _timer;
  Future<void> createLead(BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      print("data: ${read.watch(leadsFormData).toJson()}");

      final responseModel = await read.read(leadsRepositoryProvider).createLead(read.watch(leadsFormData).toJson());
      showCustomSnackBar("Lead created successfully.",bgColor: Styles.appGreenColor);
      read.read(isRefreshProvider.state).state = true;
      read.watch(leadsRepositoryProvider).getLeads(true);
      read.refresh(leadsProvider);
      context.pop();
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> customerCheckIn(BuildContext context, dynamic lead) async {
    state = const AsyncValue.loading();
    try {
      CheckInModel checkInModel;
      read.watch(positionProvider).whenData((value) async{
        checkInModel = CheckInModel(
            status: "Active",
            checkinTime: DateTime.now(),
            longitude: value!.longitude.toString(),
            latitude: value.latitude.toString(),
            customerId: lead.id.toString(),
            customerType: lead.customerType,
            createdAt: DateTime.now(),
            offline: false
        );

        final responseModel = await read.read(leadsRepositoryProvider).customerCheckIn(checkInModel);
        // startTimer();
        NotificationController.createNewNotification(lead.toJson(), lead.customerName!);
        showCustomSnackBar("Successfully checked in.",bgColor: Styles.appGreenColor);
        // if(!mounted) return;
        state = AsyncValue.data(responseModel);
      });

    } catch (e, s) {
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> customerCheckOut(BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      print("data: ${read.watch(checkOutFormData).toJson()}");

      final responseModel = await read.read(leadsRepositoryProvider).customerCheckout(read.watch(checkOutFormData).toJson());
      _timer.cancel();
      read.read(checkinTimeProvider.state).state = 0;
      showCustomSnackBar("Successfully checked out.",bgColor: Styles.appGreenColor);
      NotificationController.cancelNotifications();
      context.pop();
      context.pop();
      // context.pop();
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }


  void startTimer() {
    print("again on timer");
    const period = const Duration(seconds: 1);
    _timer = Timer.periodic(period, (timer) {
      read.read(checkinTimeProvider.state).state++;
    });
  }
}

final leadsFormData = StateProvider<LeadsModel>((ref) => LeadsModel(id: 1, leadSource: "Self Sourced", leadType: "Individual"));
final checkOutFormData = StateProvider<CheckOutModel>((ref) => CheckOutModel(
  didLeadMakeOrder: "Yes"
));