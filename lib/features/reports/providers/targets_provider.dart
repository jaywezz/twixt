import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nested_navigation_gorouter_example/features/reports/models/target_model.dart';
import 'package:nested_navigation_gorouter_example/features/reports/repository/targets_repo.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/models/prospects_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';

final targetProvider = FutureProvider<TargetsModel>((ref) async {
  final target = await ref.watch(targetsRepositoryProvider).getTargets(true);
  return target;
});

final graphFilterProvider = StateProvider<GraphFilters>((ref)=> GraphFilters.week);
final filteredTarget = StateProvider<double>((ref){
  double target = 0.0;
  ref.watch(targetProvider).whenData((value) {
    if(ref.watch(graphFilterProvider) == GraphFilters.today){
      target = int.parse(value.targetProspect?? "1") / 24;
    }
    if(ref.watch(graphFilterProvider) == GraphFilters.month){
      target = int.parse(value.targetProspect?? "1").toDouble();
    }
    if(ref.watch(graphFilterProvider) == GraphFilters.week){
      target = int.parse(value.targetProspect?? "1")/4;
    }
  });
  
  return target;
  
});

final filteredProspects = StateProvider<List<ProspectsModel>>((ref){
  List<ProspectsModel> prospects = [];
  ref.watch(prospectsProvider).whenData((value){

    if(ref.watch(graphFilterProvider) == GraphFilters.today){
      return value.where((item) =>
      item.createdAt!.year == DateTime.now().year &&
          item.createdAt!.month == DateTime.now().month &&
          item.createdAt!.day == DateTime.now().day)
          .toList();
    }
    if(ref.watch(graphFilterProvider) == GraphFilters.month){
      return value.where((item) =>
      item.createdAt!.year == DateTime.now().year &&
          item.createdAt!.month == DateTime.now().month)
          .toList();
    }
    if(ref.watch(graphFilterProvider) == GraphFilters.week){
      DateTime now = DateTime.now();
      DateTime firstDayOfWeek =
      now.subtract(Duration(days: now.weekday - 1)); // Assuming Monday is the first day of the week
      return value.where((item) =>
      item.createdAt!.isAfter(firstDayOfWeek) ||
          item.createdAt!.isAtSameMomentAs(firstDayOfWeek))
          .toList();
    }
  });
  print("prospects after filter: ${prospects.length}");
  return prospects;
});




final maxYProvider = StateProvider.autoDispose<double>(((ref) {
  double value = 0.0;
  ref.watch(graphDataProvider).forEach((k,v){
    if(v[0] + v[1]>value) {
      value = v[0] + v[1];
    }
  });
  return value;
}));


