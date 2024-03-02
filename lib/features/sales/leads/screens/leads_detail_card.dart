import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/app_dialog.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/services/location_service.dart';
import 'package:nested_navigation_gorouter_example/utils/formatters/currency_formatter.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';


class LeadsDetailCard extends ConsumerStatefulWidget {
  final Color? color;
  final LeadsModel lead;
  final double longitude;
  final double latitude;
  final double distance;
  const LeadsDetailCard({Key? key, required this.color,  required this.lead, required this.distance,  required this.longitude,  required this.latitude, }) : super(key: key);

  @override
  ConsumerState<LeadsDetailCard> createState() => _LeadsDetailCardState();
}

class _LeadsDetailCardState extends ConsumerState<LeadsDetailCard> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async{
        if(widget.distance < 0.5){
          setState(() {
            isLoading = true;
          });
          await ref.read(leadsNotifier.notifier).customerCheckIn(context, widget.lead);
          ref.read(leadsNotifier.notifier).startTimer();
          if(!mounted) return;
          context.go('/sales/leads-details', extra: {"lead":widget.lead, "isCheckedin":true});
          setState(() {
            isLoading = false;
          });
        }else{
          showDialog(context: context, builder: (BuildContext context){
            return  AlertDialog(
              title: Text("Lead out of range", style: Styles.heading2(context),
              ),
              content: Container(width: double.maxFinite,
                  child: Text("Selected lead is out of range. Do you wish to proceed",
                    style: Styles.normalText(context),)),
              actions: [
                TextButton(
                  child:
                  Text("Cancel",
                    style: Styles.heading3(context).copyWith(color: Colors.grey),
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
                TextButton(
                  child: Text("Proceed", style: Styles.heading3(context).copyWith(color: Styles.appGreenColor),
                  ),
                  onPressed:() async {
                    if(!mounted) return;
                    Navigator.pop(context);
                    context.go('/sales/leads-details', extra: {"lead":widget.lead, "isCheckedin":false});

                  },
                ),
              ],
            );
          });
        }
      },
      child: Card(
        elevation: 1,
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: widget.distance< 0.5?Styles.appPrimaryColor:Colors.grey,
                      borderRadius: BorderRadius.circular(10.sp)),
                  height: 50.h,
                  width: MediaQuery.of(context).size.width * 0.15,
                  child: Text(widget.lead.institutionName![0], style: Styles.heading2(context).copyWith(color: Colors.white),),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.03,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        //width: 60.w,
                          height: 13.h,
                          child: FittedBox(
                            fit: BoxFit.fitHeight,
                            child: Text(widget.lead.institutionName!,
                                style: Styles.heading2(context)),
                          )),
                      SizedBox(
                        height: 5.h,
                      ),
                      Text(DateFormat.MMMMEEEEd().format(widget.lead.createdAt!),
                          style: Styles.smallGreyText(context)),
                    ],
                  ),
                ),
              ],
            ),

            isLoading?const Center(child: AnimatedCircularProgressIndicator()):Row(
              children: [
                widget.lead.offline ?Icon(Icons.warning_amber_rounded, color: Styles.appYellowColor, size: 15.sp,)
                    : const SizedBox(),
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                      color:  Styles.appPrimaryLightColor,
                      child: Text("${widget.distance.toStringAsFixed(2)} Km",
                        style: Styles.heading4(context).copyWith(color: Colors.white),
                      )
                  ),
                ),
                GestureDetector(
                    onTap: (){
                      context.go('/sales/drive-to-customer',
                          extra: {
                            "destination":LatLng(double.parse(widget.lead.latitude!), double.parse(widget.lead.longitude!)),
                            "source":LatLng(double.parse(widget.lead.latitude!), double.parse(widget.lead.longitude!)),
                            "shopName": widget.lead.customerName
                          });
                    },
                    child: Icon(Icons.pin_drop_outlined, size: 26.sp, color:Styles.appPrimaryColor,))
              ],
            )

          ],
        ),
      ),
    );
  }
}

