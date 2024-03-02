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

class ConvertToNegotiationScreen extends ConsumerStatefulWidget {
  final LeadsModel lead;
  static const routeName = "convert_to_negotiation";
  const ConvertToNegotiationScreen({super.key, required this.lead});

  @override
  ConsumerState<ConvertToNegotiationScreen> createState() => _ConvertToNegotiationScreenState();
}

class _ConvertToNegotiationScreenState extends ConsumerState<ConvertToNegotiationScreen> {
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FullWidthButton(
          btnheight: 50,
          text: "Check out (${constructTime(ref.watch(checkinTimeProvider))})",
          action: () {
            context.go('/sales/leads-details/leads-checkin', extra: {"lead":widget.lead});
          },

        ),
      ),
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
                title:  Text("Convert to Negotiation",
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
                        Text(
                          "Select customer Group",
                          style: Styles.heading3(context)
                              .copyWith(color: Colors.black54, fontSize: 12.sp),
                        ),
                        SizedBox(height: 10,),

                        ref.watch(customerGroupsProvider).when(data: (data){
                          return SizedBox(
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color: Colors.white, //background color of dropdown button
                                border: Border.all(
                                    color: Styles.greyColor
                                        .withOpacity(.3)), //border of dropdown button
                                borderRadius: BorderRadius.circular(10.sp),
                              ),
                              child: DropdownButtonFormField(
                                isExpanded: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(color: Styles.defaultInputFieldColor, width: 0.7)),
                                ),
                                hint: const Row(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Icon(Icons.arrow_drop_down),
                                    ),
                                  ],
                                ), // Not necessary for Option 1
                                style: Styles.heading1(context),
                                value: selectedCustomerGroup,
                                onChanged: (value){
                                  setState(() {
                                    selectedCustomerGroup = value;
                                  });
                                },
                                items: data.map((value) {
                                  return DropdownMenuItem(
                                    value: value,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                      child: Text(
                                        value.groupName!,
                                        style: Styles.heading3(context)
                                            .copyWith(fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                  );
                                }).toList(),
                                icon: const Padding(
                                  //Icon at tail, arrow bottom is default icon
                                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                                    child: Icon(Icons.keyboard_arrow_down)),
                              ),
                            ),
                          );
                        },
                            error: (e,s){
                              return Text("An error occurred getting customer groups", style: Styles.heading3(context).copyWith(color: Colors.red),);
                            }, loading: (){
                              return Center(child: AnimatedCircularProgressIndicator());
                            }),

                        SizedBox(height: 10,),


                        selectedCustomerGroup !=null && selectedCustomerGroup!.id == 3?Text("Choose Product type", style: Styles.normalText(context),):SizedBox(),
                        selectedCustomerGroup !=null && selectedCustomerGroup!.id == 3?SizedBox(height: 10.h,):SizedBox(),

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
                child:  ref.watch(prospectsNotifier) is AsyncLoading<void>?Center(child: const AnimatedCircularProgressIndicator()):FullWidthButton(
                  fontsize: 15.sp,
                  btnheight: 40.h,
                  text: selectedCustomerGroup==null?"Select customer Group":"Next",
                  action: () async{
                    ref.watch(prospectsFormData).id = widget.lead.id;
                    if(formKey.currentState!.validate()){
                      if(selectedCustomerGroup != null){
                        ref.watch(prospectsFormData).customerGroupId = selectedCustomerGroup!.id;
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>
                              CreateOrderScreen(customerGroup:"3",customerName:widget.lead.customerName! , customerId: widget.lead.id.toString(), orderOnly: false,)),);
                      }else{
                        showCustomSnackBar("Select a customer group", bgColor: Colors.blue);
                      }
                    }


                  },
                  color: selectedCustomerGroup==null?Colors.grey:Styles.appPrimaryColor,
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