final graphDataProvider = StateProvider.autoDispose<Map<int, List<double>>>((ref){
  Map<int, List<double>> mainItems ={};
  GraphFilters filter = ref.watch(graphFilterProvider);

  mainItems = <int, List<double>>{
    0: [0, ref.watch(filteredTarget)],
    1: [0, ref.watch(filteredTarget)],
    2: [0, ref.watch(filteredTarget)],
    3: [0, ref.watch(filteredTarget)],
    4: [0, ref.watch(filteredTarget)],
    5: [0, ref.watch(filteredTarget)],
  };
  List<ProspectsModel> prospects = [];
  ref.watch(prospectsProvider).whenData((value){
    print("start filtering prospects ${value.length}");
    for(ProspectsModel pros in value){
      print("created date: ${pros.createdAt}");
    }
    if(ref.watch(graphFilterProvider) == GraphFilters.today){
      prospects = value.where((item) =>
      item.createdAt!.year == DateTime.now().year &&
          item.createdAt!.month == DateTime.now().month &&
          item.createdAt!.day == DateTime.now().day)
          .toList();
    }
    if(ref.watch(graphFilterProvider) == GraphFilters.month){
      prospects =value.where((item) =>
      item.createdAt!.year == DateTime.now().year &&
          item.createdAt!.month == DateTime.now().month)
          .toList();
    }
    if(ref.watch(graphFilterProvider) == GraphFilters.week){
      DateTime now = DateTime.now();
      DateTime firstDayOfWeek =
      now.subtract(Duration(days: now.weekday - 1)); // Assuming Monday is the first day of the week
      prospects = value.where((item) =>
      item.createdAt!.isAfter(firstDayOfWeek) ||
          item.createdAt!.isAtSameMomentAs(firstDayOfWeek))
          .toList();
    }
    print("done filtering prospects ${prospects.length}");

  });

  print("the selected filter is this : ${filter.name}");
  if (filter.name == GraphFilters.today.name) {
    for (var sale in prospects) {
      print("executing today");

      if(sale.createdAt!.hour >=8 && sale.createdAt!.hour<=10){
        print("1st hour");
        mainItems[0] = [mainItems[0]![0] + 1.0, ref.watch(filteredTarget) - (mainItems[0]![0] + 1.0)];
      }
      else if(sale.createdAt!.hour >=10 && sale.createdAt!.hour<=12){
        print("2st hour");
        mainItems[1] = [mainItems[1]![0] + 1.0, ref.watch(filteredTarget) -(mainItems[1]![0] + 1.0)];
      }
      else if(sale.createdAt!.hour >=12 && sale.createdAt!.hour<=14){
        print("3st hour");
        mainItems[2] = [mainItems[2]![0] + 1.0,ref.watch(filteredTarget)- (mainItems[2]![0] + 1.0)];
      }
      else if(sale.createdAt!.hour >=14 && sale.createdAt!.hour<=16){
        print("4st hour");
        mainItems[3] = [mainItems[3]![0] + 1.0, ref.watch(filteredTarget)- (mainItems[3]![0] + 1.0)];
      }
      else if(sale.createdAt!.hour >=16 && sale.createdAt!.hour<=18){
        print("5st hour");
        mainItems[4] = [mainItems[4]![0] + 1, ref.watch(filteredTarget)- (mainItems[4]![0] + 1)];
      }else{
        mainItems[5] = [mainItems[5]![0] + 1 ,ref.watch(filteredTarget)- (mainItems[5]![0] + 1)];
      }

    }

  }else if (filter.name == GraphFilters.week.name) {
    print("executing for week");
    for (var sale in prospects) {
      print("executing week");
      switch(sale.createdAt!.weekday) {
        case 1:
          print("weekday 1");
          mainItems[0] = [mainItems[0]![0] + 1, ref.watch(filteredTarget)-(mainItems[0]![0] + 1)];
          break;
        case 2:
          mainItems[1] = [mainItems[1]![0] + 1, ref.watch(filteredTarget)-(mainItems[1]![0] + 1)];
          // code block
          break;
        case 3:
          mainItems[2] = [mainItems[2]![0] + 1, ref.watch(filteredTarget)-(mainItems[2]![0] + 1)];
          // code block
          break;
        case 4:
          mainItems[3] = [mainItems[3]![0] + 1, ref.watch(filteredTarget)-(mainItems[3]![0] + 1)];
          // code block
          break;
        case 5:
          mainItems[4] = [mainItems[4]![0] + 1, ref.watch(filteredTarget)-(mainItems[4]![0] + 1)];
          // code block
          break;
        case 6:
          mainItems[5] = [mainItems[5]![0] + 1, ref.watch(filteredTarget)-(mainItems[5]![0] + 1)];
          // code block
          break;
        default:
        // code block
      }
    }

  }else if(filter == GraphFilters.month){
    mainItems = <int, List<double>>{
      0: [0, ref.watch(filteredTarget)],
    };
    for (var sale in prospects) {
      mainItems[0] = [mainItems[0]![0] + 1, ref.watch(filteredTarget)- (mainItems[0]![0] + 1)];
    }
    print("the main items: $mainItems");
  }
  return mainItems;
});

enum GraphFilters {week, month, today}



