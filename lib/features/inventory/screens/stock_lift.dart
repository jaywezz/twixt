
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/products_inventory_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/warehouse/warehouse_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/providers/inventory_provider.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/confirm_stock_lift_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/search_field.dart';
import 'package:nested_navigation_gorouter_example/services/go_router_config_service.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
Logger _log = Logger(printer: PrettyPrinter());

class StockLift extends ConsumerStatefulWidget {
  const StockLift({Key? key}) : super(key: key);

  @override
  ConsumerState<StockLift> createState() => _StockLiftState();
}

class _StockLiftState extends ConsumerState<StockLift>  with AutomaticKeepAliveClientMixin<StockLift> {
  late TabController _tabController;
  int initPosition = 0;
  List<String> options = [];
  final scaffoldKey = GlobalKey<ScaffoldState>();


  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }
  @override
  bool get wantKeepAlive => true;

  WarehouseModel? selectedWarehouse;

  @override
  Widget build(BuildContext context) {
    super.build(context);
    ScreenUtil.init(context);
    return Scaffold(
        key: scaffoldKey,
        body: Padding(
          padding:  EdgeInsets.only(bottom: 0),
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
                            onTap: (){
                              context.pop();
                            },
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text(
                            'StockLift',
                            style: Styles.heading2(context),
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 20,),
                    Text("Select stock lift warehouse", style: Styles.heading3(context).copyWith(color: Colors.black54),),
                    SizedBox(height: 10,),
                    ref.watch(warehousesProvider).when(
                        data: (data){
                          if(data.isEmpty){
                            return Center(child: Text("No warehouses added", style: Styles.heading3(context).copyWith(color: Colors.black38),));
                          }else{
                            // selectedWarehouse = data[1];
                            return DecoratedBox(
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
                            );
                          }
                        },
                        error: (error, s){
                          return const Text("An error occurred getting warehouses");
                        }, loading: (){
                      return Center(child: SizedBox(height:20, width:20,child: CircularProgressIndicator(strokeWidth: 2,color: Styles.appSecondaryColor,)));
                    }),


                    SizedBox(height: 20.h,),
                    LargeSearchField(
                      textEditingController: searchController,
                      hintText: 'Search By Product Name',
                      outline: true,
                      onTapClose: (){},
                      onChanged: (value){
                        setState(() {
                        });
                      },
                    ),

                  selectedWarehouse==null?Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(child: Text("Select a warehouse", style: Styles.heading3(context).copyWith(color: Colors.black54),)),
                  ):ref.watch(productsProvider).when(
                        data: (data){
                          if(searchController.text != ""){
                            data = data.where((element) => element.productName!.toLowerCase().contains(searchController.text.toLowerCase())).toList();
                          }
                          if(data.isEmpty){
                            return Center(child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text("No products in selected warehouse",
                                style: Styles.heading3(context).copyWith(color: Colors.black54),),
                            ));
                          }
                          return Expanded(
                            child: ListView.builder(
                              // key: PageStorageKey(category.id),
                                physics: AlwaysScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: data.length,
                                itemBuilder: (builder, index){

                                  return  StockLiftItem(productsModel: data[index]);
                                }),
                          );
                        }, error: (error, stackTrace) {
                      print(stackTrace);
                      return Text(error.toString(), style: Styles.heading3(context).copyWith(color: Colors.red),);
                    },
                        loading: (){
                          return const Center(child: AnimatedCircularProgressIndicator());
                        })
                  ],
                ),
              )),
        ),
        bottomNavigationBar: Container(
          height: defaultPadding(context) * 7,
          padding: EdgeInsets.only(
              left: defaultPadding(context),
              right: defaultPadding(context),
              bottom: defaultPadding(context)),
          child: SingleChildScrollView(
            child: Column(children: [FullWidthButton(
              btnheight: 50,
              action: () {
                if(ref.watch(orderCartData).isEmpty){
                  showCustomSnackBar("Empty cart", isError: true);
                }
                else if(selectedWarehouse == null){
                  showCustomSnackBar("Select a warehouse", bgColor: Colors.blue);
                }else{
                  print("go");
                  try{
                    context.goNamed(AppRoutes.confirmStockLift.name, extra: {"warehouse": selectedWarehouse!});
                  }catch(e,s){
                    print(s);
                  }
                }
              },
              text: "Confirm StockLift",
            ),
              InkWell(
                onTap: () {
                  // addToCartController.lstCartData.clear();
                },
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "Cancel",
                      style: Styles.heading3(context),
                    ),
                  ),
                ),
              )
            ]),
          ),
        )
    );
  }
}

// //Implementation

class StockLiftItem extends ConsumerStatefulWidget {
  final ProductsModel productsModel;
  const StockLiftItem({Key? key, required this.productsModel}) : super(key: key);

  @override
  ConsumerState<StockLiftItem> createState() => _StockLiftItemState();
}

class _StockLiftItemState extends ConsumerState<StockLiftItem> {
  TextEditingController controller = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width *.5,
            child: Text(
                widget.productsModel
                    .productName
                    .toString(),
                style: Styles.normalText(context)),
          ),
          Row(
            children: [

              SizedBox(
                width: 50,
                height: 30,
                child: TextFormField(
                  controller: controller,
                  onChanged: (String value){
                    final data = ref.watch(orderCartData);
                    if(int.parse(value) > 0){
                      if(data.map((item) => item.id).contains(widget.productsModel.id)){
                        int index = data.indexWhere((element) => element.id == widget.productsModel.id);
                        data[index].qty = int.parse(value);
                      }else{
                        print("false");
                        widget.productsModel.qty = int.parse(value);
                        data.add(widget.productsModel);
                      }
                    }
                  },
                  textAlign: TextAlign.center,
                  cursorHeight: 15,
                  cursorColor: Styles.appPrimaryColor,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 2,
                      horizontal: 1,
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Styles.appPrimaryColor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                          color: Styles
                              .appPrimaryColor),
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}


