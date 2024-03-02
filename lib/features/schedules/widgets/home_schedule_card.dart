import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/models/schedules_model.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
class HomeScheduleCard extends ConsumerStatefulWidget {
  final UserSchedule todaySchedules;
  const HomeScheduleCard({Key? key, required this.todaySchedules}) : super(key: key);

  @override
  ConsumerState<HomeScheduleCard> createState() => _HomeScheduleCardState();
}

class _HomeScheduleCardState extends ConsumerState<HomeScheduleCard> {
  var startDate = DateTime.now();

  bool isLoading = false;
  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: 5.0.sp),
      child: Container(
        width:
        MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: Styles.appPrimaryColor,
            borderRadius: BorderRadius.all(
                Radius.circular(10.sp))),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: 15.0.sp,
              vertical: 5.sp),
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.todaySchedules.customer!.customerName!,
                    style: Styles.heading3(context).copyWith(color: Colors.white),
                  ),
                  Align(
                    alignment:
                    Alignment.centerRight,
                    child: isLoading? SizedBox(height: 15, width: 15, child: CircularProgressIndicator(
                      strokeWidth: 2,
                      backgroundColor: Colors.black26,
                      valueColor: AlwaysStoppedAnimation<Color>(
                        Styles.appPrimaryColor, //<-- SEE HERE
                      ),
                    ),):PopupMenuButton<int>(
                      icon: const Icon(
                        Icons.more_vert,
                        color: Colors.white,
                        size: 20,
                      ),
                      itemBuilder: (context) =>
                      [
                        PopupMenuItem(
                          value: 1,
                          // row with 2 children
                          child: Row(
                            children: [
                              Icon(Icons.pedal_bike, color: Styles.appYellowColor),
                              const SizedBox(
                                width: 10,
                              ),
                              Text("Visit Customer", style: Styles.heading4(context),
                              )
                            ],
                          ),
                        ),
                        PopupMenuItem(
                          value: 2,
                          // row with 2 children
                          child: Row(
                            children: [
                              Icon(Icons.map, color: Styles.appYellowColor),
                              const SizedBox(
                                width: 10,
                              ),
                              Text("View on Map", style: Styles.heading4(context),
                              )
                            ],
                          ),
                        ),
                        // PopupMenuItem(
                        //   value: 3,
                        //   // row with 2 children
                        //   child: Row(
                        //     children: [
                        //       Icon(Icons.event, color: Styles.appYellowColor,),
                        //       const SizedBox(
                        //         width: 10,
                        //       ),
                        //       Text("Reschedule", style: Styles.heading4(context),)
                        //     ],
                        //   ),
                        // ),
                      ],
                      offset: const Offset(0, 40),
                      color: Colors.white,
                      elevation: 2,
                      // on selected we show the dialog box
                      onSelected: (value) async {


                      },
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.todaySchedules.schedule!.description??"", style: Styles.heading4(context).copyWith(color: Colors.white70),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "${DateFormat.Hm().format(startDate)}"
                            " - ${DateFormat.Hm().format(DateTime(startDate.year, startDate.month, startDate.day, startDate.hour, startDate.minute + 30))}",
                        style: Styles.heading4(context).copyWith(color: Colors.white),
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
