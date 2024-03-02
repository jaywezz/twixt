import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/reconcile_screen.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/stock_lift.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/view_stock.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/responsive.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class InventoryScreen extends StatelessWidget {
  const InventoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Map> myInventoryItems = [
      {'icon': Icons.download, 'name': 'Receive Stock'},
      {'icon': Icons.note_alt, 'name': 'Stock History'},
      {'icon': Icons.check_box_rounded, 'name': 'View My Stock'},
      //{'icon': Icons.local_shipping_rounded, 'name': 'Shipments'},
      // {'icon': Icons.shopping_cart, 'name': 'Stock Lift'},
      {'icon': Icons.shopping_cart, 'name': 'Stock Requisition'},
      {'icon': Icons.restart_alt_outlined, 'name': 'Reconcile'},
    ];
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
                    image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover),
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(30))),
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
                        'Inventory Management',
                        style: Styles.heading2(context),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: defaultPadding(context),
                ),

                Expanded(
                    child: Center(
                      child: Padding(
                        padding:
                        EdgeInsets.only(bottom: defaultPadding(context) * 3),
                        child: GridView.builder(
                            physics: NeverScrollableScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: choices.length,
                            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 200,
                              childAspectRatio: Responsive.isTablet(context)
                                  ? ((((MediaQuery.of(context).size.width -
                                  (defaultPadding(context) * 1.2)) /
                                  2) -
                                  5) /
                                  200)
                                  : ((((MediaQuery.of(context).size.width -
                                  (defaultPadding(context) * 1.4)) /
                                  1.3)) /
                                  220),
                              crossAxisSpacing: 0,
                            ),
                            itemBuilder: (context, index) {
                              return GridCard(
                                choice: choices[index],
                              );
                            }),
                      ),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class GridData {
  final String title;
  final IconData icon;
  String route;

  GridData({required this.title, required this.icon, required this.route});
}

List<GridData> choices = [
  // GridData(
  //   title: 'Receives Stock',
  //   icon: Icons.download,
  //   onpressed: ReceiveStock(),
  // ),
  // GridData(
  //   title: 'Stock History',
  //   icon: Icons.note_alt,
  //   onpressed: StockHistory(),
  // ),
  GridData(
    title: 'View My Stock',
    icon: Icons.check_box,
    route: "view-stock",
  ),
  // GridData(
  //   title: 'Shipments',
  //   icon: Icons.local_shipping,
  //   onpressed: ShipmentsPage(),
  // ),
  GridData(
    title: 'Stock Lift',
    icon: Icons.shopping_cart,
    route: "stock-lift",
  ),
  // GridData(
  //   title: 'Stock Requisition',
  //   icon: Icons.add_shopping_cart,
  //   route: "view-stock",
  // ),
  GridData(
    title: 'Reconcile',
    icon: Icons.restart_alt,
    route: "reconcile",
  ),
];

class GridCard extends StatelessWidget {
  const GridCard({Key? key, this.choice}) : super(key: key);
  final GridData? choice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          print("pressed");
          context.go("/dashBoard/inventory/${choice!.route}");
        },
        child: Card(
          color: Styles.appPrimaryColor,
          child: Center(
            child: Padding(
              padding: EdgeInsets.all( Responsive.isTablet(context)?13:defaultPadding(context)),
              child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Icon(
                          choice!.icon,
                          color: Colors.white,
                          size: defaultPadding(context) * 4,
                        )),
                    SizedBox(
                      height: 2,
                    ),
                    Text(choice!.title,
                        style: Styles.heading3(context)
                            .copyWith(color: Colors.white)),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
