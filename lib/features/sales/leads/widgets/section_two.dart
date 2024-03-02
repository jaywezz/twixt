import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/form_drop_down.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/default_input_field.dart';

class SectionTwo extends ConsumerWidget {
  const SectionTwo({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context,  WidgetRef ref) {
    // if(ref.watch(isreadOnlyProvider)){
    //
    // }
    // ScreenUtil.init(context);
    return Padding(
      padding: EdgeInsets.only(bottom:MediaQuery.of(context).viewInsets.bottom),
      child: ListView(
        // physics: const AlwaysScrollableScrollPhysics(),
        children: [

          SizedBox(height: 10.h,),
          FormDropDownField(
              title: "Is individual or Institution",
              onChanged: (value){
                ref.watch(leadsFormData).leadType = value;
              },
              value: "Individual",
              itemsLists:const ["Individual", "Corporate"]),
          SizedBox(height: 10.h,),
          DefaultInputField(

              readOnly: false,
              hintText: "Name(Individual or institution)",
              title: "Name(Individual or institution)",
              initVal: ref.watch(leadsFormData).institutionName,
              onChanged: (value){
                ref.watch(leadsFormData).institutionName = value;
              },
              validator: (onValidateVal) {
                if (onValidateVal.isEmpty) {
                  return "Name(Individual or institution) required";}
              }
          ),


          DefaultInputField(
              readOnly: false,
              hintText: "Name of Contact Person",
              title: "Name of Contact Person",
              initVal: "",
              onChanged: (value){
                ref.watch(leadsFormData).customerName = value;


              },
              validator: (onValidateVal) {
                print("on val: $onValidateVal");
                if (onValidateVal.isEmpty || onValidateVal == "0") {
                  return "Name of Contact Person";}
              }
          ),

          DefaultInputField(
              inputtype: true,
              readOnly:false,
              hintText: "Phone Number",
              title: "Phone Number",
              inputFormatters: [
                LengthLimitingTextInputFormatter(10),
              ],
              initVal:ref.watch(leadsFormData).phoneNumber,
              onChanged: (value){
                ref.watch(leadsFormData).phoneNumber = value;

              },
              validator: (onValidateVal) {
                if(int.tryParse(onValidateVal) == null){
                  return "Invalid phone number type";
                }
                if (onValidateVal.isEmpty) {
                  return "Primary contact decision maker required";}
                // if (int.parse(onValidateVal) < 10 || int.parse(onValidateVal) > 10) {
                //   return "Invalid phone number";}
              }
          ),

          SizedBox(height: 10.h,),
          DefaultInputField(
              readOnly:false,
              hintText: "Email Address",
              title: "Email Address",
              initVal:ref.watch(leadsFormData).email,
              onChanged: (value){
                ref.watch(leadsFormData).email = value;

              },
              validator: (onValidateVal) {

              }
          ),

          FormDropDownField(
              title: "Lead Source",
              onChanged: (value) {
                ref.watch(leadsFormData).leadSource = value;
              },
              value: "Referral",
              itemsLists:  ["Referral", "Self Sourced"]),
          SizedBox(height: 10.h,),
          DefaultInputField(
            inputtype: false,
            readOnly: false,
            hintText: "Next Cause of action",
            title: "Next Cause of action",
            initVal:ref.watch(leadsFormData).action,
            onChanged: (value){
              ref.watch(leadsFormData).action = value;
            },
          ),


        ],
      ),
    );
  }
}
