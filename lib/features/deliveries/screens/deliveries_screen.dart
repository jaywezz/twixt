import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:nested_navigation_gorouter_example/features/deliveries/models/delivery_model.dart';
import 'package:nested_navigation_gorouter_example/features/deliveries/providers/delivery_providers.dart';
import 'package:nested_navigation_gorouter_example/features/deliveries/screens/delivery_details.dart';
import 'package:nested_navigation_gorouter_example/features/deliveries/widgets/custom_pill_button.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/search_field.dart';
import 'package:nested_navigation_gorouter_example/utils/formatters/currency_formatter.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../utils/app_constants.dart';

final deliveryTypeProvider = StateProvider<DeliveryTypes>((ref) => DeliveryTypes.UnAccepted);

class DeliveryScreen extends ConsumerStatefulWidget {
  static const routeName = "delivery";
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends ConsumerState<DeliveryScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        padding: EdgeInsets.only(
            left: defaultPadding(context),
            right: defaultPadding(context),
            bottom: defaultPadding(context)),
        decoration:  const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                'assets/images/bg.png',
              ),
              fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            SizedBox(
              height: defaultPadding(context),
            ),
            LargeSearchField(
                textEditingController:searchController,
                onChanged: (value){
                  setState(() {
                  });
                },
                onTapClose: (){
                  setState(() {
                    searchController.text = "";
                  });
                }),
            SizedBox(height: 10,),
            Container(
              height: 30.h,
              decoration: BoxDecoration(
                  // color: Colors.white,
                  borderRadius: BorderRadius.circular(20.sp)
              ),
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomButton(
                    action: () {
                      ref.read(deliveryTypeProvider.state).state = DeliveryTypes.UnAccepted;
                    },
                    text: 'Unaccepted',
                    isSelected:  ref.watch(deliveryTypeProvider) == DeliveryTypes.UnAccepted,
                  ),
                  CustomButton(
                    action: () {
                      ref.read(deliveryTypeProvider.state).state = DeliveryTypes.Accepted;
                    },
                    text: 'Pending',
                    isSelected:  ref.watch(deliveryTypeProvider) == DeliveryTypes.Accepted,
                  ),
                  CustomButton(
                    action: () {
                      ref.read(deliveryTypeProvider.state).state = DeliveryTypes.Completed;
                    },
                    text: 'Completed',
                    isSelected:  ref.watch(deliveryTypeProvider) == DeliveryTypes.Completed,
                  ),

                  // CustomButton(
                  //   action: () {
                  //     ref.read(routesTypeProvider.state).state = ScheduleTypes.Routes;
                  //     ref.read(userRoutesNotifierProvider.notifier).filterUserRoutes();
                  //   },
                  //   text: 'Route',
                  //   isSelected: ref.watch(routesTypeProvider.state).state == ScheduleTypes.Routes,
                  // ),
                ],
              ),
            ),

            SizedBox(height: 10,),


            ref.watch(deliveriesProvider).when(data: (data){
              if(ref.read(deliveryTypeProvider.state).state == DeliveryTypes.UnAccepted){
                data = data.where((element) => element.acceptAllocation == AppConstants.pendingAcceptance).toList();

              }
              if(ref.read(deliveryTypeProvider.state).state == DeliveryTypes.Accepted){
                data = data.where((element) => element.acceptAllocation == AppConstants.accepted).toList();
              }
              if(ref.read(deliveryTypeProvider.state).state == DeliveryTypes.Completed){
                data = data.where((element) => element.deliveryStatus == AppConstants.completed).toList();
              }
              if(searchController.text != ""){
                data = data.where((element) => element.customer!.customerName!.toLowerCase().contains(searchController.text.toLowerCase())).toList();
              }
              if(data.isEmpty){
                return RefreshIndicator(
                  onRefresh: ()async{
                    ref.refresh(deliveriesProvider);
                  },
                  child: SingleChildScrollView(
                    physics: AlwaysScrollableScrollPhysics(),
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height*.6,
                      child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("No ${ref.read(deliveryTypeProvider).name} Deliveries", style: Styles.heading3(context).copyWith(color: Colors.black54)),
                        ),
                      ),
                    ),
                  ),
                );
              }
              return Expanded(
                  child: RefreshIndicator(
                    onRefresh: ()async{
                      return await ref.refresh(deliveriesProvider);
                    },
                    child: ListView.builder(
                        shrinkWrap: true,
                        itemCount:data.length,
                        padding: EdgeInsets.zero,
                        // mydeliveries.length,
                        itemBuilder: (context, index) {
                          print(data[index].deliveryStatus);

                          return GestureDetector(
                              onTap: () {
                                context.goNamed(DeliveryDetails.routeName, extra: {"delivery": data[index]});
                              },
                              child: Card(
                                elevation: 2,
                                shape: RoundedRectangleBorder(
                                    borderRadius:
                                    BorderRadius.circular(10)),
                                child: Container(
                                  padding: EdgeInsets.all(
                                      defaultPadding(context) *
                                          0.2),
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex: 5,
                                        child: Padding(
                                          padding:
                                          const EdgeInsets.only(left: 10),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            children: [
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text(data[index].customer!.customerName!, style: Styles.heading3(context),
                                              ),
                                              const SizedBox(height: 10,),
                                              Text(data[index].deliveryNote ?? "No info..", style: Styles.smallGreyText(context),
                                                maxLines: 3,
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Text("Delivery Date. ${DateFormat.yMd().format(data[index].deliveryDate??DateTime.now())}", style: Styles.heading3(context).copyWith(color: Colors.black54),
                                                maxLines: 3,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                      Flexible(
                                        flex: 2,
                                        child: Padding(padding: const EdgeInsets.only(left: 5),
                                          child: Column(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                    borderRadius: BorderRadius.all(Radius.circular(5.sp)),
                                                    color: data[index].deliveryStatus == DeliveryTypes.UnAccepted.name
                                                        ? Colors.redAccent.withOpacity(.3)
                                                        : data[index].deliveryStatus == DeliveryTypes.Accepted.name
                                                        ? Styles.appSecondaryColor.withOpacity(.3)
                                                        : data[index].deliveryStatus == AppConstants.completed
                                                        ? Colors.green
                                                        : Colors.grey.withOpacity(.3)),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(1.0),
                                                  child:  Text(
                                                    data[index].deliveryStatus!,
                                                    style: Styles.heading4(context)
                                                        .copyWith(color: data[index].deliveryStatus == AppConstants.completed?Colors.white:Colors.grey),
                                                  ),
                                                ),
                                              ),
                                              // const SizedBox(
                                              //   height: 30,
                                              // ),
                                              Row(
                                                children: [
                                                  IconButton(
                                                      onPressed: () {
                                                        context.go('/sales/drive-to-customer',
                                                            extra: {
                                                              "destination":LatLng(double.parse(data[index].customer!.latitude!), double.parse(data[index].customer!.longitude!)),
                                                              "source":LatLng(double.parse(data[index].customer!.latitude!), double.parse(data[index].customer!.longitude!)),
                                                              "shopName":data[index].customer!.customerName
                                                            });

                                                      },
                                                      icon: Icon(
                                                        Icons.directions_outlined,
                                                        size: 17,
                                                        color: Styles.appPrimaryColor,
                                                      )),
                                                  GestureDetector(
                                                      onTap: () async {
                                                        print("calling");
                                                        final Uri launchUri = Uri(
                                                          scheme: 'tel',
                                                          path: data[index].customer!.phoneNumber,
                                                        );
                                                        await launchUrl(launchUri);
                                                      },
                                                      child:Icon(
                                                        Icons.call,
                                                        size: 17,
                                                        color: Styles.appPrimaryColor,
                                                      )),
                                                ],
                                              ),

                                              // Text(
                                              //   DateFormat.yMMMEd().format( data[index].createdAt).toString(),
                                              //   style: Styles.heading4(context).copyWith(color: Colors.black),
                                              //   maxLines: 3,
                                              // )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                          );
                        }),
                  )
                // child: DeliveryList(),
              );
            }, error: (error, stackTrace) => Text("An error occurred, try again later", style: Styles.heading3(context),), loading: (){
              return const Center(child: AnimatedCircularProgressIndicator(),);
            })


            //========================================
          ],
        )
    );
  }
}




enum DeliveryTypes {Accepted, UnAccepted, Completed}

