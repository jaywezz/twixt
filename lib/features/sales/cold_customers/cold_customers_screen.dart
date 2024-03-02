import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/features/sales/cold_customers/providers/cold_customer_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/cold_customers/screens/widgets/cold_customer_card.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/screens/leads_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/repository/prospects_repo.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/widgets/prospects_card.dart';
import 'package:nested_navigation_gorouter_example/features/sales/sales_base_screen.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/search_field.dart';
import 'package:nested_navigation_gorouter_example/main.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class ColdCustomersScreen extends ConsumerStatefulWidget {
  const ColdCustomersScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ColdCustomersScreen> createState() => _ColdCustomersScreenState();
}

class _ColdCustomersScreenState extends ConsumerState<ColdCustomersScreen> {
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        ref.watch(coldCustomersProvider).when(
            data: (data){
              print("data${data.length}");
              if(ref.watch(searchController).text != ""){
                data = data.where((element) => element.customerName!.toLowerCase().contains(ref.watch(searchController).text.toLowerCase())).toList();
              }
              if(data.isEmpty){
                return Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("No cold customers", style: Styles.heading3(context).copyWith(color: Colors.black54),),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0),
                        child: FullWidthButton(
                            width: MediaQuery.of(context).size.width * .3,
                            btnheight: 35,
                            text: "Refresh",
                            action: ()async{
                              ref.read(isRefreshProvider.state).state = true;

                              ref.refresh(coldCustomersProvider);
                            }),
                      )
                    ],
                  ),
                );
              }

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
                          return Container(
                            margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height*0.01,
                              left: MediaQuery.of(context).size.width*0.04,
                              right: MediaQuery.of(context).size.width*0.04,
                            ),
                            child: GestureDetector(
                              onTap: (){
                                print("is retail customer is false");
                                context.go("/sales/cold-details", extra: {"customer":data[index]});
                              },
                              child: ColdCustomerCard(
                                latitude: double.parse(data[index].latitude!),
                                longitude: double.parse(data[index].longitude!),
                                color: Colors.grey,
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
  }
}
