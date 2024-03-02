
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/models/schedules_model.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/repository/schedule_repo.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

// final routesTypeProvider =
// StateProvider<ScheduleTypes>((ref) => ScheduleTypes.Individual);

final routesProvider = FutureProvider<List<UserSchedule>>((ref) async {
  final userRoutes = await ref.watch(routesRepository).getUserRoutes(false);
  return userRoutes;
});

final todayRoutesProvider = FutureProvider<List<UserSchedule>>((ref) async {
  List<UserSchedule> todayRoutes = [];
  ref.watch(routesProvider).whenData((value) {
   todayRoutes = value.where((element) =>
    DateTime(element.schedule!.date!.year, element.schedule!.date!.month,
        element.schedule!.date!.day) ==
    DateTime(DateTime.now().year, DateTime.now().month,
    DateTime.now().day))
        .toList();
  });
  return todayRoutes;
});

final kEventProvider = StateProvider<Map<DateTime, List<UserSchedule>>>((ref) => {});
final selectedEventsProvider = StateProvider<List<UserSchedule>>((ref) => []);

final userRoutesNotifierProvider =
StateNotifierProvider<UserRoutesNotifier, AsyncValue>(
        (ref) => UserRoutesNotifier(ref));

class UserRoutesNotifier extends StateNotifier<AsyncValue> {
  UserRoutesNotifier(this.ref) : super(const AsyncData(null));
  Ref ref;

  Future<List<UserSchedule>?> filterUserRoutes() async {
    ref.refresh(kEventProvider);
    final kEvents = ref.read(kEventProvider);
    // final filter = ref.watch(routesTypeProvider);
    try {
      List<UserSchedule> userRoutes = await ref.read(routesProvider.future);
      print("user routes length: ${userRoutes.length}");
      for (var event in userRoutes) {
        if (kEvents[DateTime.utc(event.schedule!.date!.year, event.schedule!.date!.month,
            event.schedule!.date!.day)] == null) {
          kEvents[DateTime.utc(event.schedule!.date!.year, event.schedule!.date!.month,
              event.schedule!.date!.day)] = [
            UserSchedule(
              customer:  event.customer,
              schedule: event.schedule
            )
          ];
        } else {
          kEvents[DateTime.utc(event.schedule!.date!.year, event.schedule!.date!.month,
              event.schedule!.date!.day)]!
              .add(UserSchedule(customer: event.customer, schedule: event.schedule!));
        }
      }
      print("events for day are: ${getEventsForDay(DateTime.now())}");
      ref.refresh(selectedEventsProvider);
      ref.read(selectedEventsProvider).addAll(getEventsForDay(DateTime.utc(
          DateTime.now().year, DateTime.now().month, DateTime.now().day)));
      return userRoutes;
    } catch(e){
      throw e;
    }
  }


  Future addCustomerVisit(String description, String customerId, DateTime startDate, Customer customer) async {
    state = const AsyncLoading();
    try {
      Schedule details = Schedule(
        description: description,
        shopId: customerId,
        type: "Individual",
        date: startDate,
      );
      await ref.read(routesRepository).addCustomerVisit(UserSchedule(schedule: details, customer: customer));
      print("schedule done");
      showCustomSnackBar("Successfully scheduled visit", bgColor: Styles.appGreenColor, isError: false);
      ref.refresh(routesProvider);
      state = const AsyncData(null);
    } catch (e, s) {
      print("s $s");
      AsyncError(e, stackTrace: s);
      showCustomSnackBar(e.toString(), isError: true);
    }
  }

  List<UserSchedule> getEventsForDay(DateTime day) {
    print("getting event for day ${day}");
    print(day);
    print("events today: ${ref.read(kEventProvider)[DateTime.now()]}");
    print("events for day : ${ref.read(kEventProvider)[day]}");
    // Implementation example
    return ref.read(kEventProvider)[day] ?? [];
  }

  List<UserSchedule> getEventsForRange(DateTime start, DateTime end) {
    // Implementation example
    final days = daysInRange(start, end);

    return [
      for (final d in days) ...getEventsForDay(d),
    ];
  }

  /// Returns a list of [DateTime] objects from [first] to [last], inclusive.
  List<DateTime> daysInRange(DateTime first, DateTime last) {
    final dayCount = last.difference(first).inDays + 1;
    return List.generate(
      dayCount,
          (index) => DateTime.utc(first.year, first.month, first.day + index),
    );
  }
}
