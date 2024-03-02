import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nested_navigation_gorouter_example/features/sales/cold_customers/providers/cold_customer_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/screens/lead_checkin_form.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/screens/leads_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/screens/convert_to_negotiation.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/screens/make_prospect.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/models/schedules_model.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/providers/schedules_provider.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/widgets/schedule_visit_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/app_dialog.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/circular_avatar_wider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/utils/app_utils.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../../utils/styles.dart';

class LeadsDetails extends ConsumerStatefulWidget {
  static const prospectsDetails = "prospectsDetails";
  final LeadsModel lead;
  final bool isCheckedIn;
  const LeadsDetails({super.key, required this.lead, required this.isCheckedIn});

  @override
  ConsumerState<LeadsDetails> createState() => _LeadsDetailsState();
}

class _LeadsDetailsState extends ConsumerState<LeadsDetails> {
  var plotId = 36478;
  final clientsName = "Nahub Bakari";

  TimeOfDay time = const TimeOfDay(hour: 10, minute: 15);
  DateTime _selectedDate = DateTime.now();
  DateTime _dateTime = DateTime.now();
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';

  bool isPopped = false;
  @override
  void dispose() async {
    // TODO: implement dispose
    // _timer.cancel();
    super.dispose();

  }

  @override
  void didChangeDependencies() {
    print("on did change dependencies");
    // startTimer();
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    final key = GlobalObjectKey<ExpandableFabState>(context);
    return WillPopScope(
      onWillPop: ()async{
        if(widget.isCheckedIn){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>LeadCheckinForm(lead: widget.lead,)),);
          return false;
        }else{
          return true;
        }
      },
      child: Scaffold(
        bottomNavigationBar: widget.isCheckedIn?Padding(
          padding: const EdgeInsets.all(8.0),
          child: FullWidthButton(
            btnheight: 50,
            text: "Check out (${constructTime(ref.watch(checkinTimeProvider))})",
            action: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>LeadCheckinForm(lead: widget.lead,)),);
              // context.go('/sales/leads-details/leads-checkin', extra: {"lead":widget.lead});
            },

          ),
        ):Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
          child: FullWidthButton(
            btnheight: 50,
            text: "Back",
            action: () {
              context.pop();

            },

          ),
        ),
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
            child: Stack(
              children: [
                isPopped
                    ? Opacity(
                  opacity: .7,
                  child: Container(
                    color: Colors.black26,
                  ),
                )
                    : Container(
                  color: Colors.transparent,
                ),
                Scaffold(
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                        onPressed: () {
                          if(widget.isCheckedIn){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>LeadCheckinForm(lead: widget.lead,)),);
                          }else{
                            context.pop();
                          }
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 25,
                          color: Colors.black,
                        )),
                    title: Text("Lead", style: Styles.heading2(context)),
                    centerTitle: true,
                  ),
                  backgroundColor: Colors.transparent,
                  body: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03),
                          alignment: Alignment.center,
                          child: CicularAvatarWidget(
                            name: clientsName,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * 0.03),
                          child: Column(
                            children: [
                              Text(widget.lead.customerName!,
                                  style: Styles.formNameText(context)),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text(widget.lead.address??"None",
                                  style: Styles.smallGreyText(context)),
                              Container(
                                margin: EdgeInsets.only(
                                    top: MediaQuery.of(context).size.height * 0.03,
                                    left: 20,
                                    right: 20),
                                padding: EdgeInsets.only(
                                  top: MediaQuery.of(context).size.height * 0.01,
                                  bottom: MediaQuery.of(context).size.height * 0.03,
                                  left: MediaQuery.of(context).size.height * 0.04,
                                  right: MediaQuery.of(context).size.height * 0.04,
                                ),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Information",
                                      style: TextStyle(
                                        color: Styles.greyColor,
                                        fontSize: 17,
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                      MediaQuery.of(context).size.height * 0.05,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Status:",
                                            style: Styles.formText1(context)),
                                        const Spacer(),
                                        Text("Active",
                                            style: Styles.formBoldText(context)),
                                      ],
                                    ),
                                    Divider(
                                      height: 40.h,
                                      thickness: 2,
                                      color: Styles.greyColor.withOpacity(.3),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      //crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("ID Number:",
                                            style: Styles.formText1(context)),
                                        const Spacer(),
                                        Text(widget.lead.idNumber??"None",
                                            style: Styles.formBoldText(context)),
                                      ],
                                    ),
                                    Divider(
                                      height: 40.h,
                                      thickness: 1,
                                      color: Styles.greyColor.withOpacity(.3),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Phone Number:",
                                            style: Styles.formText1(context)),
                                        const Spacer(),
                                        Text(widget.lead.phoneNumber??"None",
                                            style: Styles.formBoldText(context)),
                                      ],
                                    ),
                                    Divider(
                                      height: 40.h,
                                      thickness: 2,
                                      color: Styles.greyColor.withOpacity(.3),
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("Very Next Step:",
                                            style: Styles.formBoldText(context)),
                                        // const Spacer(),
                                        SizedBox(height: 10.h,),
                                        Text("Create Order",
                                            style: Styles.formText1(context)),
                                      ],


                                    ),
                                  ],
                                ),
                              ),
                              // Padding(
                              //     padding: EdgeInsets.all(15.h),
                              //     child: FullWidthButton(
                              //       color: Colors.yellow.shade600,
                              //       btnheight: 30.h,
                              //       action: () async {
                              //
                              //       },
                              //       shape: RoundedRectangleBorder(
                              //           borderRadius: BorderRadius.circular(10.r)),
                              //       text:  constructTime(seconds),
                              //     )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  floatingActionButtonLocation: ExpandableFab.location,
                  floatingActionButton: ExpandableFab(
                    key: key,
                    duration: const Duration(milliseconds: 400),
                    distance: 60.0.sp,
                    type: ExpandableFabType.up,
                    // fanAngle: 70,
                    foregroundColor: Colors.white,
                    backgroundColor: Styles.appPrimaryColor,
                    closeButtonStyle: ExpandableFabCloseButtonStyle(
                      child: const Icon(Icons.close),
                      foregroundColor: Colors.white,
                      backgroundColor: Styles.appPrimaryLightColor,
                    ),
                    overlayStyle: ExpandableFabOverlayStyle(
                      // color: Colors.black.withOpacity(0.5),
                      blur: 4,
                    ),
                    onOpen: () {
                      debugPrint('onOpen');
                    },
                    afterOpen: () {
                      debugPrint('afterOpen');
                    },
                    onClose: () {
                      debugPrint('onClose');
                    },
                    afterClose: () {
                      debugPrint('afterClose');
                    },
                    children: [
                      FloatingActionButton.extended(
                        tooltip: "Convert to Negotiation",
                        heroTag: null,
                        backgroundColor: widget.isCheckedIn?null:Colors.grey,
                        label: Row(
                          children: [
                            Icon(
                              Icons.move_to_inbox_rounded,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                            SizedBox(width: 5.w,),
                            Text("Convert to Negotiation", style: Styles.heading3(context).copyWith(color: Colors.white),),
                          ],
                        ),
                        onPressed: () {
                          // context.go('/sales/leads-details/make-prospect', extra: {"lead": widget.lead});
                          if(widget.isCheckedIn){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>ConvertToNegotiationScreen(lead: widget.lead,
                              )),);
                          }else{
                            showCustomSnackBar("You need to checkin", bgColor: Colors.blue);
                          }
                        },
                      ),
                      FloatingActionButton.extended(
                        tooltip: "Schedule Visit",
                        heroTag: null,
                        label:  Row(
                          children: [
                            Icon(
                              Icons.schedule_rounded,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                            SizedBox(width: 5.w,),
                            Text("Schedule Visit", style: Styles.heading3(context).copyWith(color: Colors.white),),

                          ],
                        ),
                        onPressed: () async{
                          showModalBottomSheet<void>(
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            builder: (BuildContext context) {
                              Customer customer = Customer(
                                  id: widget.lead.id,
                                  customerName: widget.lead.customerName,
                                  email: widget.lead.email,
                                  phoneNumber: widget.lead.phoneNumber,
                                  latitude: widget.lead.latitude,
                                  longitude: widget.lead.longitude
                              );
                              return ScheduleVisitWidget(customerId: widget.lead.id.toString(), customer: customer);
                            },
                          );
                        },
                      ),
                      FloatingActionButton.extended(
                        heroTag: null,
                        tooltip: "Mark as Cold",
                        label: Row(
                          children: [
                            Icon(
                              Icons.severe_cold_outlined,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                            SizedBox(width: 5.w,),
                            Text("Mark as Cold", style: Styles.heading3(context).copyWith(color: Colors.white),),
                          ],
                        ),
                        onPressed: () async{
                          await ref.read(coldCustomesNotifier.notifier).markAsCold(context, "Just cold", widget.lead.id.toString());
                        },
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }



  void _onSelectionChanged(DateRangePickerSelectionChangedArgs args) {
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
      if (args.value is PickerDateRange) {
        _range = '${DateFormat('dd/MM/yyyy').format(args.value.startDate)} -'
        // ignore: lines_longer_than_80_chars
            ' ${DateFormat('dd/MM/yyyy').format(args.value.endDate ?? args.value.startDate)}';
      } else if (args.value is DateTime) {
        _selectedDate = args.value;
      } else if (args.value is List<DateTime>) {
        _dateCount = args.value.length.toString();
      } else {
        _rangeCount = args.value.length.toString();
      }
    });
  }
}
