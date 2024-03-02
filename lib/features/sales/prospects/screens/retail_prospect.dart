import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/screens/leads_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/repository/prospects_repo.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/widgets/prospects_card.dart';
import 'package:nested_navigation_gorouter_example/features/sales/sales_base_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/search_field.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/services/location_service.dart';
import 'package:nested_navigation_gorouter_example/utils/app_utils.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

import 'won_customer_details.dart';

class RetailProspectsScreen extends ConsumerStatefulWidget {
  const RetailProspectsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<RetailProspectsScreen> createState() => _RetailProspectsScreenState();
}

class _RetailProspectsScreenState extends ConsumerState<RetailProspectsScreen> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(positionProvider).when(data: (location){
      return  Column(
        children: [
          ref.watch(wonCustomerProvider).when(
              data: (data){
                data = data.where((element) => element.customerGroupId != 3).toList();
                if(ref.watch(searchController).text != ""){
                  data = data.where((element) => element.customerName!.toLowerCase().contains(ref.watch(searchController).text.toLowerCase())).toList();
                }
                if(data.isEmpty){
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("No won customers", style: Styles.heading3(context).copyWith(color: Colors.black54),),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
                          child: FullWidthButton(
                              width: MediaQuery.of(context).size.width * .3,
                              btnheight: 35,
                              text: "Refresh",
                              action: ()async{
                                print("refreshing: ");
                                ref.read(isRefreshProvider.state).state = true;
                                await ref.watch(prospectsRepositoryProvider).getWon(true);
                              }),
                        )
                      ],
                    ),
                  );
                }
                data.sort((a, b) {
                  double distanceA = calculateDistance(location!.latitude, location.longitude, double.parse(a.latitude!), double.parse(a.longitude!));
                  double distanceB = calculateDistance(location.latitude, location.longitude, double.parse(b.latitude!), double.parse(b.longitude!));
                  return distanceA.compareTo(distanceB);
                });

                return SizedBox(
                    height: MediaQuery.of(context).size.height - 250.sp,
                    child: RefreshIndicator(
                      onRefresh: (){
                        print("refreshing: ");
                        ref.read(isRefreshProvider.state).state = true;
                        return ref.watch(prospectsRepositoryProvider).getWon(true);
                      },
                      child: ListView.builder(
                          padding: EdgeInsets.zero,
                          physics: const AlwaysScrollableScrollPhysics(),
                          itemCount: data.length,
                          itemBuilder: (BuildContext ctx, int index){
                            double distance = calculateDistance(location!.latitude, location.longitude, double.parse(data[index].latitude!), double.parse(data[index].longitude!));
                            return Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height*0.01,
                                left: MediaQuery.of(context).size.width*0.04,
                                right: MediaQuery.of(context).size.width*0.04,
                              ),
                              child: GestureDetector(
                                onTap: ()async{
                                  context.goNamed(WonCustomerDetails.routeName,
                                      extra: {"isRetail":true,"isCheckedIn":false, "prospect":data[index]});
                                  // if(distance<0.5){
                                  //   setState(() {
                                  //     // isLoading = true;
                                  //   });
                                  //   await ref.watch(leadsNotifier.notifier).customerCheckIn(context, data[index]);
                                  //   ref.read(leadsNotifier.notifier).startTimer();
                                  //   if(!mounted) return;
                                  //   context.go("/sales/details", extra: {"isRetail":true,"isCheckedIn":true, "prospect":data[index]});
                                  //   setState(() {
                                  //     // isLoading = false;
                                  //   });
                                  // }else{
                                  //   context.go("/sales/details", extra: {"isRetail":true,"isCheckedIn":false, "prospect":data[index]});
                                  // }
                                },
                                child: ProspectsDetailsCard(
                                  distance: distance,
                                  latitude: double.parse(data[index].latitude!),
                                  longitude: double.parse(data[index].longitude!),
                                  color: distance < 0.5?Styles.appGreenColor:Colors.grey,
                                  customer: data[index],
                                ),
                              ),
                            );
                          }
                      ),
                    )
                );
              },
              error: (e,s){
                return Center(
                  child: Text(e.toString(),
                    style: Styles.heading3(context).copyWith(color: Colors.redAccent),),
                );
              }, loading: (){
            return AnimatedCircularProgressIndicator();
          })

        ],
      );
    }, error: (e,s){
      return Text("Ensure location services are enable", style: Styles.heading3(context).copyWith(color: Colors.black54),);
    }, loading: (){
      return Center(child: AnimatedCircularProgressIndicator(),);
    });
  }
}
