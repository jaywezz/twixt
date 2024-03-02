import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/widget/product_list.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';
import '../../../utils/app_constants.dart';

class ProductCatalogueScreen extends ConsumerStatefulWidget {
  static const route = "product_catalogue";
  const ProductCatalogueScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ProductCatalogueScreen> createState() => _ProductCatalogueScreenState();
}

class _ProductCatalogueScreenState extends ConsumerState<ProductCatalogueScreen> {
  int initPosition = 0;
  List<String> options = ["Fast Movers", "Slow Movers"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,

          //color: Styles.appBackgroundColor,
          child: Container(
            padding: EdgeInsets.only(
                left: defaultPadding(context),
                right: defaultPadding(context),
                bottom: defaultPadding(context)),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg.png'), fit: BoxFit.cover),
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(30))),
            child: SingleChildScrollView(
              child: Column(
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
                            //Get.to(const DeliveryScreen());
                            Navigator.pop(context);
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
                          'Product Catalogue',
                          style: Styles.heading2(context),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: defaultPadding(context) * 1.3,
                  ),

                  const ProductListWidget()
                  // Expanded(
                  //     child: Stack(
                  //       children: [
                  //         CustomTabView(
                  //           initPosition: initPosition,
                  //           itemCount: options.length,
                  //           tabBuilder: (context, index) {
                  //             // _log.e("..Options length" +
                  //             //     options.length.toString());
                  //             return Tab(
                  //               child: Container(
                  //                 width: MediaQuery.of(context).size.width * .4,
                  //                 padding: EdgeInsets.symmetric(
                  //                   horizontal: 15,
                  //                 ),
                  //                 decoration: BoxDecoration(
                  //                     borderRadius:
                  //                     BorderRadius.circular(50),
                  //                     border: Border.all(
                  //                         color: Styles.appPrimaryColor,
                  //                         width: 1)),
                  //                 child: Align(
                  //                   alignment: Alignment.center,
                  //                   child: Text(options[index]),
                  //                 ),
                  //               ),
                  //             );
                  //           },
                  //           pageBuilder: (context, index) {
                  //             var text = options[index];
                  //
                  //             return ProductListWidget();
                  //           },
                  //           onPositionChange: (index) {
                  //             print("Current Position: $index");
                  //
                  //             initPosition = index;
                  //           },
                  //           onScroll: (position) =>
                  //               print("Current Position: $position"),
                  //           stub: Center(
                  //             child: CircularProgressIndicator(),
                  //           ),
                  //         ),
                  //
                  //       ],
                  //     ))


                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

