import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/features/deliveries/models/delivery_model.dart';
import 'package:nested_navigation_gorouter_example/features/deliveries/repository/deliveries_repo.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';

final deliveriesProvider = FutureProvider<List<DeliveryModel>>((ref) async {
  final deliveries = await ref.watch(deliveriesRepositoryProvider).getDeliveries(true);
  return deliveries;
});

final deliveryNotifier =
StateNotifierProvider<DeliveryNotifier, AsyncValue>((ref) {
  return DeliveryNotifier(read: ref);
});


class DeliveryNotifier extends StateNotifier<AsyncValue> {
  DeliveryNotifier({required this.read})
      : super(const AsyncValue.data(null));
  Ref read;

  Future<void> acceptDelivery(String deliveryId, BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      final responseModel = await read.read(deliveriesRepositoryProvider).acceptDelivery(deliveryId);
      read.refresh(deliveriesProvider);
      showCustomSnackBar("Accepted Order successfully", isError: false);
      if(!mounted) return;
      context.pop();
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar("An error occurred", isError: true);
      state = AsyncValue.error(e.toString());
    }
  }

  Future<void> completeDelivery(String deliveryId, BuildContext context) async {
    state = const AsyncValue.loading();
    try {
      final responseModel = await read.read(deliveriesRepositoryProvider).completeDelivery(deliveryId);
      read.refresh(deliveriesProvider);
      showCustomSnackBar("Accepted Order successfully", isError: false);
      if(!mounted) return;
      context.pop();
      state = AsyncValue.data(responseModel);
    } catch (e, s) {
      showCustomSnackBar("An error occurred", isError: true);
      state = AsyncValue.error(e.toString());
    }
  }
}




