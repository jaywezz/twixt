import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/widgets/keep_alive_wrappe.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/widgets/leads_pill_button.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/widgets/section_one.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/widgets/section_two.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/screens/assigned_schedules.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/screens/individual_schedule_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/services/location_service.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

final isreadOnlyProvider = StateProvider<bool>((ref) => false);

class MainSchedulesScreen extends ConsumerStatefulWidget {
  static const route_name = "leads_page";
  const MainSchedulesScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<MainSchedulesScreen> createState() => _MainSchedulesScreenState();
}

class _MainSchedulesScreenState extends ConsumerState<MainSchedulesScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int currentIndex = 0;

  // DateTime selectedDate = DateTime.now();
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);

    _tabController.addListener((() {
      setState(() {
        currentIndex = _tabController.index;
      });
    }));

    super.initState();
  }


  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final key = GlobalObjectKey<ExpandableFabState>(context);
    ScreenUtil.init(context);
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        _tabController.animateTo(0);
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width *.4,
                      height: 30,
                      decoration: BoxDecoration(
                          color: currentIndex == 0 ? Styles.appPrimaryColor:Colors.transparent,
                          border: Border.all(color: Styles.appPrimaryColor),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Individual", style: Styles.heading3(context).copyWith(
                          color:currentIndex == 0 ? Colors.white:Colors.black),)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        _tabController.animateTo(1);
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width *.4,
                      height: 30,
                      decoration: BoxDecoration(
                          color: currentIndex == 1 ? Styles.appPrimaryColor:Colors.transparent,
                          border: Border.all(color: Styles.appPrimaryColor),
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Center(child: Text("Assigned", style: Styles.heading3(context).copyWith(
                          color:currentIndex == 1 ? Colors.white:Colors.black),)),
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Card(
          //   child: Container(
          //     width: ScreenUtil().screenWidth - (12.w),
          //     padding: EdgeInsets.only(top: 10.h),
          //     child: Row(
          //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //       children: [
          //         LeadPillButton(
          //             selected: currentIndex == 0 ? true : false,
          //             action: () {
          //               setState(() {
          //                 _tabController.animateTo(0);
          //               });
          //             },
          //             text: "Individual"),
          //         SizedBox(
          //           width: 5.w,
          //         ),
          //
          //         LeadPillButton(
          //             selected: currentIndex == 1 ? true : false,
          //             action: () {
          //               setState(() {
          //                 _tabController.animateTo(1);
          //               });
          //             },
          //             text: "Assigned"),
          //         SizedBox(
          //           width: 5.w,
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
          Expanded(
            child: TabBarView(
                physics: const AlwaysScrollableScrollPhysics(),
                controller: _tabController,
                children: [
                  IndividualScheduleScreen(),
                  AssignedSchedules()
                ]),
          ),
        ],
      ),
    );
  }


}
