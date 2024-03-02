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
import 'package:nested_navigation_gorouter_example/features/sales/prospects/models/prospects_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/screens/create_order_screen.dart';
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
import '../../../../../utils/styles.dart';

class ProspectsPage extends ConsumerStatefulWidget {
  final bool isRetailProspect;
  final bool isCheckedIn;
  final ProspectsModel prospect;
  static const routeName = "prospectsDetails";
  const ProspectsPage({super.key, required this.isRetailProspect, required this.prospect, required this.isCheckedIn });

  @override
  ConsumerState<ProspectsPage> createState() => _ProspectsPageState();
}

class _ProspectsPageState extends ConsumerState<ProspectsPage> {
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
    super.dispose();

  }

  @override
  void didChangeDependencies() {
    print("is retail: ${widget.isRetailProspect}");
    super.didChangeDependencies();
  }

  final _normalTextStyle = TextStyle(color: Colors.white);

  final _greyTextStyle = TextStyle(color: Colors.black);

  bool isLowerDate(DateTime dt1, DateTime dt2) {
    return ((getDateWithoutTime(dt1).difference(getDateWithoutTime(dt2))).inDays < 0);
  }

  bool isSameDate(DateTime dt1, DateTime dt2) {
    return dt1==dt2;
  }

  DateTime getDateWithoutTime(DateTime d) {
    return DateTime(
        d.year, d.month, d.day);
  }


  @override
  Widget build(BuildContext context) {
    final key = GlobalObjectKey<ExpandableFabState>(context);
    return WillPopScope(
      onWillPop: ()async{
        bool exit_app = false;

        if (widget.isCheckedIn) {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>LeadCheckinForm(lead: widget.prospect,)),);
          return false;
        } else {
          return true;
        }
        return exit_app;
      },
      child: Scaffold(
        bottomNavigationBar:widget.isCheckedIn? Padding(
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
          child: FullWidthButton(
            btnheight: 50,
            text: "Check out (${constructTime(ref.watch(checkinTimeProvider))})",
            action: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>LeadCheckinForm(lead: widget.prospect,)),);
              // context.go('/sales/leads-details/leads-checkin', extra: {"lead":widget.prospect});
            },

          ),
        ):null,
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
                  bottomNavigationBar:null,
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    leading: IconButton(
                        onPressed: () {
                          context.pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios_new_outlined,
                          size: 25,
                          color: Colors.black,
                        )),
                    title: Text("Customer Details", style: Styles.heading2(context)),
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
                              Text(widget.prospect.customerName??"",
                                  style: Styles.formNameText(context)),
                              SizedBox(
                                height: MediaQuery.of(context).size.height * 0.01,
                              ),
                              Text(widget.prospect.address??"",
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
                                      MediaQuery.of(context).size.height * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Customer Type: ",
                                            style: Styles.formText1(context)),
                                        const Spacer(),
                                        Text(widget.isRetailProspect? "Retailer": "Credit Customer",
                                            style: Styles.formBoldText(context)),
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                      MediaQuery.of(context).size.height * 0.02,
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Status:",
                                            style: Styles.formText1(context)),
                                        const Spacer(),
                                        Text(widget.prospect.status??"",
                                            style: Styles.formBoldText(context)),
                                      ],
                                    ),
                                    Divider(
                                      height: 10.h,
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
                                        Text(widget.prospect.idNumber??"None",
                                            style: Styles.formBoldText(context)),
                                      ],
                                    ),
                                    Divider(
                                      height: 10.h,
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
                                        InkWell(
                                          onTap: ()async{
                                            if(widget.prospect.phoneNumber == null){
                                              showCustomSnackBar("Phone number not provider", bgColor: Colors.blue);
                                            }else{
                                              await openDialPad(widget.prospect.phoneNumber??"");

                                            }

                                          },
                                          child: Text(widget.prospect.phoneNumber??"",
                                              style: Styles.formBoldText(context).copyWith(color: Colors.blue)),
                                        ),
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
                                        Text(widget.prospect.action??"None",
                                            style: Styles.formText1(context)),

                                      ],
                                    ),

                                  ],
                                ),
                              ),
                              widget.isRetailProspect? Padding(
                                padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    GestureDetector(
                                      onTap: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context)
                                          => CreateOrderScreen(customerName:widget.prospect.customerName! , customerId: widget.prospect.id.toString(), orderOnly: true, customerGroup: widget.prospect.customerGroupId.toString(),)),);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Styles.appPrimaryColor
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            children: [
                                              Icon(Icons.add_shopping_cart,color: Colors.white,),
                                              SizedBox(height: 5,),
                                              Text("Create Order", style: Styles.heading3(context).copyWith(color: Colors.white),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap: (){
                                        print("selected");
                                        // Scaffold.of(context).showBottomSheet<void>(
                                        //         (BuildContext context) {
                                        //           Customer customer = Customer(
                                        //               id: widget.prospect.id,
                                        //               customerName: widget.prospect.customerName,
                                        //               email: widget.prospect.email,
                                        //               phoneNumber: widget.prospect.phoneNumber,
                                        //               latitude: widget.prospect.latitude,
                                        //               longitude: widget.prospect.longitude
                                        //           );
                                        //           return  ScheduleVisitWidget(customer:customer , customerId: widget.prospect.id.toString(),);
                                        //         });
                                        showModalBottomSheet<void>(
                                          context: context,
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          builder: (BuildContext context) {
                                            Customer customer = Customer(
                                                id: widget.prospect.id,
                                                customerName: widget.prospect.customerName,
                                                email: widget.prospect.email,
                                                phoneNumber: widget.prospect.phoneNumber,
                                                latitude: widget.prospect.latitude,
                                                longitude: widget.prospect.longitude
                                            );
                                            return ScheduleVisitWidget(customerId: widget.prospect.id.toString(), customer: customer);
                                          },
                                        );

                                        // showDialog(context: context, builder: (context){
                                        //   Customer customer = Customer(
                                        //       id: widget.prospect.id,
                                        //       customerName: widget.prospect.customerName,
                                        //       email: widget.prospect.email,
                                        //       phoneNumber: widget.prospect.phoneNumber,
                                        //       latitude: widget.prospect.latitude,
                                        //       longitude: widget.prospect.longitude
                                        //   );
                                        //   return ScheduleVisitWidget(customer:customer , customerId: widget.prospect.id.toString(),);
                                        // });

                                        // showCustomDialog(
                                        //   context: context,
                                        //   body: Column(
                                        //     children: [
                                        //       Text(
                                        //         "Schedule Meet up",
                                        //         style: Styles.heading2(context),
                                        //       ),
                                        //       SfDateRangePicker(
                                        //         cellBuilder: (BuildContext context,
                                        //             DateRangePickerCellDetails details) {
                                        //
                                        //           // box decoration if selected
                                        //           BoxDecoration? boxDecoration;
                                        //           // set the style of the text accordingly
                                        //           var style = _normalTextStyle;
                                        //
                                        //           // All dates before initDate, convert them to grey (not allowed to choose)
                                        //           if (isLowerDate(
                                        //               details.date, DateTime.now())) {
                                        //             style = _greyTextStyle;
                                        //           } else if (isSameDate(
                                        //               details.date, DateTime.now())) {
                                        //             boxDecoration = BoxDecoration(
                                        //                 border:
                                        //                 Border.all(color: Colors.green),
                                        //                 shape: BoxShape.circle);
                                        //           }
                                        //           return Container(
                                        //             margin: const EdgeInsets.all(2),
                                        //             padding: const EdgeInsets.only(top: 10),
                                        //             decoration: boxDecoration,
                                        //             child: Column(
                                        //               mainAxisSize: MainAxisSize.max,
                                        //               mainAxisAlignment:
                                        //               MainAxisAlignment.spaceAround,
                                        //               children: <Widget>[
                                        //                 Text(details.date.day.toString(),
                                        //                     style: style)
                                        //               ],
                                        //             ),
                                        //           );
                                        //         },
                                        //         monthCellStyle:
                                        //         DateRangePickerMonthCellStyle(
                                        //             textStyle: Styles.heading4(context)
                                        //                 .copyWith(
                                        //                 fontWeight:
                                        //                 FontWeight.w700)),
                                        //         onSelectionChanged: _onSelectionChanged,
                                        //         selectionMode:
                                        //         DateRangePickerSelectionMode.single,
                                        //       ),
                                        //       Divider(
                                        //         color: Colors.grey[200],
                                        //         thickness: 2,
                                        //       ),
                                        //       // Text("Time", style: Styles.heading3(context),),
                                        //     ],
                                        //   ),
                                        //   onOk: () async {
                                        //     Navigator.pop(context);
                                        //     time = (await showTimePicker(
                                        //         context: context, initialTime: time))!;
                                        //     setState(() {
                                        //       _dateTime = DateTime(
                                        //           DateTime.now().year,
                                        //           DateTime.now().month,
                                        //           DateTime.now().day,
                                        //           time.hour,
                                        //           time.minute);
                                        //     });
                                        //     Customer customer = Customer(
                                        //         id: widget.prospect.id,
                                        //         customerName: widget.prospect.customerName,
                                        //         email: widget.prospect.email,
                                        //         phoneNumber: widget.prospect.phoneNumber,
                                        //         latitude: widget.prospect.latitude,
                                        //         longitude: widget.prospect.longitude
                                        //     );
                                        //     await ref.watch(userRoutesNotifierProvider.notifier).addCustomerVisit(
                                        //         "Visit customer",
                                        //         widget.prospect.id.toString(),
                                        //         _selectedDate, customer);
                                        //   },
                                        // );
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(15),
                                          color: Styles.appPrimaryColor
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(15.0),
                                          child: Column(
                                            children: [
                                              const Icon(Icons.calendar_today,color: Colors.white,),
                                              SizedBox(height: 5,),
                                              Text("Schedule Visit", style: Styles.heading3(context).copyWith(color: Colors.white),)
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Padding(
                                    //   padding: EdgeInsets.all(10),
                                    //   child: FullWidthButton(
                                    //     btnheight: MediaQuery.of(context).size.width *.25,
                                    //     width: MediaQuery.of(context).size.width *.25,
                                    //     text: "Create Order",
                                    //     action: () {
                                    //       Navigator.push(
                                    //         context,
                                    //         MaterialPageRoute(builder: (context) => CreateOrderScreen(customerName:widget.prospect.customerName! , customerId: widget.prospect.id.toString(), orderOnly: true,)),);
                                    //     },
                                    //   ),
                                    // ),
                                    // Padding(
                                    //   padding: EdgeInsets.all(10),
                                    //   child: FullWidthButton(
                                    //     btnheight: MediaQuery.of(context).size.width *.25,
                                    //     width: MediaQuery.of(context).size.width *.25,
                                    //     text: "Schedule Visit",
                                    //     action: () {
                                    //
                                    //     },
                                    //   ),
                                    // ),
                                  ],
                                ),
                              ):SizedBox()
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
                        tooltip: "Make Won Customer",
                        heroTag: null,
                        label: Row(
                          children: [
                            Icon(
                              Icons.move_to_inbox_rounded,
                              color: Colors.white,
                              size: 20.sp,
                            ),
                            SizedBox(width: 5.w,),
                            Text("Make Won", style: Styles.heading3(context).copyWith(color: Colors.white),),
                          ],
                        ),
                        onPressed: () {
                          context.goNamed(MakeProspect.route_name, extra: {"lead": widget.prospect});

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
                        onPressed: () {
                          showModalBottomSheet<void>(
                            context: context,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            builder: (BuildContext context) {
                              Customer customer = Customer(
                                  id: widget.prospect.id,
                                  customerName: widget.prospect.customerName,
                                  email: widget.prospect.email,
                                  phoneNumber: widget.prospect.phoneNumber,
                                  latitude: widget.prospect.latitude,
                                  longitude: widget.prospect.longitude
                              );
                              return ScheduleVisitWidget(customerId: widget.prospect.id.toString(), customer: customer);
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
                          await ref.read(coldCustomesNotifier.notifier).markAsCold(context, "Just cold",
                              widget.prospect.id.toString());

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
