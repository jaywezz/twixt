import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:isar/isar.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/models/user_model.dart';
import 'package:nested_navigation_gorouter_example/features/reports/providers/targets_provider.dart';
import 'package:nested_navigation_gorouter_example/features/reports/screens/widget/sales_graph_widget.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/checkout_form_model/checkin_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/models/schedules_model.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/providers/schedules_provider.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/widgets/home_schedule_card.dart';
import 'package:nested_navigation_gorouter_example/features/user_checkin/provider/user_checkin_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/services/isar_service.dart';
import 'package:nested_navigation_gorouter_example/utils/formatters/currency_formatter.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

import 'widgets/user_checkin_button_screen.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static String routeName = "homeScreen";
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  User? user;

  getUser()async{
    Isar isar = await IsarService().db;
    user = await isar.users.where().findFirst();

    setState(() {});
  }

  var startDate = DateTime.now();
  String selectedFilter = "Last Week";

  String visitTarget = "0";
  String prospectTarget = "0";
  String visitsAchieved = "0";
  String prospectsAchieved = "0";

  @override
  void initState() {
    // TODO: implement initState
    var d = DateTime.now();
    var weekDay = d.weekday;
    print("the weekday: ${weekDay}");
    if(weekDay != 1){
      setState(() {
        startDate = d.subtract(Duration(days: weekDay - 1));
      });
      print("the start date: ${startDate}");
      print("the today date: ${d}");
    }else{
      setState(() {
        startDate = d;
      });
    }
    getUser();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:20.0),
      child: Container(
        // color: Colors.transparent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 4.h,),
                      Text("Hallo ${user ==null? "..":user!.name!.split(" ")[0]},", style: Styles.heading2(context).copyWith(color: Colors.black),),
                      const SizedBox(height: 10,),
                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          // 'Mon, 13 Dec 2021 - Fri, 17 Dec 2021',
                          "Date: ${months[startDate.month - 1]} ${startDate.day}  "
                              "-  ${months[startDate.add(const Duration(days: 4)).month - 1]} ${startDate.add(const Duration(days: 4)).day}",
                          textAlign: TextAlign.start,
                          style: Styles.normalText(context).copyWith(fontWeight: FontWeight.w600, color: Colors.black),
                        ),
                      ),
                      // Text("Territory: Kibera", style:  Styles.normalText(context).copyWith(fontWeight: FontWeight.w600, color: Colors.black),),

                    ]
                ),
                const UserCheckinButtonWidget()
              ],
            ),
            SizedBox(height: 20.h,),

            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                  // border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(5))
              ),
              child: const SalesGraphWidget(),
            ),

            SizedBox(height: 20.h,),
            ref.watch(targetProvider).when(data: (data){
              if(ref.watch(graphFilterProvider) == GraphFilters.today){
                visitsAchieved = data.visitDailyAchieved!.toString();
                visitTarget = (int.parse(data.targetVisit!) ~/ 24).toString();
                prospectsAchieved = data.prospectDailyAchieved!.toString();
                prospectTarget =(int.parse(data.targetProspect!) ~/ 24).toString();
              }
              if(ref.watch(graphFilterProvider) == GraphFilters.week){
                visitsAchieved = data.visitWeeklyAchieved!.toString();
                visitTarget = (int.parse(data.targetVisit!) ~/ 4).toString();
                prospectsAchieved = data.prospectWeeklyAchieved!.toString();
                prospectTarget =(int.parse(data.targetProspect!) ~/ 4).toString();
              }
              if(ref.watch(graphFilterProvider) == GraphFilters.month){
                visitsAchieved = data.visitMonthlyAchieved!.toString();
                visitTarget = ( data.targetVisit!).toString();
                prospectsAchieved = data.prospectMonthlyAchieved!.toString();
                prospectTarget =( data.targetProspect!).toString();
              }
              return StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 10,
                crossAxisSpacing: 8,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2, color: Colors.transparent)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.0.sp, top: 10.sp, right: 10.sp),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Visits Target",
                                style: Styles.heading4(context).copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10, right: 10),
                          child: Row(
                            children: [
                              Text(
                                formatCurrency.format(int.parse(visitTarget)),
                                style: Styles.heading2(context).copyWith(),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2, color: Colors.transparent)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10, right: 10),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                " Customers Target",
                                style: Styles.heading4(context).copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10, right: 10),
                          child: Row(
                            children: [
                              Text(
                                formatCurrency.format(double.parse(prospectTarget)),
                                style: Styles.heading2(context).copyWith(),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2, color: Colors.transparent)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10, right: 10),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Achieved Customers",
                                style: Styles.heading4(context).copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                              left: 10.0.sp, top: 10.sp, right: 10.sp),
                          child: Row(
                            children: [
                              Text(
                                prospectsAchieved,
                                style: Styles.heading2(context).copyWith(),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 7.0.w),
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/Increment.svg",
                                width: 20.w,
                                matchTextDirection: true,
                                color: Colors.black45,
                              ),

                              Text("30 % ",
                                  style: Styles.heading4(context)
                                      .copyWith(
                                      color:Styles.appGreenColor,
                                      fontSize: 10.sp)),
                              Flexible(
                                child: Text("more than previous week",
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: Styles.smallGreyText(context)
                                        .copyWith(
                                        fontSize: 9.sp,
                                        fontWeight: FontWeight.w600)),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            width: 2, color: Colors.transparent)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10, right: 10),
                          child: Row(
                            mainAxisAlignment:
                            MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Achieved Visits",
                                style: Styles.heading4(context).copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: Colors.black45),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 10.0, top: 10, right: 10),
                          child: Row(
                            children: [
                              Text(
                                visitsAchieved,
                                style: Styles.heading2(context).copyWith(),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding:
                          EdgeInsets.symmetric(horizontal: 7.0.w),
                          child: Row(
                            children: [
                              // ref.watch(depositCompProvider).isNegative?
                              SvgPicture.asset(
                                "assets/icons/Decrease.svg",
                                width: 20.w,
                                matchTextDirection: true,
                                color: Colors.black45,
                              ),
                              //     :SvgPicture.asset(
                              //   "assets/icons/Increment.svg",
                              //   width: 20.w,
                              //   matchTextDirection: true,
                              //   color: Colors.black45,
                              // ),

                              Text("0 ",
                                  style: Styles.heading4(context)
                                      .copyWith(
                                      color:Styles.appGreenColor,
                                      fontSize: 10.sp)),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                  ),

                  //Prospect target
                  //Orders
                ],
              );
            }, error: (e,s){
              return Center(child: const Text("An error occurred getting targets"));
            }, loading: (){
              return Center(child: AnimatedCircularProgressIndicator(),);
            }),

            SizedBox(height: 20.h,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.0.sp),
              child: Text(
                "Route Schedules",
                style:
                Styles.heading2(context).copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0.sp),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today",
                      style: Styles.heading4(context)
                          .copyWith(color: Colors.black54),
                    ),
                    Text(
                      DateFormat.yMMMMd().format(DateTime.now()),
                      style: Styles.heading4(context)
                          .copyWith(color: Colors.black54),
                    ),
                  ],
                )),
            ref.watch(todayRoutesProvider).when(data: (data){
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 4.0.sp),
                child: data.isEmpty
                    ? Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: 8.0),
                  child: Center(
                      child: Text(
                        "No schedules today",
                        style: Styles.heading3(context)
                            .copyWith(color: Colors.black26),
                      )),
                ): ListView.builder(
                          padding: EdgeInsets.zero,
                          // key: PageStorageKey(ind),
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: data.length,
                          itemBuilder: (builder, ind) {
                            return HomeScheduleCard(
                                todaySchedules: data[ind]);
                        }),
              );
            }, error: (e,s){
              return Text("An error occurred getting routes", style: Styles.heading3(context).copyWith(color: Colors.red),);
            }, loading: (){
              return const AnimatedCircularProgressIndicator();
            })
          ],
        ),
      ),
    );
  }

  // List<UserRouteModel> todaySchedules= [
  //   UserRouteModel(
  //     name: "John Doe",
  //     routeCode: "R123",
  //     status: "Active",
  //     startDate: DateTime(2023, 10, 1),
  //     endDate: DateTime(2023, 10, 31),
  //     customerName: "ABC Inc.",
  //     account: 12345,
  //     routeType: "Regular",
  //     address: "123 Main St, City, State",
  //     email: "john.doe@email.com",
  //     telephone: "555-123-4567",
  //     latitude: "42.12345",
  //     longitude: "-71.56789",
  //     // isOffline: false,
  //   ),
    // Add more UserRouteModel instances as needed
  // ];

}


