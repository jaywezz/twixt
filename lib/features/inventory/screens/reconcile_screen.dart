
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/warehouse/warehouse_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/providers/inventory_provider.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/widget/quantity_small_input.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

Logger _log = Logger(printer: PrettyPrinter());

class ReconcileItems extends ConsumerStatefulWidget {
  const ReconcileItems({Key? key}) : super(key: key);

  @override
  ConsumerState<ReconcileItems> createState() => _ReconcileItemsState();
}

class _ReconcileItemsState extends ConsumerState<ReconcileItems>{
  late TabController _tabController;
  int initPosition = 0;
  List<String> options = [];
  final scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController searchController = TextEditingController();
  WarehouseModel? selectedWarehouse;



  @override
  void initState() {
    ref.read(allocationsProvider).whenData((value){
      print("adding allocations data:$value");
      ref.read(allocationsCart).addAll(value);
    });
    super.initState();
  }

  String stockView = "current_stock";




  @override
  Widget build(BuildContext context) {
    // _log.e(Get.find<ProductCategoryController>().productCategoryList.length);
    // _log.e(Get.find<ProductController>().productList.length);
    // _log.e("Length of categories" + options.length.toString());
    return Scaffold(
      // backgroundColor: Colors.transparent,
      key: scaffoldKey,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Container(
            height: double.infinity,
            width: double.infinity,
            padding: EdgeInsets.only(
                left: defaultPadding(context),
                right: defaultPadding(context),
                bottom: defaultPadding(context)),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(30))),
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: defaultPadding(context),
                  ),
                  Stack(
                    children: [
                      Material(
                        child: InkWell(
                          splashColor: Theme.of(context).splashColor,
                          onTap: () {

                          },
                          child: const Icon(
                            Icons.arrow_back_ios_new,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Reconcile',
                          style: Styles.heading2(context),
                        ),
                      ),

                    ],
                  ),
                  SizedBox(
                    height: defaultPadding(context),
                  ),
                  // Text(
                  //   'Stock Lift',
                  //   style: Styles.heading2(context),
                  // ),
                  SizedBox(
                    height: defaultPadding(context),
                  ),
                  ref.watch(warehousesProvider).when(
                      data: (data){
                        if(data.isEmpty){
                          return Center(child: Text("No warehouses added", style: Styles.heading3(context).copyWith(color: Colors.black38),));
                        }else{
                          print("warehouses: ${data.length}");
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 10 ),
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                color:Colors.white, //background color of dropdown button
                                border: Border.all(color: Styles.appPrimaryColor), //border of dropdown button
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: DropdownButtonFormField(
                                isExpanded: true,
                                decoration: const InputDecoration(
                                  disabledBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                ),
                                hint: Row(
                                  children: [

                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                      child: Container(
                                        child: Icon(Icons.arrow_drop_down),
                                      ),
                                    ),
                                  ],
                                ), // Not necessary for Option 1
                                style: Styles.heading3(context),
                                value: selectedWarehouse,
                                onChanged: (WarehouseModel? newValue)async {
                                  print("changed: ${newValue!.name}");
                                  print(newValue);
                                  selectedWarehouse = newValue;
                                  setState(() {});
                                },
                                items: data.map((distributor) {
                                  return DropdownMenuItem(
                                    value: distributor,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                                      child: new Text(distributor.name!),
                                    ),
                                  );
                                }).toList(),
                                icon: const Padding( //Icon at tail, arrow bottom is default icon
                                    padding: EdgeInsets.symmetric(horizontal: 15.0),
                                    child:Icon(Icons.keyboard_arrow_down)
                                ),
                              ),
                            ),
                          );
                        }
                      },
                      error: (error, s){
                        return Text("An error occurred getting warehouses", style: Styles.heading3(context).copyWith(color: Colors.red),);
                      }, loading: (){
                    return Center(child: AnimatedCircularProgressIndicator());
                  }),

                  SizedBox(height: defaultPadding(context),),
                  ref.watch(allocationsProvider).when(data: (data){
                    if(data.isEmpty){
                      return Center(
                          child: Text("No current products to reconcile", style: Styles.heading3(context).copyWith(color: Colors.black54),));
                    }else{
                      return Expanded(
                        child: ListView.builder(
                            physics: BouncingScrollPhysics(),
                            itemCount: data.length,
                            itemBuilder: (_, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: defaultPadding(context), vertical: 4 ),
                                child: Row(
                                  mainAxisAlignment:
                                  MainAxisAlignment.spaceBetween,
                                  children: [
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *.4,
                                      child: Text(
                                          data[index].productName.toString(),
                                          style: Styles.heading4(context)),
                                    ),
                                    // Text(
                                    //     stockHistoryController.lstLatestAllocations[index]
                                    //         .skuCode
                                    //         .toString(),
                                    //     style:
                                    //     Styles.heading4(context)),
                                    Row(
                                      children: [
                                        Container(
                                            width: 50,
                                            height: 25,
                                            child: QuantitySmallInput(
                                              allocation: data[index],
                                            )
                                        ),
                                        SizedBox(width: 10,),
                                        Text(
                                            "Out of ${data[index].currentStock.toString()}",
                                            style: Styles.heading4(context).copyWith(color: Styles.appPrimaryColor)),
                                      ],
                                    )
                                  ],
                                ),
                              );
                            }),
                      );
                    }
                  }, error: (e,s){
                    return Text("An error occurred getting allocations", style: Styles.heading3(context).copyWith(color: Colors.red),);
                  }, loading: (){
                    return const Center(child: AnimatedCircularProgressIndicator(),);
                  })

                ],
              ),
            )),
      ),
      bottomNavigationBar: Container(
        height: defaultPadding(context) * 7,
        padding: EdgeInsets.only(
            top: defaultPadding(context) * .7,
            left: defaultPadding(context) * 1.5,
            right: defaultPadding(context) * 1.5,
            bottom: defaultPadding(context)) *1.5,
        child: Column(
            children: [
              const SizedBox(height: 10,),
              ref.watch(inventoryNotifier) is AsyncLoading<void>?const Center(child: AnimatedCircularProgressIndicator())
                  :FullWidthButton(
                    btnheight: 50,
                    action: () async{
                      // addToCartController.addToCart();
                      if(selectedWarehouse == null){
                        showCustomSnackBar("Select a warehouse", bgColor: Colors.blue);
                      }else{
                        if(ref.watch(allocationsCart).isEmpty){
                          showSnackBar(text: "No products adedd for reconcile", bgColor: Colors.blue);
                        }else{
                          await ref.read(inventoryNotifier.notifier).reconcile(selectedWarehouse!.warehouseCode!);
                        }
                      }
                    },
                    text: "Reconcile",
                  ),
            ]),
      )

    );
  }
}
