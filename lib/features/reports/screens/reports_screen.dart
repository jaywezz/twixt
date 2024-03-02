import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nested_navigation_gorouter_example/features/reports/screens/widget/sales_graph_widget.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class ReportsScreen extends ConsumerStatefulWidget {
  static const route_name = "reports_screen";

  ReportsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends ConsumerState<ReportsScreen> {

  @override
  void initState() {
    // TODO: implement initState

    super.initState();
  }
  static const double barWidth = 35;
  static const shadowOpacity = 0.2;
  static const mainItems = <int, List<double>>{
    0: [0, 20],
    1: [0, 20],
    2: [0, 20],
    3: [0, 20],
    4: [0, 20],
    5: [0, 20],
  };
  int touchedIndex = -1;
  Widget bottomTitles(double value, TitleMeta meta) {
    var style =  Styles.normalText(context).copyWith(color: Colors.black38, fontSize: 12, fontWeight: FontWeight.w600);;
    String text;
    switch (value.toInt()) {
      case 0:
        text = 'Mon';
        break;
      case 1:
        text = 'Tue';
        break;
      case 2:
        text = 'Wed';
        break;
      case 3:
        text = 'Thu';
        break;
      case 4:
        text = 'Fri';
        break;
      case 5:
        text = 'Sat';
        break;
      default:
        text = '';
        break;
    }
    return SideTitleWidget(
      child: Text(text, style: style),
      axisSide: meta.axisSide,
    );
  }



  Widget leftTitles(double value, TitleMeta meta) {
    var style = Styles.normalText(context).copyWith(color: Colors.black38, fontSize: 12, fontWeight: FontWeight.w600);
    String text;
    if (value == 0) {
      text = '1';
    } else {
      text = '${value.toInt()}';
    }
    return SideTitleWidget(
      angle: 0,
      axisSide: meta.axisSide,
      space: 4.0,
      child: Text(
        (double.parse(text) * 0.01).toString(),
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }



  BarChartGroupData generateGroup(
      int x,
      double value1,
      double value2,
      ) {
    bool isTop = value1 > 0;
    final sum = value1 + value2;
    final isTouched = touchedIndex == x;
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      showingTooltipIndicators: isTouched ? [0] : [],
      barRods: [
        BarChartRodData(
          toY: sum,
          width: barWidth,
          borderRadius: isTop
              ? const BorderRadius.only(
            topLeft: Radius.circular(0),
            topRight: Radius.circular(0),
          )
              : const BorderRadius.only(
            bottomLeft: Radius.circular(6),
            bottomRight: Radius.circular(6),
          ),
          rodStackItems: [
            BarChartRodStackItem(
              0,
              value1,
              Styles.graphDarkblue,
              BorderSide(
                color: Colors.white,
                width: isTouched ? 2 : 0,
              ),
            ),
            BarChartRodStackItem(
              value1,
              value1 + value2,
              Styles.graphLightlue,
              BorderSide(
                color: Colors.white,
                width: isTouched ? 2 : 0,
              ),
            ),
            BarChartRodStackItem(
              value1 + value2,
              value1 + value2,
              const Color(0xffff4d94),
              BorderSide(
                color: Colors.white,
                width: isTouched ? 2 : 0,
              ),
            ),
            BarChartRodStackItem(
              value1 + value2,
              value1 + value2,
              const Color(0xff19bfff),
              BorderSide(
                color: Colors.white,
                width: isTouched ? 2 : 0,
              ),
            ),
          ],
        ),

      ],
    );
  }

  bool isShadowBar(int rodIndex) => rodIndex == 1;
  String selectedFilter = "Last Week";

  List<DropdownMenuItem<String>> menuItems = [

    const DropdownMenuItem(value: "Last Week", child: Text("Last Week")),
    const DropdownMenuItem(value: "Last Month", child: Text("Last Month")),
    const DropdownMenuItem(value: "Today", child: Text("Today")),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          //color: Styles.appBackgroundColor,
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                      'assets/images/bg.png',
                    ),
                    fit: BoxFit.cover),
                borderRadius:
                BorderRadius.only(bottomLeft: Radius.circular(30))),
            child: ListView(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.w, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(Icons.arrow_back_ios)
                      ),
                      Center(
                        child: Text(
                          "Reports",
                          style: Styles.heading2(context),
                        ),
                      ),
                      GestureDetector(
                          onTap: () {
                            // Navigator.pop(context);
                          },
                          child: Text("")
                      ),
                      // Badge(
                      //   showBadge: notificationCount == 0?false:true,
                      //   position: BadgePosition.topEnd(top: 10, end: 10),
                      //   badgeContent: notificationCount == 0?null:Text(notificationCount.toString(), style: Styles.heading3(context).copyWith(color: Colors.white),),
                      //   child: IconButton(
                      //     icon:  SvgPicture.asset(
                      //       "assets/icons/a – 25.svg",
                      //       color: Colors.black54,
                      //       width: 40.w,
                      //       // matchTextDirection: true,
                      //     ),
                      //     onPressed: () {
                      //       Navigator.pushNamed(
                      //           context, NotificationScreen.routeName);
                      //     },
                      //   ),
                      //   // child: SvgPicture.asset(
                      //   //   "assets/icons/a – 25.svg",
                      //   //   color: Colors.black54,
                      //   //
                      //   //   // matchTextDirection: true,
                      //   // ),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(height: 20,),
                ref.watch(prospectsProvider).when(
                    data: (data){
                      return Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding:  EdgeInsets.only(left: 20.0, top: 10, right: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Total Prospects", style:  Styles.heading3(context).copyWith(fontWeight: FontWeight.w700, color: Colors.black45),),

                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.only(left: 20.0, top: 10, right: 10),
                                child: Row(
                                  children: [
                                    Text("${data.length}", style: Styles.heading1(context),),
                                    const SizedBox(width: 10,),
                                    SvgPicture.asset(
                                      "assets/icons/Decrease.svg",
                                      width: 20.w,
                                      matchTextDirection: true,
                                      color: Colors.black45,
                                    ),
                                    const SizedBox(width: 10,),
                                    Text("3 %", style: Styles.heading3(context).copyWith(color: Styles.appGreenColor),),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                                child: RichText(
                                  text: TextSpan(
                                      text: 'You made ',
                                      style: Styles.smallGreyText(context).copyWith(fontSize: 10),
                                      children: <TextSpan>[
                                        TextSpan(text: "23",
                                          style: Styles.heading4(context).copyWith(color: Styles.appGreenColor),

                                        ),
                                        TextSpan(text: '3 less order(s) than last week',
                                          style:Styles.smallGreyText(context).copyWith(fontSize: 10),

                                        )
                                      ]
                                  ),
                                ),
                              ),

                            ],
                          ),
                        ),
                      );
                    }, error: (e,s){
                      return Text("An occurred getting data", style: Styles.heading3(context),);
                }, loading:  (){
                      return AnimatedCircularProgressIndicator();
                }),

                const SizedBox(height: 20,),
                Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0.w),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: 20.0, top: 10, right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Total Sales", style:  Styles.heading3(context).copyWith(fontWeight: FontWeight.w700, color: Colors.black45),),

                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, top: 10, right: 10),
                    child: Row(
                      children: [
                        Text("54", style: Styles.heading1(context),),
                        const SizedBox(width: 10,),
                        SvgPicture.asset(
                          "assets/icons/Decrease.svg",
                          width: 20.w,
                          matchTextDirection: true,
                          color: Colors.black45,
                        ),
                        const SizedBox(width: 10,),
                        Text("20 %", style: Styles.heading3(context).copyWith(color:Styles.appGreenColor),),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: RichText(
                      text: TextSpan(
                          text: 'Your Retail prospects made ',
                          style: Styles.smallGreyText(context).copyWith(fontSize: 10),
                          children: <TextSpan>[
                            TextSpan(text: "23",
                              style: Styles.heading4(context).copyWith(color:Styles.appGreenColor),

                            ),
                            TextSpan(text: "sales less than last week",
                              style:Styles.smallGreyText(context).copyWith(fontSize: 10),

                            )
                          ]
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
                const SizedBox(height: 20,),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0.w),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Column(
                      children: [
                        SalesGraphWidget(),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      color: Styles.graphDarkblue,
                                      borderRadius:const BorderRadius.all(Radius.circular(1))
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text("Sales", style: Styles.smallGreyText(context).copyWith(fontWeight: FontWeight.w600),)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Row(
                              children: [
                                Container(
                                  height: 12,
                                  width: 12,
                                  decoration: BoxDecoration(
                                      color: Styles.graphLightlue,
                                      borderRadius:const BorderRadius.all(Radius.circular(1))
                                  ),
                                ),
                                SizedBox(width: 10,),
                                Text("Targets", style: Styles.smallGreyText(context).copyWith(fontWeight: FontWeight.w600),)
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.h,)
              ],
            ),
          ),
        ),
      ),
    );
  }

}
