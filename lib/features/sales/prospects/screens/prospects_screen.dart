import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/screens/leads_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/repository/prospects_repo.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/screens/prospect_details_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/widgets/prospects_card.dart';
import 'package:nested_navigation_gorouter_example/features/sales/sales_base_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/search_field.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/services/location_service.dart';
import 'package:nested_navigation_gorouter_example/utils/app_utils.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class ProspectsScreen extends ConsumerStatefulWidget {
  const ProspectsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ProspectsScreen> createState() => _ProspectsScreenState();
}

class _ProspectsScreenState extends ConsumerState<ProspectsScreen> {
  @override
  Widget build(BuildContext context) {
    return ref.watch(positionProvider).when(data: (location){
      return  Column(
        children: [
          ref.watch(prospectsProvider).when(
              data: (data){
                if(ref.watch(searchController).text != ""){
                  data = data.where((element) => element.customerName!.toLowerCase().contains(ref.watch(searchController).text.toLowerCase())).toList();
                }
                if(data.isEmpty){
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("No negotiations", style: Styles.heading3(context).copyWith(color: Colors.black54),),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
                          child: FullWidthButton(
                              width: MediaQuery.of(context).size.width * .3,
                              btnheight: 35,
                              text: "Refresh",
                              action: ()async{
                                ref.read(isRefreshProvider.state).state = true;

                                ref.refresh(prospectsProvider);
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
                        return ref.watch(prospectsRepositoryProvider).getNegotiations(true);
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
                                onTap: (){
                                  context.goNamed(ProspectsPage.routeName,
                                      extra: {"isRetail":false,"isCheckedIn":false, "prospect":data[index]});
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
    },
        error: (e,s){
          return Text("Ensure location service is enable", style: Styles.heading3(context).copyWith(color: Colors.black54),);
        }, loading: (){
      return const Center(child: AnimatedCircularProgressIndicator(),);
    });
  }
}
