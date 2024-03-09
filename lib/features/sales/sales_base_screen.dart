
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nested_navigation_gorouter_example/features/sales/cold_customers/cold_customers_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/provider/leads_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/leads/screens/leads_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/screens/prospects_screen.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/screens/retail_prospect.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/inputs/search_field.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/pill_button.dart';
import 'package:upgrader/upgrader.dart';

final searchController = StateProvider<TextEditingController>((ref) => TextEditingController());
final currentIndexProvider = StateProvider<int>((ref) => 0);

class SalesBaseScreen extends ConsumerStatefulWidget {
  static const route_name = "sales_screen";
  const SalesBaseScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<SalesBaseScreen> createState() => _SalesBaseScreenState();
}

class _SalesBaseScreenState extends ConsumerState<SalesBaseScreen> with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late TabController _tabController;
  // int currentIndex = 0;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener((() {
      setState(() {
        ref.watch(currentIndexProvider.state).state = _tabController.index;
      });
    }));

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return WillPopScope(
      onWillPop: ()async {
        // Navigator.pushNamed(context, BaseScreen.route_name);
        return true;
      },
      child: UpgradeAlert(
        upgrader: Upgrader(
            showIgnore: false,
            showLater: false,
            durationUntilAlertAgain: const Duration(minutes: 1),
            dialogStyle: UpgradeDialogStyle.cupertino),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: double.infinity,
          decoration:  const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/bg.png',
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: LargeSearchField(
                    textEditingController: ref.watch(searchController),
                    onChanged: (value){
                      if(ref.watch(currentIndexProvider) == 0){
                        print("refresh leads");
                        ref.refresh(leadsProvider);
                      }
                      if(ref.watch(currentIndexProvider) == 1 || ref.watch(currentIndexProvider) == 2){
                        ref.refresh(prospectsProvider);
                      }
                      // if(ref.watch(currentIndexProvider) == 2){
                      //   ref.refresh(prospectsProvider);
                      // }
                    },
                    onTapClose: (){
                      setState(() {
                        ref.watch(searchController).text = "";
                      });
                    }),
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 3.0.w),
                child: SizedBox(
                  height: ScreenUtil.defaultSize.height,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      SizedBox(
                        height: 35.h,
                        child: ListView(
                          shrinkWrap: true,
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          children: [
                            PillButton(
                                selected: ref.watch(currentIndexProvider) == 0 ? true : false,
                                action: () {
                                  ref.watch(searchController).text = "";
                                  setState(() {
                                    _tabController.animateTo(0);
                                  });
                                },
                                text: "Leads"),
                            SizedBox(
                              width: 5.w,
                            ),
                            PillButton(
                                selected: ref.watch(currentIndexProvider) == 1 ? true : false,
                                action: () {
                                  ref.watch(searchController).text = "";
                                  setState(() {
                                    _tabController.animateTo(1);
                                  });
                                },
                                text: "Negotiation"),
                            SizedBox(
                              width: 5.w,
                            ),
                            PillButton(
                                selected: ref.watch(currentIndexProvider) == 2 ? true : false,
                                action: () {
                                  ref.watch(searchController).text = "";
                                  setState(() {
                                    _tabController.animateTo(2);
                                  });
                                },
                                text: "Won Customers"),
                            SizedBox(
                              width: 5.w,
                            ),
                            PillButton(
                                selected:ref.watch(currentIndexProvider) == 3 ? true : false,
                                action: () {
                                  ref.watch(searchController).text = "";
                                  setState(() {
                                    _tabController.animateTo(3);
                                  });
                                },
                                text: "Cold Customers"),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Expanded(
                        child: TabBarView(controller: _tabController, children: const [
                          LeadsScreens(),
                          ProspectsScreen(),
                          RetailProspectsScreen(),
                          ColdCustomersScreen()
                        ]),
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
