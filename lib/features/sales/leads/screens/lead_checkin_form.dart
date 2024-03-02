import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/widgets/checkin_section_one.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/widgets/keep_alive_wrappe.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/widgets/leads_pill_button.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/widgets/section_one.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/widgets/section_two.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

final isreadOnlyProvider = StateProvider<bool>((ref) => false);

class LeadCheckinForm extends ConsumerStatefulWidget {
  final dynamic lead;
  static const route_name = "leads_page";
  const LeadCheckinForm({Key? key, required this.lead}) : super(key: key);

  @override
  ConsumerState<LeadCheckinForm> createState() => _LeadCheckinFormState();
}

class _LeadCheckinFormState extends ConsumerState<LeadCheckinForm>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int currentIndex = 0;
  String? dateTime;

  GlobalKey<FormState> form1 = GlobalKey<FormState>();
  GlobalKey<FormState> form2 = GlobalKey<FormState>();
  GlobalKey<FormState> form3 = GlobalKey<FormState>();
  GlobalKey<FormState> form4 = GlobalKey<FormState>();
  late Timer _timer;
  // int seconds = 0;

  // DateTime selectedDate = DateTime.now();
  final StopWatchTimer _stopWatchTimer = StopWatchTimer();
  TimeOfDay time = const TimeOfDay(hour: 10, minute: 15);
  @override
  void initState() {
    // startTimer();
    _tabController = TabController(length: 1, vsync: this);

    _tabController.addListener((() {
      setState(() {
        currentIndex = _tabController.index;
      });
    }));

    super.initState();
  }

  @override
  void dispose() async {
    // TODO: implement dispose
    super.dispose();

    // _timer.cancel();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    final key = GlobalObjectKey<ExpandableFabState>(context);
    ScreenUtil.init(context);
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/bg.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            children: [
              AppBar(
                elevation: 0,
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                leading: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Icon(
                      Icons.arrow_back_ios,
                      color: Colors.black,
                    )),
                title: Align(
                  alignment: Alignment.center,
                  child: Text(
                      "Check in Form",
                    style: Styles.heading2(context)
                        .copyWith(color: Colors.black54),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: (){
                  context.go('/sales/leads-checkin/leads-details', extra: {"lead":widget.lead});
                },
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Styles.graphDarkblue, width: 1)),
                  child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        widget.lead.customerName![0],
                        style: Styles.heading1(context),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                widget.lead.customerName!,
                style: Styles.heading3(context)
                    .copyWith(fontWeight: FontWeight.w100),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "12:30 PM",
                style: Styles.heading4(context).copyWith(
                    fontWeight: FontWeight.w100,
                    fontSize: 10.sp,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                child: Container(
                  color: Colors.white,
                  width: ScreenUtil().screenWidth - (12.w),
                  padding: EdgeInsets.only(top: 10.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: LeadPillButton(
                            selected: currentIndex == 0 ? true : false,
                            action: () {
                              setState(() {
                                _tabController.animateTo(0);
                              });
                            },
                            text: "Outlet Report"),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      // Expanded(
                      //   child: LeadPillButton(
                      //       selected: currentIndex == 1 ? true : false,
                      //       action: () {
                      //         setState(() {
                      //           _tabController.animateTo(1);
                      //         });
                      //       },
                      //       text: "Section 2"),
                      // ),
                      SizedBox(
                        width: 5.w,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Expanded(
                child: TabBarView(
                    physics: AlwaysScrollableScrollPhysics(),
                    controller: _tabController,
                    children: [
                      KeepAliveWrapper(
                        child: Form(
                            autovalidateMode:
                            AutovalidateMode.onUserInteraction,
                            key: form1,
                            child: const CheckinSectionOne()),
                      ),
                      // KeepAliveWrapper(
                      //   child: Form(
                      //       autovalidateMode:
                      //       AutovalidateMode.onUserInteraction,
                      //       key: form2,
                      //       child: Text("More questions here.", style: Styles.heading3(context),)),
                      // ),
                    ]),
              ),
            ],
          ),
        ),
      ),

      floatingActionButtonLocation: ExpandableFab.location,
      bottomNavigationBar: SizedBox(
        height: 70.h,
        child: ref.watch(leadsNotifier) is AsyncLoading<void>?const Center(child: AnimatedCircularProgressIndicator()): Padding(
            padding: EdgeInsets.all(15.h),
            child: FullWidthButton(
              color: currentIndex == 0
                  ? Styles.graphDarkblue
                  : Colors.yellow.shade600,
              btnheight: 30.h,
              action: () async {
                if (currentIndex == 0) {
                  if (!form1.currentState!.validate()) {
                    print("form 1 not valid");
                    _tabController.animateTo(0);
                  } else {
                    // print("djkcjk");
                    await ref.read(leadsNotifier.notifier).customerCheckOut(context);
                  }
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r)),
              text: currentIndex == 0
                  ? "Save (${ constructTime(ref.watch(checkinTimeProvider))})"
                  : constructTime(ref.watch(checkinTimeProvider)),
            )),
      ),
    );
  }

  String constructTime(int seconds) {
    int hour = seconds ~/ 3600;
    int minute = seconds % 3600 ~/ 60;
    int second = seconds % 60;
    return "${formatTime(hour)}:${formatTime(minute)}:${formatTime(second)}";
  }

  String formatTime(int timeNum) {
    return timeNum < 10 ? "0" + timeNum.toString() : timeNum.toString();
  }

  void startTimer() {
    const period = const Duration(seconds: 1);
    _timer = Timer.periodic(period, (timer) {
      setState(() {
        ref.watch(checkinTimeProvider.state).state++;
      });
      // if (ref.watch(checkinTimeProvider) == 18000) {
      //   _timer.cancel();
      //   // cancelTimer();
      // }
    });
  }

  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) async {
    /// The argument value will return the changed date as [DateTime] when the
    /// widget [SfDateRangeSelectionMode] set as single.
    ///
    /// The argument value will return the changed dates as [List<DateTime>]
    /// when the widget [SfDateRangeSelectionMode] set as multiple.
    ///
    /// The argument value will return the changed range as [PickerDateRange]
    /// when the widget [SfDateRangeSelectionMode] set as range.
    ///
    /// The argument value will return the changed ranges as
    /// [List<PickerDateRange] when the widget [SfDateRangeSelectionMode] set as
    /// multi range.
    setState(() {
      // if (args.value is PickerDateRange) {
      //   _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
      //   // ignore: lines_longer_than_80_chars
      //       ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      // } else if (args.value is DateTime) {
      //   _selectedDate = args.value;
      // } else if (args.value is List<DateTime>) {
      //   _dateCount = args.value.length.toString();
      // } else {
      //   _rangeCount = args.value.length.toString();
      // }
    });
  }
}
