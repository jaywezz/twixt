
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/app_dialog.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/form_drop_down.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/default_input_field.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';

class CheckinSectionOne extends ConsumerStatefulWidget {
  const CheckinSectionOne({Key? key}) : super(key: key);

  // final Prospects? prospects;

  @override
  ConsumerState<CheckinSectionOne> createState() => _CheckinSectionOneState();
}

class _CheckinSectionOneState extends ConsumerState<CheckinSectionOne> {
  String _chosenValue = 'Yes';
  TextEditingController addressController = TextEditingController();
  TextEditingController coordinatesController = TextEditingController();
  TextEditingController salesPersonController = TextEditingController();

  String didUserMakeOrder = "Yes";
  String _dateCount = '';
  String _range = '';
  String _rangeCount = '';
  String? dateTime;
  DateTime _selectedDate = DateTime.now();
  DateTime _dateTime = DateTime.now();

  TimeOfDay time = const TimeOfDay(hour: 10, minute: 15);



  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies

    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {

    ScreenUtil.init(context);
    return Card(
      elevation: 0,
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: ListView(
          padding: EdgeInsets.zero,
          physics: BouncingScrollPhysics(),
          children: [
            const SizedBox(
              height: 10,
            ),
            FormDropDownField(
                title: "Did customer make an order",
                onChanged: (value) {
                  setState(() {
                    ref.watch(checkOutFormData).didLeadMakeOrder = value;
                    if(value == "Yes"){
                      ref.watch(checkOutFormData).reasonForNoOrder = "";
                      ref.watch(checkOutFormData).potentialCompetitors = "";
                    }
                    ref.watch(checkOutFormData).didLeadMakeOrder = value;
                  });
                  // ref.watch(isDecisionMakerProvider.state).state = value!;
                },
                value: ref.watch(checkOutFormData).didLeadMakeOrder,
                itemsLists:  const ["Yes", "No"]),
            const SizedBox(
              height: 10,
            ),
            ref.watch(checkOutFormData).didLeadMakeOrder=="No"?Column(
              children: [
                DefaultInputField(
                  readOnly: false,
                  maxLine: 2,
                  hintText: "Provide a reason",
                  title: "Provide a reason",
                  onChanged: (value){
                    ref.watch(checkOutFormData).reasonForNoOrder = value;
                  },
                ),
                DefaultInputField(
                  readOnly: false,
                  maxLine: 2,
                  hintText: "Provide potential competitors",
                  title: "Provide potential competitors",
                  validator: (onValidateVal) {
                    if (onValidateVal.isEmpty) {
                      return "Provide potential competitors required";}
                  },
                  onChanged: (value){
                    ref.watch(checkOutFormData).potentialCompetitors = value;

                  },
                ),
                FormDropDownField(
                    title: "Update lead status",
                    onChanged: (value) {
                      ref.watch(checkOutFormData).leadStatus = value;
                      // ref.watch(isDecisionMakerProvider.state).state = value!;
                    },
                    value: "Active",
                    itemsLists:  const ["Active", "Partial", "Cold"]),
              ],
            ):SizedBox(),
            const SizedBox(
              height: 10,
            ),
            DefaultInputField(
              readOnly: false,
              maxLine: 2,
              hintText: "Very Next step",
              title: "Very Next step",
              validator: (onValidateVal) {
                if (onValidateVal.isEmpty) {
                  return "Very Next step required";}
              },
              onChanged: (value){
                ref.watch(checkOutFormData).nextStep = value;

              },
            ),

            DefaultInputField(
                initVal: "21-02-2022",
                suffix: const Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.grey,
                ),
                onTap: () {
                  showCustomDialog(
                    context: context,
                    body: Column(
                      children: [
                        Text(
                          "Schedule Meet up",
                          style: Styles.heading2(context),
                        ),
                        SfDateRangePicker(
                          monthCellStyle:
                          DateRangePickerMonthCellStyle(
                              textStyle: Styles.heading4(context)
                                  .copyWith(
                                  fontWeight:
                                  FontWeight.w700)),
                          onSelectionChanged: _onSelectionChanged,
                          selectionMode:
                          DateRangePickerSelectionMode.single,
                        ),
                        Divider(
                          color: Colors.grey[200],
                          thickness: 2,
                        ),
                        // Text("Time", style: Styles.heading3(context),),
                      ],
                    ),
                    onOk: () async {
                      Navigator.pop(context);
                      time = (await showTimePicker(
                          context: context, initialTime: time))!;
                      setState(() {
                        _dateTime = DateTime(
                            DateTime.now().year,
                            DateTime.now().month,
                            DateTime.now().day,
                            time.hour,
                            time.minute);
                      });
                    },
                  );
                },
                readOnly: true,
                title: "Follow-Up-Date"),

          ],
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
