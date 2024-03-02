import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nested_navigation_gorouter_example/features/sales/cold_customers/model/cold_customer_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/models/prospects_model.dart';
import 'package:nested_navigation_gorouter_example/services/location_service.dart';
import 'package:nested_navigation_gorouter_example/utils/formatters/currency_formatter.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
class ColdCustomerCard extends ConsumerStatefulWidget {
  final Color? color;
  final ColdCustomerModel customer;
  final double longitude;
  final double latitude;
  const ColdCustomerCard( {Key? key, this.color, required this.customer, required this.longitude, required this.latitude, }) : super(key: key);

  @override
  ConsumerState<ColdCustomerCard> createState() => _ProspectsDetailsCardState();
}

class _ProspectsDetailsCardState extends ConsumerState<ColdCustomerCard> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    List<String>? latlong;
    var nameIntial = widget.customer.customerName![0].toUpperCase();
    print(MediaQuery.of(context).size.width);
    return Card(
      elevation: 1,
      color: Colors.white,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: ListTile(
          leading: Container(
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: widget.color,
                borderRadius: BorderRadius.circular(10.sp)
            ),

            height: 50.h,
            width: MediaQuery.of(context).size.width*0.15.sp,
            child: Text(nameIntial, style: Styles.heading2(context).copyWith(color: Colors.white)
            ),
          ),
          title: Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 13.h,
              child: FittedBox(
                fit: BoxFit.fitHeight,
                child: Text(
                    widget.customer.customerName!,
                    style: Styles.heading2(context)
                ),
              ),
            ),
          ),
          subtitle: Text(
              widget.customer.address??"",
              style: Styles.smallGreyText(context)
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // widget.customer.offline ?Icon(Icons.warning_amber_rounded, color: Styles.appYellowColor, size: 15.sp,)
              //     : const SizedBox(),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 7, vertical: 2),
                    color:  Styles.appPrimaryLightColor,
                    child: ref.watch(positionProvider).when(data: (data){
                      if(data == null){
                        return const Text("None", style: TextStyle(color: Colors.white),);
                      }
                      return Text("${roundUpAbsolute(Geolocator.distanceBetween(data.latitude, data.longitude, widget.latitude, widget.longitude)/1000).toStringAsFixed(1)} Km",
                        style: Styles.heading4(context).copyWith(color: Colors.white),
                      );
                    },
                        error: (e,s){
                          return const Text("E", style: TextStyle(color: Colors.white),);

                        }, loading:(){
                          return Text(
                            "..",
                            style: Styles.heading3(context).copyWith(color: Colors.white),
                          );
                        })
                ),
              ),
              GestureDetector(
                  onTap: (){
                    context.go('/sales/drive-to-customer',
                        extra: {
                          "destination":LatLng(double.parse(widget.customer.latitude!), double.parse(widget.customer.longitude!)),
                          "source":LatLng(double.parse(widget.customer.latitude!), double.parse(widget.customer.longitude!)),
                          "shopName": widget.customer.customerName
                        });

                  },
                  child: Icon(Icons.pin_drop_outlined, size: 24.sp, color: Styles.appPrimaryColor,)),
            ],
          )
      ),
      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.start,
      //   children: [
      //     Container(
      //       alignment: Alignment.center,
      //       decoration: BoxDecoration(
      //           color: color,
      //           borderRadius: BorderRadius.circular(10.sp)
      //       ),
      //
      //       height: 50.h,
      //       width: MediaQuery.of(context).size.width*0.15.sp,
      //       child: Text(nameIntial, style: Styles.heading2(context).copyWith(color: Colors.white)
      //       ),
      //     ),
      //     Container(
      //       margin: EdgeInsets.only(
      //         left: MediaQuery.of(context).size.width*0.03,
      //       ),
      //       child: Column(
      //         mainAxisAlignment: MainAxisAlignment.spaceAround,
      //         crossAxisAlignment: CrossAxisAlignment.start,
      //         children: [
      //           SizedBox(
      //             height: 13.h,
      //             child: FittedBox(
      //               fit: BoxFit.fitHeight,
      //               child: Text(
      //                   customer!.NameOfInstitutionOrIndividual!,
      //                   style: Styles.heading2(context)
      //               ),
      //             ),
      //           ),
      //           SizedBox(height: 5.h,),
      //           Text(
      //               customer!.Region!,
      //               style: Styles.smallGreyText(context)
      //           ),
      //
      //         ],
      //       ),
      //
      //     ),
      //
      //     SizedBox(width: MediaQuery.of(context).size.width * .2.sp,),
      //     Align(
      //       alignment: Alignment.centerRight,
      //       child: Row(
      //         children: [
      //           customer!.isDecisionMaker! == "false"?Icon(Icons.star, size: 16.sp, color: Styles.appGreenColor,):Container(),
      //           // customer!.requiresAction!?Icon(Icons.info_outline, size: 16.sp, color: Colors.redAccent,):Container(),
      //         ],
      //       ),
      //     ),
      //     converted?Text("Converted", style: Styles.heading3(context).copyWith(color: Styles.appPrimaryColor),):Align(
      //       alignment: Alignment.centerRight,
      //       child: Row(
      //         children: [
      //           offline ?Icon(Icons.warning_amber_rounded, color: Styles.appYellowColor, size: 15.sp,)
      //               : const SizedBox(),
      //           // customer!.requiresAction!?Icon(Icons.info_outline, size: 16.sp, color: Colors.redAccent,):Container(),
      //           GestureDetector(
      //               onTap: (){
      //                 print("clicked");
      //                 Navigator.of(context).push(
      //                     MaterialPageRoute(
      //                         builder: (context) =>
      //                             CustomerTrackingPage(
      //                               shopName: customer!.NameOfInstitutionOrIndividual!,
      //                               sourceLocation: LatLng(ref.watch(onLocationChangedProvider)!.latitude!, ref.watch(onLocationChangedProvider)!.longitude!),
      //                               destination: LatLng(double.parse(latlong![0]), double.parse(latlong[1])),
      //                             )));
      //                 // ref.watch(getLocationProvider).whenData((value) => );
      //
      //               },
      //               child: Icon(Icons.pin_drop_outlined, size: 26.sp, color:  Styles.appPrimaryColor,))
      //         ],
      //       ),
      //     ),
      //
      //   ],
      // ),
    );
  }
}
