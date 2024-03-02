import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/screens/leads_detail_card.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/repository/leads_repo.dart';
import 'package:nested_navigation_gorouter_example/features/sales/sales_base_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/search_field.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/services/location_service.dart';
import 'package:nested_navigation_gorouter_example/utils/app_utils.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class LeadsScreens extends ConsumerStatefulWidget {
  const LeadsScreens({Key? key}) : super(key: key);

  @override
  ConsumerState<LeadsScreens> createState() => _LeadsScreensState();
}

class _LeadsScreensState extends ConsumerState<LeadsScreens> {
  TextEditingController regionController = TextEditingController();
  final ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return ref.watch(positionProvider).when(data: (location){
      return Column(
        children: [
          ref.watch(leadsProvider).when(
              data: (data){
                print("search: ${ref.watch(searchController).text}");
                if(data.isEmpty){
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("No leads", style: Styles.heading3(context).copyWith(color: Colors.black54),),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
                          child: FullWidthButton(
                              width: MediaQuery.of(context).size.width * .3,
                              btnheight: 35,
                              text: "Refresh",
                              action: ()async{
                                ref.watch(isRefreshProvider.state).state = true;
                                ref.refresh(leadsProvider);
                              }),
                        )
                      ],
                    ),
                  );
                }
                List<LeadsModel> sortedList = [];
                sortedList.addAll(data);
                data.sort((a, b) {
                  double distanceA = calculateDistance(location!.latitude, location.longitude, double.parse(a.latitude!), double.parse(a.longitude!));
                  double distanceB = calculateDistance(location.latitude, location.longitude, double.parse(b.latitude!), double.parse(b.longitude!));
                  return distanceA.compareTo(distanceB);
                });
                return SizedBox(
                    height: MediaQuery.of(context).size.height *.8,
                    child: RefreshIndicator(
                      onRefresh: ()async{
                        ref.watch(isRefreshProvider.state).state = true;
                        ref.watch(leadsRepositoryProvider).getLeads(true);

                        return await ref.refresh(leadsProvider);
                      },
                      child: ListView.builder(
                          controller: _scrollController,
                          physics: const AlwaysScrollableScrollPhysics(),
                          padding: EdgeInsets.zero,
                          itemCount: data.length,
                          itemBuilder: (BuildContext ctx, int index) {
                            print("${data[index].latitude } ${data[index].longitude}");
                            double distance = calculateDistance(location!.latitude, location.longitude, double.parse(data[index].latitude!), double.parse(data[index].longitude!));
                            return Container(
                              margin: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height *
                                    0.01,
                                left: MediaQuery.of(context).size.width *
                                    0.01,
                                right: MediaQuery.of(context).size.width * 0.01,
                              ),
                              child: LeadsDetailCard(
                                distance: distance,
                                lead: data[index],
                                color: distance < 0.5?const Color.fromARGB(248, 21, 175, 209):Colors.grey,
                                latitude: double.parse(data[index].latitude!),
                                longitude: double.parse(data[index].longitude!),
                              ),
                            );
                          }),
                    ));
              },
              error: (error,s){
                return Center(
                  child: Text(error.toString(),
                    style: Styles.heading3(context).copyWith(color: Colors.redAccent),),
                );
              }, loading: (){
            return AnimatedCircularProgressIndicator();
          }),
          SizedBox(
            height: 20.h,
          ),
        ],
      );
    },
        error: (e,s){
          return Center(
            child: Text(e.toString(),
              style: Styles.heading3(context).copyWith(color: Colors.black54), ),
          );
        }, loading: (){
      return const Center(child: AnimatedCircularProgressIndicator());
    });
  }
}

