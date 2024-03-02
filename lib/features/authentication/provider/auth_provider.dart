import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/auth_repo.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/regions_model/region_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';

final userDataProvider = FutureProvider.family<User?, BuildContext>((ref, context)async {
  Isar isar = await IsarService().db;
  User? user = await isar.users.where().findFirst();
  if(user == null){
    showCustomSnackBar("User info not found. Login");
    context.pushReplacement("/login");
    return null;
  }else{
    return user;
  }

});

final regionsProvider = FutureProvider.family<List<RegionModel>, bool>((ref, isRefreshing) async {
  final regions = await ref.watch(authRepositoryProvider).getUserRegions(isRefreshing);
  for(RegionModel region in regions) {
    print(region.name!);
  }
  if(regions.isNotEmpty){
    ref.read(selectedRegionProvider.state).state = regions[0];
    if(regions[0].subregions!.isNotEmpty){
      ref.read(selectedSubRegionProvider.state).state = regions[0].subregions![0];
      if(regions[0].subregions![0].areas!.isNotEmpty){
        ref.read(selectedAreaProvider.state).state = regions[0].subregions![0].areas!.first;

      }

    }
  }
  return regions;
});

final authNotifier =
StateNotifierProvider<AuthNotifier, AsyncValue>((ref) {
  return AuthNotifier(read: ref);
});


class AuthNotifier extends StateNotifier<AsyncValue> {
  AuthNotifier({required this.read})
      : super(const AsyncValue.data(null));
  Ref read;

  Future<void> login(String phoneNumber, String password, BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      final responseModel = await read.read(authRepositoryProvider).login(phoneNumber, password);
      showCustomSnackBar("Successfully logged in.", isError: false);
      // state = AsyncValue.data(responseModel);
      if (!mounted) return;
      context.go('/dashboard');
    } catch (e, s) {
      showCustomSnackBar(e.toString(), bgColor: Colors.blue);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> sendOtp(String phoneNumber,  BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      final responseModel = await read.read(authRepositoryProvider).sendOtp(phoneNumber);
      if(!mounted) return;
      showCustomSnackBar("Otp sent successfully.", isError: false);
      context.go('/login/otp-screen',  extra: phoneNumber);
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> verifyOtp(String phoneNumber, String otp,  BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      final responseModel = await read.read(authRepositoryProvider).verifyOtp(phoneNumber, otp);
      showCustomSnackBar("Otp Verified.", isError: false);
      if(!mounted) return;
      context.go('/login/reset-password', extra: phoneNumber);
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> resetPassword(String phoneNumber, String password, String confirmPassword,  BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      final responseModel = await read.read(authRepositoryProvider)
          .resetPassword(password, confirmPassword, phoneNumber);
      showCustomSnackBar("Password changed successfully.", isError: false);
      if(!mounted) return;
      context.go('/login/reset-success');
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar(e.toString(), isError: true);
      state = AsyncValue.error(e.toString());
    }
  }
}