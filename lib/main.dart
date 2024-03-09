import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:isar/isar.dart';
import 'package:logger/logger.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/repository/token_storage.dart';
import 'package:nested_navigation_gorouter_example/features/user_checkin/models/checkin_model.dart';
import 'package:nested_navigation_gorouter_example/features/user_checkin/provider/user_checkin_provider.dart';
import 'package:nested_navigation_gorouter_example/services/go_router_config_service.dart';
import 'package:nested_navigation_gorouter_example/services/notification_service.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

import 'services/isar_service.dart';

// private navigators
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final isRefreshProvider = StateProvider<bool>((ref) => false);

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

void main() async{
  // turn off the # in the URLs on the web
  WidgetsFlutterBinding.ensureInitialized();
  // await TokenStorage().removeAccessToken();
  await checkUserCheckin();
  await NotificationController.initializeLocalNotifications();
  usePathUrlStrategy();
  runApp(ProviderScope(observers: [Logging()],child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp.router(
        routerConfig: goRouter,
        key: navigatorKey,
        debugShowCheckedModeBanner: false,
        theme: ThemeData(useMaterial3: false, primarySwatch: Colors.blue, textTheme: GoogleFonts.poppinsTextTheme()),
      ),
    );
  }
}

// Stateful navigation based on:
// https://github.com/flutter/packages/blob/main/packages/go_router/example/lib/stateful_shell_route.dart
class ScaffoldWithNestedNavigation extends StatefulWidget {
  const ScaffoldWithNestedNavigation({
    Key? key,
    required this.navigationShell,
  }) : super(
            key: key ?? const ValueKey<String>('ScaffoldWithNestedNavigation'));
  final StatefulNavigationShell navigationShell;

  @override
  State<ScaffoldWithNestedNavigation> createState() => _ScaffoldWithNestedNavigationState();
}

class _ScaffoldWithNestedNavigationState extends State<ScaffoldWithNestedNavigation> {
  void _goBranch(int index) {
    print("the selected index: ${widget.navigationShell.currentIndex}");
    widget.navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == widget.navigationShell.currentIndex,
    );
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 450) {
        return ScaffoldWithNavigationBar(
          body: widget.navigationShell,
          selectedIndex: widget.navigationShell.currentIndex,
          onDestinationSelected: _goBranch,
        );
      } else{
        return SizedBox();
      }
      // else {
      //   return ScaffoldWithNavigationRail(
      //     body: widget.navigationShell,
      //     selectedIndex: widget.navigationShell.currentIndex,
      //     onDestinationSelected: _goBranch,
      //   );
      // }
    });
  }
}

class ScaffoldWithNavigationBar extends StatefulWidget {
  const ScaffoldWithNavigationBar({
    super.key,
    required this.body,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });
  final Widget body;
  final int selectedIndex;
  final ValueChanged<int> onDestinationSelected;

  @override
  State<ScaffoldWithNavigationBar> createState() => _ScaffoldWithNavigationBarState();
}

class _ScaffoldWithNavigationBarState extends State<ScaffoldWithNavigationBar> {
  User? user;
  getUser()async{
    Isar isar = await IsarService().db;
    user = await isar.users.where().findFirst();
    setState(() {});
  }
  @override
  void initState() {
    // TODO: implement initState
    getUser();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.body,
      bottomNavigationBar: NavigationBar(
        backgroundColor: Colors.transparent,
        indicatorColor: Styles.appPrimaryLightColor,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        height: 60,
        selectedIndex: widget.selectedIndex,
        destinations: [
          const NavigationDestination(
              icon: Icon(CupertinoIcons.home, color: Colors.black54,),
              selectedIcon: Icon(Icons.home, color: Colors.white,),
              label: "Home"
          ),
          user==null?const NavigationDestination(
              icon: Icon(CupertinoIcons.group,  color: Colors.black54),
              selectedIcon: Icon(CupertinoIcons.group_solid,  color: Colors.white),
              label: "Leads"
          ):user!.accountType == AppConstants.salesType
              ?const NavigationDestination(
              icon: Icon(CupertinoIcons.group,  color: Colors.black54),
              selectedIcon: Icon(CupertinoIcons.group_solid,  color: Colors.white),
              label: "Leads"
          ):const NavigationDestination(
              icon: Icon(CupertinoIcons.car,  color: Colors.black54),
              selectedIcon: Icon(CupertinoIcons.group_solid,  color: Colors.white),
              label: "Deliveries"
          ),
          NavigationDestination(
              icon: Icon(CupertinoIcons.calendar,  color: Colors.black54),
              selectedIcon: Icon(Icons.calendar_today,  color: Colors.white),
              label: "Schedule"
          ),
          NavigationDestination(
              icon: Icon(CupertinoIcons.person,  color: Colors.black54),
              selectedIcon: Icon(CupertinoIcons.person_alt,  color: Colors.white),
              label: "Profile"
          )
        ],
        onDestinationSelected: widget.onDestinationSelected,
      ),
    );
  }
}

// class ScaffoldWithNavigationRail extends StatelessWidget {
//   const ScaffoldWithNavigationRail({
//     super.key,
//     required this.body,
//     required this.selectedIndex,
//     required this.onDestinationSelected,
//   });
//   final Widget body;
//   final int selectedIndex;
//   final ValueChanged<int> onDestinationSelected;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
//         child: Container(
//           color: Colors.black54,
//         ),
//       ),
//       body: Row(
//         children: [
//           NavigationRail(
//             selectedIndex: selectedIndex,
//             onDestinationSelected: onDestinationSelected,
//             labelType: NavigationRailLabelType.all,
//             destinations: const <NavigationRailDestination>[
//               NavigationRailDestination(
//                 label: Text('Section A'),
//                 icon: Icon(Icons.home),
//               ),
//               NavigationRailDestination(
//                 label: Text('Section B'),
//                 icon: Icon(Icons.settings),
//               ),
//               NavigationRailDestination(
//                 label: Text('Section B'),
//                 icon: Icon(Icons.settings),
//               ),
//               NavigationRailDestination(
//                 label: Text('Section B'),
//                 icon: Icon(Icons.settings),
//               ),
//             ],
//           ),
//           const VerticalDivider(thickness: 1, width: 1),
//           // This is the main content.
//           Expanded(
//             child: body,
//           ),
//         ],
//       ),
//     );
//   }
// }




Logger _log = Logger(printer: PrettyPrinter());

class Logging extends ProviderObserver {
  @override
  void didUpdateProvider(
      ProviderBase provider,
      Object? previousValue,
      Object? newValue,
      ProviderContainer container,
      ) {
    // _log.i('[${provider.name ?? provider.runtimeType}] value: $newValue');
  }
}
