import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:logger/logger.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/products_inventory_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/providers/inventory_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/models/leads_model/leads_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_snackbar.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/search_field.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';


Logger _log = Logger(printer: PrettyPrinter());

class CreateOrderScreen extends ConsumerStatefulWidget {
  final String customerName;
  final String customerId;
  final bool orderOnly;
  final String customerGroup;
  const CreateOrderScreen({Key? key, required this.customerName, required this.customerGroup,  required this.customerId, required this.orderOnly }) : super(key: key);

  @override
  ConsumerState<CreateOrderScreen> createState() => _CreateOrderScreenState();
}

class _CreateOrderScreenState extends ConsumerState<CreateOrderScreen> {

  final scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  void initState() {
    super.initState();
  }

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
        resizeToAvoidBottomInset: true,
        // key: scaffoldKey,
        body: Container(
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
            child: SingleChildScrollView(
              child: SafeArea(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: defaultPadding(context),
                    ),

                    SizedBox(
                      height: defaultPadding(context),
                    ),
                    Stack(
                      children: [
                        Material(
                          child: InkWell(
                            splashColor: Theme.of(context).splashColor,
                            onTap: () => context.pop(),
                            child: const Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.black54,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Text("${widget.customerName} Order",
                            style: Styles.heading2(context),
                          ),
                        ),
                        // Align(
                        //   alignment: Alignment.topRight,
                        //   child: Material(
                        //     child: InkWell(
                        //       splashColor: Theme.of(context).splashColor,
                        //       onTap: () => Get.offNamed(RouteHelper.getInitial()),
                        //       child: Icon(
                        //         Icons.home_sharp,
                        //         size: defaultPadding(context) * 2,
                        //         color: Styles.appSecondaryColor,
                        //       ),
                        //     ),
                        //   ),
                        // ),
                      ],
                    ),
                    SizedBox(
                      height: defaultPadding(context),
                    ),
                    LargeSearchField(
                        textEditingController: searchController,
                        onChanged: (value){
                          setState(() {
                            searchController.text = value;
                          });
                        },
                        onTapClose: (){
                          setState(() {
                            searchController.clear();
                          });
                        }),
                    SizedBox(
                      height: defaultPadding(context),
                    ),
                    Text(
                      'Create Order',
                      style: Styles.heading3(context),
                    ),
                    SizedBox(
                      height: defaultPadding(context),
                    ),
                    // Padding(
                    //   padding: EdgeInsets.symmetric(
                    //       horizontal: defaultPadding(context)),
                    //   child: LargeSearchField(
                    //     controller: ref.watch(searchValueProvider),
                    //     hintText: 'Search By Product Name',
                    //     outline: true,
                    //     onChanged: (value){
                    //       print("the new value is: ${ref.watch(searchValueProvider)}");
                    //       ref.refresh(filteredProductsProvider);
                    //     },
                    //   ),
                    // ),

                   Column(
                     children: [
                       ref.watch(productsProvider).when(
                           data: (data){
                             data = data.where((element) => element.productName!.toLowerCase()
                                 .contains(searchController.text.toLowerCase())).toList();
                             return ListView.builder(
                               // key: PageStorageKey(category.id),
                                 physics: const NeverScrollableScrollPhysics(),
                                 shrinkWrap: true,
                                 itemCount: data.length,
                                 itemBuilder: (builder, index){

                                   return  Padding(
                                     padding: const EdgeInsets.symmetric(
                                       vertical: 8,
                                     ),
                                     child: Row(
                                       mainAxisAlignment:
                                       MainAxisAlignment.spaceBetween,
                                       children: [
                                         SizedBox(
                                           width: MediaQuery.of(context).size.width *.45,
                                           child: Text(
                                               data[index]
                                                   .productName
                                                   .toString(),
                                               style: Styles.normalText(context)),
                                         ),
                                         // Text(
                                         //     data[index].price.toString(),
                                         //     style:
                                         //     Styles.heading4(context)),
                                         CartInputField(product: data[index]),

                                       ],
                                     ),
                                   );
                                 });
                           }, error: (error, stackTrace) => Text(error.toString(), style: Styles.heading3(context).copyWith(color: Colors.red),),
                           loading: (){
                             return const Center(child: CircularProgressIndicator(),);
                           }),
                     ],
                   )
                  ],
                ),
              ),
            )),
        bottomNavigationBar: Container(
          height: defaultPadding(context) * 7,
          padding: EdgeInsets.only(
              left: defaultPadding(context),
              right: defaultPadding(context),
              bottom: defaultPadding(context)),
          child: ref.watch(prospectsNotifier) is AsyncLoading<void>?const Center(child: AnimatedCircularProgressIndicator()):Column(
              children: [FullWidthButton(
                btnheight: 50,
            action: ()async {
              if(ref.watch(orderCartData).isEmpty){
                showCustomSnackBar("Empty cart", isError: true);
              }else{
                await ref.watch(prospectsNotifier.notifier).createNegotiation(context, ref.watch(orderCartData));

              }
            },
            text:"Create Customer",
          ),
            InkWell(
              onTap: () {
                // addToCartController.lstCartData.clear();
                context.pop();
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
        )
    );
  }
}

class CartInputField extends ConsumerStatefulWidget {
  final ProductsModel product;
  const CartInputField({Key? key, required this.product}) : super(key: key);

  @override
  ConsumerState<CartInputField> createState() => _CartInputFieldState();
}

class _CartInputFieldState extends ConsumerState<CartInputField> {
  TextEditingController controller = TextEditingController();
  // AddToCartController addCartController = Get.find<AddToCartController>();
  @override
  void initState() {
    // TODO: implement initState
    // controller.text = addCartController.cartList.where((element) => element.productMo!.productId == widget.product.productId).first.qty.toString();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 40,
      child: TextFormField(
        controller: controller,
        onChanged: (String value){
          final data = ref.watch(orderCartData);
          if(int.parse(value) > 0){
            if(data.map((item) => item.id).contains(widget.product.id)){
              int index = data.indexWhere((element) => element.id == widget.product.id);
              data[index].price = value;
            }else{
              widget.product.price = value;
              data.add(widget.product);
            }
          }
        },
        textAlign: TextAlign.center,
        cursorHeight: 15,
        cursorColor: Styles.appSecondaryColor,
        decoration: InputDecoration(
          contentPadding:
          const EdgeInsets.symmetric(
            vertical: 2,
            horizontal: 1,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
                color: Styles.appSecondaryColor),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Styles.appPrimaryColor),
          ),
        ),
        keyboardType: TextInputType.number,
      ),
    );
  }
}


