
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested_navigation_gorouter_example/features/authentication/provider/auth_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/regions_model/region_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/form_drop_down.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/default_input_field.dart';
import 'package:nested_navigation_gorouter_example/services/location_service.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class SectionOne extends ConsumerStatefulWidget {
  const SectionOne({Key? key}) : super(key: key);

  // final Prospects? prospects;

  @override
  ConsumerState<SectionOne> createState() => _SectionOneState();
}

class _SectionOneState extends ConsumerState<SectionOne> {
  String _chosenValue = 'Yes';
  TextEditingController addressController = TextEditingController();
  TextEditingController coordinatesController = TextEditingController();
  TextEditingController salesPersonController = TextEditingController();


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
            // DefaultInputField(
            //   title: "Sales Agent",
            //   readOnly: true,
            //   initVal: "Margaret Wanjiku",
            //   onChanged: (value){
            //     // ref.watch(leadsFormData).
            //   },
            // ),

            SizedBox(height: 10.h),

            ref.watch(positionProvider).when(data: (data){
              if(data == null){
                return const Text("Unable to get location");
              }else{
                ref.watch(leadsFormData).latitude = data.latitude.toString();
                ref.watch(leadsFormData).longitude = data.longitude.toString();
                return DefaultInputField(
                    title: "GPS",
                    readOnly: true,
                    initVal:"${ data.latitude}, ${ data.longitude}",
                    // textEditingController: coordinatesController,
                    validator: (onValidateVal) {
                      if (onValidateVal.isEmpty) {
                        return "Invalid coordinates";}
                      if (onValidateVal == "Getting coordinates ....") {
                        return "Invalid coordinates";}
                    }
                );
              }

            }, error: (e,s){
              return Text("An error occurred getting gps", style: Styles.heading3(context).copyWith(color: Colors.blue),);
            }, loading: (){
              return Center(child: AnimatedCircularProgressIndicator());
            }),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Lead Region",
              style: Styles.heading3(context)
                  .copyWith(color: Colors.black54, fontSize: 12.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            ref.watch(regionsProvider(false)).when(data: (data){
              if(data.isEmpty){
                return Text("No regions added", style: Styles.heading3(context).copyWith(color: Colors.black54),);
              }
              return SizedBox(
                height: 40.h,
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
                    decoration: const InputDecoration(
                      disabledBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
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
                    value: ref.watch(selectedRegionProvider),
                    onChanged: (RegionModel? region){
                      setState(() {
                        ref.watch(selectedRegionProvider.state).state = region!;
                        if(region.subregions!.isNotEmpty){
                          print("selected first sub: ${region.subregions![0].name}");
                          ref.watch(selectedSubRegionProvider.state).state = region.subregions![0];
                          if(region.subregions![0].areas!.isNotEmpty){
                            ref.watch(selectedAreaProvider.state).state = region.subregions![0].areas!.first;
                          }

                        }
                      });
                    },
                    items: data.map((value) {
                      return DropdownMenuItem(
                        value: value,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 15.0),
                          child: Text(
                            value.name??"None",
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
            }, error: (error,s){
              return Text("An error occurred getting regions.", style: Styles.heading3(context),);
            },
                loading: (){
              return Center(child: AnimatedCircularProgressIndicator());
            }),
            SizedBox(
              height: 10.h,
            ),

            Text(
              "Lead Sub Region",
              style: Styles.heading3(context)
                  .copyWith(color: Colors.black54, fontSize: 12.sp),
            ),
            SizedBox(
              height: 10.h,
            ),

            ref.watch(selectedRegionProvider)== null?const Text("No sub Regions added"):ref.watch(selectedRegionProvider)!.subregions!.isEmpty|| ref.watch(selectedSubRegionProvider) == null?Text("No sub regions added", style: Styles.heading3(context).copyWith(color: Colors.black54),):SizedBox(
            height: 40.h,
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
                decoration: const InputDecoration(
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
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
                value: ref.watch(selectedSubRegionProvider),
                onChanged: (Subregion? subRegion){
                  setState(() {
                    ref.watch(selectedSubRegionProvider.state).state = subRegion;
                    if(subRegion!.areas!.isNotEmpty){
                      ref.watch(selectedAreaProvider.state).state = subRegion.areas!.first;
                    }
                  });
                },
                items: ref.watch(selectedRegionProvider)!.subregions!.map((value) {
                  return DropdownMenuItem(
                    value: value,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Text(
                        value.name??"None",
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
          ),
            SizedBox(
              height: 10.h,
            ),

            Text(
              "Lead Area",
              style: Styles.heading3(context)
                  .copyWith(color: Colors.black54, fontSize: 12.sp),
            ),
            SizedBox(
              height: 10.h,
            ),
            ref.watch(selectedSubRegionProvider)== null?Text("No areas added"):ref.watch(selectedSubRegionProvider)!.areas!.isEmpty || ref.watch(selectedAreaProvider) == null?Text("No areas added", style: Styles.heading3(context).copyWith(color: Colors.black54),):SizedBox(
              height: 40.h,
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
                  decoration: const InputDecoration(
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
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
                  value: ref.watch(selectedAreaProvider),
                  onChanged: (Area? area){
                    setState(() {
                      ref.watch(selectedAreaProvider.state).state = area!;
                    });
                  },
                  items: ref.watch(selectedSubRegionProvider)!.areas!.map((value) {
                    return DropdownMenuItem(
                      value: value,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Text(
                          value.name??"None",
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
            ),

          ],
        ),
      ),
    );
  }
}
