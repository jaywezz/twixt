import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/models/schedules_model.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/providers/schedules_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
import 'package:table_calendar/table_calendar.dart';

class AssignedSchedules extends ConsumerStatefulWidget {
  @override
  _AssignedSchedulesState createState() => _AssignedSchedulesState();
}

class _AssignedSchedulesState extends ConsumerState<AssignedSchedules> {
  // late final ValueNotifier<List<Event>> _selectedEvents;
  CalendarFormat _calendarFormat = CalendarFormat.month;
  RangeSelectionMode _rangeSelectionMode = RangeSelectionMode
      .toggledOff; // Can be toggled on/off by longpressing a date
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  DateTime? _rangeStart;
  DateTime? _rangeEnd;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    // _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }

  @override
  void dispose() {
    // _selectedEvents.dispose();
    super.dispose();
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    ref.watch(selectedEventsProvider.state).state = [];
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
        _rangeStart = null; // Important to clean those
        _rangeEnd = null;
        _rangeSelectionMode = RangeSelectionMode.toggledOff;
      });

      ref.watch(selectedEventsProvider).addAll(
          ref.watch(userRoutesNotifierProvider.notifier).getEventsForDay(selectedDay));
    }
  }

  void _onRangeSelected(DateTime? start, DateTime? end, DateTime focusedDay) {
    ref.watch(selectedEventsProvider.state).state = [];
    setState(() {
      _selectedDay = null;
      _focusedDay = focusedDay;
      _rangeStart = start;
      _rangeEnd = end;
      _rangeSelectionMode = RangeSelectionMode.toggledOn;
    });

    // `start` or `end` could be null
    if (start != null && end != null) {
      ref.watch(selectedEventsProvider).addAll(
          ref.watch(userRoutesNotifierProvider.notifier).getEventsForRange(start, end));
    } else if (start != null) {
      ref.watch(selectedEventsProvider).addAll(
          ref.watch(userRoutesNotifierProvider.notifier).getEventsForDay(start));
    } else if (end != null) {
      ref.watch(selectedEventsProvider).addAll(
          ref.watch(userRoutesNotifierProvider.notifier).getEventsForDay(end));
    }
  }

  void getUserRoutes() async{
    await ref.watch(userRoutesNotifierProvider.notifier).filterUserRoutes();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    getUserRoutes();
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.transparent,
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: [
            TableCalendar<UserSchedule>(
              firstDay: kFirstDay,
              lastDay: kLastDay,
              focusedDay: _focusedDay,
              selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
              rangeStartDay: _rangeStart,
              rangeEndDay: _rangeEnd,
              calendarFormat: _calendarFormat,
              rangeSelectionMode: _rangeSelectionMode,
              eventLoader: ref.watch(userRoutesNotifierProvider.notifier).getEventsForDay,
              startingDayOfWeek: StartingDayOfWeek.monday,
              calendarStyle: CalendarStyle(
                // Use `CalendarStyle` to customize the UI
                markerDecoration: BoxDecoration(
                    color: Styles.appPrimaryColor,
                    shape: BoxShape.circle

                ),
                outsideDaysVisible: false,
              ),
              onDaySelected: _onDaySelected,
              onRangeSelected: _onRangeSelected,
              onFormatChanged: (format) {
                if (_calendarFormat != format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                }
              },
              onPageChanged: (focusedDay) {
                _focusedDay = focusedDay;
              },
            ),
            SizedBox(height: 14.0.h),

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //   children: [
            //     Text("Today",style: Styles.heading2(context).copyWith(color: Colors.black),),
            //     Text("Sep 2, 2022",style: Styles.heading3(context).copyWith(color: Colors.black),)
            //   ],
            // ),
            Expanded(
              child: RefreshIndicator(
                onRefresh: ()async{
                  return await ref.refresh(routesProvider);
                },
                child: ListView.builder(
                  physics: const AlwaysScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: ref.watch(selectedEventsProvider).length,
                  itemBuilder: (context, index) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("${ref.watch(selectedEventsProvider)[index].schedule!.date!.hour}:${ref.watch(selectedEventsProvider)[index].schedule!.date!.minute}", style: Styles.normalText(context).copyWith(fontWeight: FontWeight.w500, fontSize: 13),),
                            const SizedBox(height: 15,),
                            Text("${ref.watch(selectedEventsProvider)[index].schedule!.date!.hour}:${ref.watch(selectedEventsProvider)[index].schedule!.date!.minute}", style: Styles.normalText(context).copyWith(fontWeight: FontWeight.w500, fontSize: 13),)
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0,),
                          child: GestureDetector(
                            onTap: (){
                              // Navigator.pushNamed(context, ScheduleListScreen.route_name);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width - 90,
                              decoration: BoxDecoration(
                                  color: Styles.appPrimaryColor,
                                  borderRadius: const BorderRadius.all(Radius.circular(10))
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("${ref.watch(selectedEventsProvider)[index].schedule!.description}", style: Styles.heading2(context).copyWith(color: Colors.white),),
                                    Text("Kibera; Bombolulu, Gatwekera", style: Styles.normalText(context).copyWith(color: Colors.white, fontSize: 13.sp),),

                                    // Row(
                                    //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //   children: [
                                    //     Container(
                                    //       width: 100.w,
                                    //       child: Stack(
                                    //         children: [
                                    //           Container(
                                    //             decoration:BoxDecoration(
                                    //               shape: BoxShape.circle,
                                    //               border: Border.all(color: Colors.white),
                                    //
                                    //             ),
                                    //             child: CircleAvatar(
                                    //               backgroundImage: Image
                                    //                   .network(
                                    //                   "https://images.unsplash.com/photo-1521791136064-7986c2920216?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1738&q=80")
                                    //                   .image,
                                    //               maxRadius: 10.r,
                                    //               //SizeConfig.safeBlockHorizontal * 10,
                                    //               minRadius: 5.r,
                                    //               // SizeConfig.safeBlockHorizontal * 10,
                                    //             ),
                                    //           ),
                                    //           Positioned(
                                    //             left: 12,
                                    //             child: Container(
                                    //               decoration:BoxDecoration(
                                    //                 shape: BoxShape.circle,
                                    //                 border: Border.all(color: Colors.white),
                                    //
                                    //               ),
                                    //               child: CircleAvatar(
                                    //                 backgroundImage: Image
                                    //                     .network(
                                    //                     "https://images.unsplash.com/photo-1521791136064-7986c2920216?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1738&q=80")
                                    //                     .image,
                                    //                 maxRadius: 10.r,
                                    //                 //SizeConfig.safeBlockHorizontal * 10,
                                    //                 minRadius: 5.r,
                                    //                 // SizeConfig.safeBlockHorizontal * 10,
                                    //               ),
                                    //             ),
                                    //           ),
                                    //           Positioned(
                                    //             left: 24,
                                    //             child: Container(
                                    //               decoration:BoxDecoration(
                                    //                 shape: BoxShape.circle,
                                    //                 border: Border.all(color: Colors.white),
                                    //
                                    //               ),
                                    //               child: CircleAvatar(
                                    //                 backgroundImage: Image
                                    //                     .network(
                                    //                     "https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80")
                                    //                     .image,
                                    //                 maxRadius: 10.r,
                                    //                 //SizeConfig.safeBlockHorizontal * 10,
                                    //                 minRadius: 5.r,
                                    //                 // SizeConfig.safeBlockHorizontal * 10,
                                    //               ),
                                    //             ),
                                    //           ),
                                    //
                                    //         ],
                                    //       ),
                                    //     ),
                                    //     Text("11:00am - 12.00pm", style: Styles.normalText(context).copyWith(color: Colors.white, fontSize: 12.sp)),
                                    //   ],
                                    // )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// class ScheduleVisitWidget extends ConsumerStatefulWidget {
//   final DateTime date;
//   const ScheduleVisitWidget({Key? key, required this.date}) : super(key: key);
//
//   @override
//   ConsumerState<ScheduleVisitWidget> createState() => _ScheduleVisitWidgetState();
// }
//
// class _ScheduleVisitWidgetState extends ConsumerState<ScheduleVisitWidget> {
//   TimeOfDay _time= TimeOfDay(hour: 10, minute: 15);
//   TextEditingController customerController = TextEditingController();
//   TextEditingController routeNameController = TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     String formatted = "${DateFormat.MMMMEEEEd().format(widget.date).toString()} at ${_time.hour}:${_time.minute}";
//
//     return SingleChildScrollView(
//       child: Padding(
//         padding:EdgeInsets.all(13.0.sp),
//         child: Container(
//           height: MediaQuery.of(context).size.height * .29.h,
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   Text(formatted, style: Styles.heading4(context),),
//                   SizedBox(width: 10.w,),
//                   TextButton(
//                     onPressed: ()async{
//                       TimeOfDay? _timeSelecting =await showTimePicker(context: context, initialTime: _time);
//                       setState(() {
//                         _time = _timeSelecting!;
//                       });
//                     }, child: Text("Change Time", style: Styles.heading4(context).copyWith(color: Colors.blue),),)
//
//                 ],
//               ),
//               SizedBox(height: 15.h,),
//               Text("Select customer to Visit", style: Styles.heading4(context),),
//               SizedBox(height: 10.h,),
//               TypeAheadField<CustomerDataModel>(
//                 textFieldConfiguration: TextFieldConfiguration(
//                     controller: customerController,
//                     autofocus: true,
//                     style: DefaultTextStyle.of(context).style.copyWith(
//                         fontStyle: FontStyle.italic
//                     ),
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.person_add, color: Styles.appPrimaryColor,),
//                       enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Styles.appPrimaryColor),
//                           borderRadius: BorderRadius.circular(10)
//                       ),//label text of field
//                       focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Styles.appPrimaryColor),
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                     )
//                 ),
//                 suggestionsCallback: (pattern) async {
//                   List<CustomerDataModel> customers = await ref.watch(userRoutesNotifierProvider.notifier).getCustomersForSchedule();
//                   return customers.where((customer){
//                     final nameLower =  customer.customerName!.toLowerCase();
//                     final queryLower =  pattern.toLowerCase();
//
//                     return nameLower.contains(queryLower);
//                   }).toList();
//                 },
//                 itemBuilder: (context, CustomerDataModel customers) {
//                   return ListTile(
//                     leading: Icon(Icons.person),
//                     title: Text(customers.customerName!, style: Styles.heading3(context),),
//                     subtitle: Text(customers.address!, style: Styles.heading4(context)),
//                   );
//                 },
//                 onSuggestionSelected: (CustomerDataModel customer) {
//                   ref.watch(selectedCustomerProvider.state).state = customer;
//                   customerController.text = customer.customerName!;
//                 },
//               ),
//               SizedBox(height: 14,),
//               Center(
//                   child: TextField(
//                     controller: routeNameController,
//                     decoration: InputDecoration(
//                       icon: Icon(Icons.edit, color: Styles.appPrimaryColor,), //icon of text field
//                       labelText: "Enter Description",
//                       labelStyle: TextStyle(color: Colors.grey),
//                       enabledBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Styles.appPrimaryColor),
//                           borderRadius: BorderRadius.circular(10)
//                       ),//label text of field
//                       focusedBorder: OutlineInputBorder(
//                           borderSide: BorderSide(color: Styles.appPrimaryColor),
//                           borderRadius: BorderRadius.circular(10)
//                       ),
//                     ),
//                     //set it true, so that user will not able to edit text
//                   )
//               ),
//
//               ref.watch(userRoutesNotifierProvider).isLoading?Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   Text("Scheduling . . .", style: Styles.bttxt1(context),),
//                 ],
//               )
//                   :  Row(
//                 mainAxisAlignment: MainAxisAlignment.end,
//                 children: [
//                   TextButton(
//                       onPressed: (){
//                         Get.back();
//                       },
//                       child: Text("Cancel", style: Styles.normalText(context).copyWith(fontWeight: FontWeight.w700),)),
//                   TextButton(
//                       onPressed: ()async{
//                         DateTime combinedTime = DateTime(widget.date.year, widget.date.month, widget.date.day,
//                             _time.hour, _time.minute);
//                         if(routeNameController.text == ""){
//                           showCustomSnackBar("Please provide the required fields", isError: true);
//                         }else if(ref.read(selectedCustomerProvider.state).state.id == null){
//                           showCustomSnackBar("Select a customer", isError: true);
//                         }else{
//                           print("the time: ${combinedTime.toString()}");
//                           await ref.read(userRoutesNotifierProvider.notifier).addCustomerVisit(routeNameController.text, ref.read(selectedCustomerProvider).id!.toString(),
//                               combinedTime.toString());
//                           ref.read(userRoutesNotifierProvider.notifier).filterUserRoutes();
//                           routeNameController.clear();
//                           Get.back();
//                         }
//
//
//                       },
//                       child: Text("Schedule Visit", style: Styles.bttxt1(context),))
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//
//   }
// }
//
// final selectedCustomerProvider = StateProvider<>((ref) => CustomerDataModel());

final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year, kToday.month - 3, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 3, kToday.day);