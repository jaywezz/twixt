import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/products_inventory_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/providers/inventory_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/models/customer_group_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/models/prospects_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/screens/create_order_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/app_dialog.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/circular_avatar_wider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/form_drop_down.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/default_input_field.dart';
import 'package:nested_navigation_gorouter_example/utils/app_utils.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class MakeProspect extends ConsumerStatefulWidget {
  final ProspectsModel lead;
  static const route_name = "make_qp";
  const MakeProspect({super.key, required this.lead});

  @override
  ConsumerState<MakeProspect> createState() => _MakeProspectState();
}

class _MakeProspectState extends ConsumerState<MakeProspect> {
  // TextEditingController productType = TextEditingController();
  TextEditingController noOfFlts = TextEditingController();
  TextEditingController veryNextStep = TextEditingController();
  TextEditingController followUpDate = TextEditingController();
  TextEditingController selectedProductController = TextEditingController();

  ProductsModel? selectedProduct;
  CustomerGroupModel? selectedCustomerGroup;


  TimeOfDay time = const TimeOfDay(hour: 10, minute: 15);
  DateTime _selectedDate = DateTime.now();
  DateTime _dateTime = DateTime.now();
  String? productType;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();


  @override
  void initState() {
    // TODO: implement initState
    // productType.text = "Standard-FLT";
    print("lead name: ${widget.lead.customerName}");
    super.initState();
  }
  String? dateTime;
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';
  @override
  Widget build(BuildContext context) {
    String productType = "Packs";
    followUpDate.text = "${DateFormat.MMMMEEEEd().format(_selectedDate).toString()} at ${DateFormat.Hm().format(_dateTime)}";

    return Scaffold(
      // bottomNavigationBar: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: FullWidthButton(
      //     btnheight: 50,
      //     text: "Check out (${constructTime(ref.watch(checkinTimeProvider))})",
      //     action: () {
      //       context.go('/sales/leads-details/leads-checkin', extra: {"lead":widget.lead});
      //     },
      //
      //   ),
      // ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration:  const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/bg.png',
              ),
              fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                leading: IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new_outlined, size: 25, color: Colors.black,)
                ),
                title:  Text("Make Won Customer",
                    style: Styles.titleTextStyle(context)),
                centerTitle: true,
                // actions: [
                //   IconButton(
                //     onPressed: (){},
                //     icon: const Icon(
                //       Icons.more_vert_outlined,
                //         size: 25,
                //         color: Colors.black,))
                // ],
              ),
              Container(
                margin:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                alignment: Alignment.center,
                child: CicularAvatarWidget(
                  name: widget.lead.customerName![0],
                ),
              ),
              Container(
                margin:  EdgeInsets.only(top: MediaQuery.of(context).size.height*0.03),
                child: Column(
                  children: [
                    Text( widget.lead.customerName??"", style: Styles.formNameText(context)),
                    SizedBox(height:  MediaQuery.of(context).size.height*0.01,),
                    Text(DateFormat.yMMMd().format(DateTime.now()), style: Styles.smallGreyText(context)),
                    SizedBox(height:  MediaQuery.of(context).size.height*0.01,),
                  ],
                ),
              ),
              Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  margin:  EdgeInsets.all(10.sp),
                  padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height*0.01, bottom:  MediaQuery.of(context).size.height*0.03, left: MediaQuery.of(context).size.height*0.04, right: MediaQuery.of(context).size.height*0.04,),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height:  MediaQuery.of(context).size.height*0.017,),
                        DefaultInputField(
                          title: "Customer KRA pin",
                          hintText: "Customer KRA pin",
                          onChanged: (value){
                            ref.watch(prospectsFormData).kraPin = value;
                          },
                          validator: (onValidateVal){
                            if (onValidateVal.isEmpty) {
                              return "Customer KRA pin required";}
                          },
                          // textEditingController: ,
                        ),
                        DefaultInputField(
                          title: "Customer Email Address",
                          hintText: "Customer Email Address",
                          onChanged: (value){
                           ref.watch(prospectsFormData).email = value;
                          },
                          validator: (onValidateVal){
                            if (onValidateVal.isEmpty) {
                              return "Customer email required";
                            }
                          },
                          // textEditingController: veryNextStep,
                        ),
                        SizedBox(height: 10,),

                        DefaultInputField(
                            textEditingController: followUpDate,
                            suffix: const Icon(Icons.calendar_today_outlined, color: Colors.grey,),
                            onTap: (){
                              showCustomDialog(
                                context: context,
                                body: Column(
                                  children: [
                                    Text("Schedule Meet up", style: Styles.heading2(context),),
                                    SfDateRangePicker(
                                      monthCellStyle: DateRangePickerMonthCellStyle(textStyle: Styles.heading4(context).copyWith(fontWeight: FontWeight.w700)),
                                      onSelectionChanged: _onSelectionChanged,
                                      selectionMode: DateRangePickerSelectionMode.single,

                                    ),
                                    Divider(color: Colors.grey[200], thickness: 2,),
                                    // Text("Time", style: Styles.heading3(context),),

                                  ],
                                ),
                                onOk: ()async{
                                  String formated = "${DateFormat.MMMMEEEEd().format(_selectedDate).toString()} at ${DateFormat.Hm().format(_dateTime)}";
                                  Navigator.pop(context);
                                  time = (await showTimePicker(
                                      context: context,
                                      initialTime: time))!;
                                  setState(() {
                                    _dateTime = DateTime(_selectedDate.year, _selectedDate.month, _selectedDate.day,
                                        time.hour, time.minute);
                                  });

                                },
                              );
                            },
                            readOnly: true,
                            title: "Follow-Up-Date"),
                      ],
                    ),)
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0.sp, vertical: 20.sp),
                child:  ref.watch(prospectsNotifier) is AsyncLoading<void>?const Center(
                    child: AnimatedCircularProgressIndicator()):FullWidthButton(
                  fontsize: 15.sp,
                  btnheight: 40.h,
                  text: "Make Prospect",
                  action: () async{
                    ref.watch(prospectsFormData).id = widget.lead.id;
                    if(formKey.currentState!.validate()){
                      await ref.watch(prospectsNotifier.notifier).createProspect(context);
                    }
                  },
                  color: Styles.appPrimaryColor,
                ),
              )
            ],
          ),
        ),
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