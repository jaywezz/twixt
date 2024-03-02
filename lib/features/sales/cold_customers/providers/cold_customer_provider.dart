import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/auth_repo.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/root_screen.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/products_inventory_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/cold_customers/model/cold_customer_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/cold_customers/repository/cold_customers_repo.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/checkout_form_model/checkin_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/regions_model/region_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/repository/leads_repo.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/models/customer_group_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/models/prospects_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/repository/prospects_repo.dart';
import 'package:nested_navigation_gorouter_example/features/sales/sales_base_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';
import 'package:nested_navigation_gorouter_example/services/location_service.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

import '../../prospects/provider/prospects_provider.dart';

final coldCustomersProvider = FutureProvider<List<ColdCustomerModel>>((ref) async {
  final coldCustomers = await ref.watch(coldRepositoryProvider).getColdCustomers(true);
  if(ref.watch(searchController).text != ""){
    print("return refreshed leads");
    return coldCustomers.where((element) => element.customerName!.toLowerCase().contains(ref.watch(searchController).text.toLowerCase())).toList();
  }else{
    return coldCustomers;
  }
});


final coldCustomesNotifier =
StateNotifierProvider<ColdCustomersNotifier, AsyncValue>((ref) {
  return ColdCustomersNotifier(read: ref);
});


class ColdCustomersNotifier extends StateNotifier<AsyncValue> {
  ColdCustomersNotifier({required this.read})
      : super(const AsyncValue.data(null));
  Ref read;

  Future<void> markAsCold(BuildContext context, String reason, String id) async {
    state = const AsyncValue.loading();

    // TODO Get the check in code from preferences
    Isar isar = await IsarService().db;
    try {
      final responseModel = await read.read(coldRepositoryProvider).markAsCold(id, reason);
      showCustomSnackBar("Successfully marked as cold.",bgColor: Styles.appGreenColor);
      read.read(isRefreshProvider.state).state = true;
      read.watch(leadsRepositoryProvider).getLeads(true);
      read.refresh(leadsProvider);
      read.watch(prospectsRepositoryProvider).getNegotiations(true);
      read.refresh(prospectsProvider);
      read.watch(coldRepositoryProvider).getColdCustomers(true);
      read.refresh(coldCustomersProvider);
      if(!mounted) return;
      context.goNamed(RootScreen.routeName);
      state = AsyncValue.data(responseModel);


    } catch (e, s) {
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

}