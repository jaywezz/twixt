import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/auth_repo.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/root_screen.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/products_inventory_model.dart';
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

final prospectsProvider = FutureProvider<List<ProspectsModel>>((ref) async {
  print("getting prospcects");
  final prospects = await ref.watch(prospectsRepositoryProvider).getNegotiations(true);
  print("got ${prospects.length} prospcects");
  if(ref.watch(searchController).text != ""){
    print("return refreshed leads");
    return prospects.where((element) => element.customerName!.toLowerCase().contains(ref.watch(searchController).text.toLowerCase())).toList();
  }else{
    return prospects;
  }
});

final wonCustomerProvider = FutureProvider<List<ProspectsModel>>((ref) async {
  print("getting prospcects");
  final prospects = await ref.watch(prospectsRepositoryProvider).getWon(true);
  print("got ${prospects.length} prospcects");
  if(ref.watch(searchController).text != ""){
    print("return refreshed leads");
    return prospects.where((element) => element.customerName!.toLowerCase().contains(ref.watch(searchController).text.toLowerCase())).toList();
  }else{
    return prospects;
  }
});

final customerGroupsProvider = FutureProvider<List<CustomerGroupModel>>((ref) async {
  final customerGroups = await ref.watch(prospectsRepositoryProvider).getCustomerGroups(true);
  return customerGroups;
});

final prospectsNotifier =
StateNotifierProvider<ProspectsNotifier, AsyncValue>((ref) {
  return ProspectsNotifier(read: ref);
});


class ProspectsNotifier extends StateNotifier<AsyncValue> {
  ProspectsNotifier({required this.read})
      : super(const AsyncValue.data(null));
  Ref read;

  Future<void> createNegotiation(BuildContext context, List<ProductsModel> products) async {
    state = const AsyncValue.loading();

    // TODO Get the check in code from preferences
    Isar isar = await IsarService().db;
    try {
      CheckInModel? checkInModel = await isar.checkInModels.filter()
          .statusEqualTo('Active', caseSensitive: false)
          .limit(1).findFirst();
      var productsData = [];
      for(ProductsModel product in products){
        productsData.add({"product_id": product.id, "price": product.price});
      }
      var data = {
        "customer_id" : read.watch(prospectsFormData).id,
        "product_data": productsData,
        "customer_group_id": read.watch(prospectsFormData).customerGroupId,
        "checkin_code": checkInModel!.checkinCode
      };

      final responseModel = await read.read(prospectsRepositoryProvider).createNegotiation(data);
      showCustomSnackBar("Negotiation created successfully.",bgColor: Styles.appGreenColor);
      read.read(isRefreshProvider.state).state = true;
      read.watch(leadsRepositoryProvider).getLeads(true);
      read.refresh(leadsProvider);
      read.watch(prospectsRepositoryProvider).getNegotiations(true);
      read.refresh(prospectsProvider);
      if(!mounted) return;
      context.goNamed(RootScreen.routeName);
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      print(s);
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> createProspect(BuildContext context) async {
    state = const AsyncValue.loading();

    // TODO Get the check in code from preferences
    Isar isar = await IsarService().db;
    try {
      CheckInModel? checkInModel = await isar.checkInModels.filter()
          .statusEqualTo('Active', caseSensitive: false)
          .limit(1).findFirst();
      // var productsData = [];
      // for(ProductsModel product in products){
      //   productsData.add({"product_id": product.id, "qty": product.qty});
      // }
      var data = {
          "customer_id" : read.watch(prospectsFormData).id,
          "kra_pin" : read.watch(prospectsFormData).kraPin,
          "email": read.watch(prospectsFormData).email,
          // "customer_group_id": read.watch(prospectsFormData).customerGroupId,
          "checkin_code": ""
      };

      final responseModel = await read.read(prospectsRepositoryProvider).createProspect(data);
      showCustomSnackBar("Converted to won successfully.",bgColor: Styles.appGreenColor);
      read.read(isRefreshProvider.state).state = true;
      read.refresh(leadsProvider);
      read.watch(prospectsRepositoryProvider).getNegotiations(true);
      read.watch(prospectsRepositoryProvider).getNegotiations(true);
      read.refresh(prospectsProvider);
      if(!mounted) return;
      context.goNamed(RootScreen.routeName);
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      print(s);
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> createRetailOrder(BuildContext context, String customerGroup, List<ProductsModel> products, String customerId) async {
    print("creating retail order");
    state = const AsyncValue.loading();

    // TODO Get the check in code from preferences
    Isar isar = await IsarService().db;
    try {
      CheckInModel? checkInModel = await isar.checkInModels.filter()
          .statusEqualTo('Active', caseSensitive: false)
          .limit(1).findFirst();
      var productsData = [];
      for(ProductsModel product in products){
        productsData.add({"product_id": product.id, "qty": product.qty});
      }
      var data = {
          "customer_id" : customerId,
          "customer_group":customerGroup,
          "product_data": productsData,
          "checkin_code": checkInModel!.checkinCode
      };
      final responseModel = await read.read(prospectsRepositoryProvider).createRetailOrder(data);
      showCustomSnackBar("Order created successfully.",bgColor: Styles.appGreenColor);
      if(!mounted) return;
      Navigator.pop(context);
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }
}

final prospectsFormData = StateProvider<ProspectsModel>((ref) => ProspectsModel(id: 1));
final orderCartData = StateProvider<List<ProductsModel>>((ref) => []);