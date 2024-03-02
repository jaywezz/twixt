import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_expandable_fab/flutter_expandable_fab.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nested_navigation_gorouter_example/features/deliveries/models/delivery_model.dart';
import 'package:nested_navigation_gorouter_example/features/deliveries/providers/delivery_providers.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/screens/lead_checkin_form.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/screens/leads_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/models/prospects_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/screens/create_order_screen.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/models/schedules_model.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/providers/schedules_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/app_dialog.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/circular_avatar_wider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/app_utils.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import '../../../../../utils/styles.dart';

class DeliveryDetails extends ConsumerStatefulWidget {
  final DeliveryModel delivery;
  static const routeName = "delivery-details";
  const DeliveryDetails({super.key, required this.delivery });

  @override
  ConsumerState<DeliveryDetails> createState() => _DeliveryDetailsState();
}

class _DeliveryDetailsState extends ConsumerState<DeliveryDetails> {
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
    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    final key = GlobalObjectKey<ExpandableFabState>(context);
    return Scaffold(
      bottomNavigationBar:widget.delivery.acceptAllocation == AppConstants.pendingAcceptance?Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
        child: ref.watch(deliveryNotifier) is AsyncLoading<void>?const Center(child: AnimatedCircularProgressIndicator())
            :FullWidthButton(
          btnheight: 50,
          text: "Accept Delivery",
          action: () async{
            await ref.watch(deliveryNotifier.notifier).acceptDelivery(widget.delivery.id!.toString(),context);
          },
        ),
      ):widget.delivery.acceptAllocation == AppConstants.accepted?Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
        child: FullWidthButton(
          btnheight: 50,
          text: "Deliver",
          action: () async{
            await ref.watch(deliveryNotifier.notifier).completeDelivery(widget.delivery.id!.toString(),context);
          },

        ),
      ):widget.delivery.deliveryStatus == AppConstants.completed
          ?Center(child: Text("Delivery made on : ${DateFormat.yMMMEd().format(widget.delivery.deliveryDate!)}", style: Styles.heading3(context),),)
          :SizedBox(),
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
                  title: Text("Delivery Details", style: Styles.heading2(context)),
                  centerTitle: true,
                ),
                backgroundColor: Colors.transparent,
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01),
                        alignment: Alignment.center,
                        child: CicularAvatarWidget(
                          name: clientsName,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: MediaQuery.of(context).size.height * 0.01),
                        child: Column(
                          children: [
                            Text(widget.delivery.customer!.customerName??"",
                                style: Styles.formNameText(context)),
                            SizedBox(
                              height: MediaQuery.of(context).size.height * 0.01,
                            ),
                            Text(widget.delivery.customer!.address??"",
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
                                      Text("",
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
                                      Text(widget.delivery.customer!.status??"",
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
                                      Text(widget.delivery.customer!.idNumber??"None",
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
                                          if(widget.delivery.customer!.phoneNumber == null){
                                            showCustomSnackBar("Phone number not provider", bgColor: Colors.blue);
                                          }else{
                                            await openDialPad(widget.delivery.customer!.phoneNumber??"");

                                          }

                                        },
                                        child: Text(widget.delivery.customer!.phoneNumber??"",
                                            style: Styles.formBoldText(context).copyWith(color: Colors.blue)),
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: 30.h,
                                    thickness: 2,
                                    color: Styles.greyColor.withOpacity(.3),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Delivery Items:",
                                          style: Styles.formBoldText(context).copyWith(color: Colors.black54)),
                                      // const Spacer(),
                                    ],
                                  ),

                                  const SizedBox(height: 10,),
                                  SingleChildScrollView(
                                    physics: const BouncingScrollPhysics(),
                                    scrollDirection: Axis.horizontal,
                                    child: DataTable(
                                        horizontalMargin: 20,
                                        dividerThickness: 0.5,
                                        columnSpacing: 20,
                                        border: const TableBorder(
                                          top: BorderSide(color: Colors.grey, width: 0.5),
                                          bottom: BorderSide(color: Colors.grey, width: 0.5),
                                          left: BorderSide(color: Colors.grey, width: 0.5),
                                          right: BorderSide(color: Colors.grey, width: 0.5),
                                          horizontalInside:
                                          BorderSide(color: Colors.grey, width: 0.5),
                                          verticalInside: BorderSide(color: Colors.grey, width: 0.5),
                                        ),
                                        columns:  [
                                          DataColumn(label: Text("#", style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),)),
                                          DataColumn(label: Text("Product Name", style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),)),
                                          DataColumn(label: Text("Quantity", style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),)),
                                          DataColumn(label: Text("Item Price", style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),)),
                                        ],
                                        rows: List.generate( widget.delivery.orderItems!.length,
                                                (index) => productDataRow(widget.delivery.orderItems![index], index, context))),
                                  ),

                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )),
    );
  }

  DataRow productDataRow(OrderItem order, index, BuildContext context) {
    return DataRow(
        selected: true,
        cells: [
          DataCell(Text((index + 1).toString())),
          DataCell(Text(order.productName!)),
          DataCell(Text(order.quantity!.toString())),
          DataCell(Text(order.totalAmount.toString()))
        ]);
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
