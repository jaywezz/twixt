import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/provider/auth_provider.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/delivery_home.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/home_screen.dart';
import 'package:nested_navigation_gorouter_example/features/dashboard/widgets/drawer.dart';
import 'package:nested_navigation_gorouter_example/features/deliveries/screens/deliveries_screen.dart';
import 'package:nested_navigation_gorouter_example/features/profile/profile_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/sales_base_screen.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/screens/individual_schedule_screen.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/screens/main_schedule_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/pill_button.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/formatters/string_formatter.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

/// Widget for the root/initial pages in the bottom navigation bar.
class RootScreen extends ConsumerStatefulWidget {
  static const routeName = "sales";
  /// Creates a RootScreen
  ///
  const RootScreen({required this.label, Key? key})
      : super(key: key);

  /// The label
  final String label;

  /// The path to the detail page

  @override
  ConsumerState<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends ConsumerState<RootScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.transparent,
      floatingActionButton: ref.watch(userDataProvider(context)).when(
          data: (data){
            return widget.label != "schedule"? FloatingActionButton(
              backgroundColor: Styles.appPrimaryColor,
              foregroundColor: Colors.black,
              onPressed: () {
                if(data.accountType == AppConstants.salesType){
                  context.go('/sales/add-lead');
                }else{
                  context.go('/dashBoard/inventory');
                }

              },
              child:data!.accountType == AppConstants.salesType? const Icon(
                Icons.add,
                size: 30,
                color: Colors.white,
              ):const Icon(
                Icons.book_outlined,
                size: 30,
                color: Colors.white,
              )
            ):null;
          },
          error: (e,s){
           return Text("");
          },
          loading: (){
            return AnimatedCircularProgressIndicator();
          }),
      drawer: MainDrawer(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                AppBar(
                  elevation: 0,
                  automaticallyImplyLeading: false,
                  backgroundColor: Colors.transparent,
                  title: Text(widget.label.toTitleCase(), style: Styles.heading2(context),),
                  centerTitle: true,
                  leading: GestureDetector(
                    onTap: () {
                      print("opening drawer");
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    child: SvgPicture.asset(

                      "assets/icons/a – 24.svg",
                      color: Colors.black87,
                      matchTextDirection: true,
                    ),
                  ),
                  actions: [
                    // Container(
                    //   decoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(10),
                    //     color: Styles.appPrimaryColor
                    //   ),
                    //   child: Padding(
                    //     padding: const EdgeInsets.all(8.0),
                    //     child: Text("Check in", style: Styles.heading4(context).copyWith(color: Colors.white),),
                    //   ),
                    // ),
                    // GestureDetector(
                    //     onTap: () {
                    //       // Navigate.instance.to(Notifications.routename);
                    //     },
                    //     child:const InkWell(
                    //       child: Icon(Icons.refresh,size: 25, color: Colors.black54,),
                    //     )
                    // ),
                    //
                    // GestureDetector(
                    //   onTap: () {
                    //     // Navigate.instance.to(Notifications.routename);
                    //   },
                    //   child: SvgPicture.asset(
                    //     "assets/icons/a – 25.svg",
                    //     width: 40,
                    //     height: 40,
                    //     color: Colors.black54,
                    //     // matchTextDirection: true,
                    //
                    //   ),
                    // ),

                  ],
                ),
                ref.watch(userDataProvider(context)).when(data: (data){
                  return widget.label == "DashBoard"
                      ?data!.accountType == AppConstants.salesType?const HomeScreen():const DeliveryHomeScreen()
                      :widget.label == "sales"
                      ?data!.accountType == AppConstants.salesType?const SalesBaseScreen()
                      :const DeliveryScreen()
                      :widget.label == "schedule"
                      ?const MainSchedulesScreen()
                      :const ProfileScreen();
                }, error: (e,s){
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("An error occurred getting user data", style: Styles.heading3(context),),
                      SizedBox(height: 20,),
                      FullWidthButton(
                          action: (){
                           context.pushReplacement("/login");
                          },
                        text: "Login",
                      )
                    ],
                  );
                }, loading: (){
                  return const Center(child: AnimatedCircularProgressIndicator(),);
                })


              ],
            ),
          ),
        ),
      ),
    );
  }
}