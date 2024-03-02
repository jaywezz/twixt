
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/models/schedules_model.dart';
import 'package:nested_navigation_gorouter_example/features/schedules/providers/schedules_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class ScheduleVisitWidget extends ConsumerStatefulWidget {
  final String customerId;
  final Customer customer;
  const ScheduleVisitWidget({Key? key, required this.customerId, required this.customer,})
      : super(key: key);

  @override
  ConsumerState<ScheduleVisitWidget> createState() =>
      _ScheduleVisitWidgetState();
}

class _ScheduleVisitWidgetState extends ConsumerState<ScheduleVisitWidget> {
  String _time = DateFormat("hh:mm a").format(DateTime.now()).toString();
  TextEditingController dateInputController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  DateTime? _selectedDate = DateTime.now();
  @override
  Widget build(BuildContext context) {
    dateInputController.text =
    "${DateFormat.MMMMEEEEd().format(_selectedDate ?? DateTime.now()).toString()} at ${_time}";

    return Container(
      color: Colors.blueGrey.withOpacity(.2),
      child: Padding(
        padding: EdgeInsets.all(13.0.sp),
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .29.h,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Text(
                        dateInputController.text,
                        overflow: TextOverflow.ellipsis,
                        style: Styles.heading4(context),
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: TextButton(
                        onPressed: () async {
                          var pickedTime = await showTimePicker(
                              context: context,
                              initialEntryMode: TimePickerEntryMode.input,
                              initialTime: TimeOfDay(
                                  hour: int.parse(_time.split(":")[0]),
                                  minute: int.parse(
                                      _time.split(":")[1].split(" ")[0])));

                          String formmattedTime = pickedTime!.format(context);
                          if (pickedTime == null) {
                            print("Something is wrong");
                          } else {
                            setState(() {
                              _time = formmattedTime;
                            });
                          }
                        },
                        child: Text(
                          "Change Time",
                          style: Styles.heading4(context)
                              .copyWith(color: Colors.blue),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                Text(
                  "Select visiting date",
                  style: Styles.heading4(context),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Center(
                    child: TextField(
                      controller: dateInputController,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.calendar_today,
                          color: Colors.black54,
                        ), //icon of text field
                        labelText: "Enter Visiting Date",
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54),
                            borderRadius:
                            BorderRadius.circular(10)), //label text of field
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Styles.appPrimaryColor),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      readOnly: true,
                      //set it true, so that user will not able to edit text
                      onTap: () async {
                        DateTime? selectingDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime.now(),
                            //DateTime.now() - not to allow to choose before today.
                            builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: ColorScheme.light(
                                    primary: Styles.appPrimaryColor, // <-- SEE HERE
                                    onPrimary: Colors.white, // <-- SEE HERE
                                    onSurface: Colors.black, // <-- SEE HERE
                                  ),
                                  textButtonTheme: TextButtonThemeData(
                                    style: TextButton.styleFrom(
                                      primary: Colors.red, // button text color
                                    ),
                                  ),
                                ),
                                child: child!,
                              );
                            },
                            lastDate: DateTime(2100));
                        setState(() {
                          _selectedDate = selectingDate;
                        });
                        // if (pickedDate != null) {
                        //   print(
                        //       pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
                        //   String formattedDate =
                        //   DateFormat('yyyy-MM-dd').format(pickedDate);
                        //   print(
                        //       formattedDate); //formatted date output using intl package =>  2021-03-16
                        //   setState(() {
                        //     dateInputController.text =
                        //         formattedDate; //set output date to TextField value.
                        //   });
                        // } else {}
                      },
                    )),
                SizedBox(
                  height: 14,
                ),
                Center(
                    child: TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        icon: Icon(
                          Icons.edit,
                          color: Styles.appSecondaryColor,
                        ), //icon of text field
                        labelText: "Enter Description",
                        labelStyle: TextStyle(color: Colors.grey),
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black54),
                            borderRadius:
                            BorderRadius.circular(10)), //label text of field
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Styles.appPrimaryColor),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      //set it true, so that user will not able to edit text
                    )),
                ref.watch(userRoutesNotifierProvider.notifier) is AsyncLoading<void>? Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Scheduling . . .",
                      style: Styles.bttxt1(context),
                    ),
                  ],
                )
                    : Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Cancel",
                          style: Styles.normalText(context)
                              .copyWith(fontWeight: FontWeight.w700),
                        )),
                    TextButton(
                        onPressed: () async {
                          DateTime combinedTime = DateTime(
                            _selectedDate!.year,
                            _selectedDate!.month,
                            _selectedDate!.day,
                            int.parse(_time.split(":")[0]),
                            int.parse(_time.split(":")[1].split(" ")[0]),
                          );

                          if (descriptionController.text == "") {
                            showCustomSnackBar(
                                "Please provide the required fields",
                                isError: true);
                          } else {
                            await ref.watch(userRoutesNotifierProvider.notifier).addCustomerVisit(
                                descriptionController.text,
                                widget.customerId,
                                combinedTime, widget.customer);
                            descriptionController.clear();
                            Navigator.pop(context);
                          }
                        },
                        child: Text(
                          "Schedule Visit",
                          style: Styles.bttxt1(context),
                        ))
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
