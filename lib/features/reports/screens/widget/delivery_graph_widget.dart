import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nested_navigation_gorouter_example/features/reports/providers/targets_provider.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class DeliveryGraphWidget extends ConsumerStatefulWidget {
  const DeliveryGraphWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<DeliveryGraphWidget> createState() => _DeliveryGraphWidgetState();
}

class _DeliveryGraphWidgetState extends ConsumerState<DeliveryGraphWidget> {

  bool isShadowBar(int rodIndex) => rodIndex == 1;
  int touchedIndex = -1;
  static const double barWidth = 28;

  Widget bottomTitles(double value, TitleMeta meta) {
    var style =  Styles.normalText(context).copyWith(color: Colors.black38, fontSize: 12, fontWeight: FontWeight.w600);
    String text = "";
    if(ref.watch(graphFilterProvider) == GraphFilters.week) {
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
    }
    if(ref.watch(graphFilterProvider) == GraphFilters.month) {
      switch (value.toInt()) {
        case 0:
          text = months[DateTime.now().month];
          break;
      }
    }
    if(ref.watch(graphFilterProvider) == GraphFilters.today) {
      switch (value.toInt()) {
        case 0:
          text = '8-10am';
          break;
        case 1:
          text = '10-12pm';
          break;
        case 2:
          text = '12-2pm';
          break;
        case 3:
          text = '2-4pm';
          break;
        case 4:
          text = '4-6pm';
          break;
        case 5:
          text = 'Extra';
          break;
        default:
          text = '';
          break;
      }
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
      text = '0';
    } else {
      text = '${value.toInt()}';
    }
    return SideTitleWidget(
      angle: 0,
      axisSide: meta.axisSide,
      space: 4.0,
      child: Text(
        text,
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

  @override
  void initState() {
    // TODO: implement initState
    var d = DateTime.now();
    var weekDay = d.weekday;
    print("the weekday: ${weekDay}");
    if(weekDay != 1){
      setState(() {
        startDate = d.subtract(Duration(days: weekDay - 1));
      });
      print("the start date: ${startDate}");
      print("the today date: ${d}");
    }else{
      setState(() {
        startDate = d;
      });
    }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:  EdgeInsets.only(left: 20.0.sp, top: 20.sp, right: 10.sp),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Sales Statistics", style:  Styles.normalText(context).copyWith(fontWeight: FontWeight.w700, color: Colors.black45),),
              Container(
                height: 32.h,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400, width: 2),
                    borderRadius: const BorderRadius.all(Radius.circular(5))

                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 2.w),
                  child: DropdownButton<GraphFilters>(
                      style: Styles.heading4(context).copyWith(color: Colors.grey),
                      icon: const Icon(Icons.keyboard_arrow_down_rounded),
                      underline: const Divider(color: Colors.transparent,),
                      onChanged:(GraphFilters? value){
                        setState(() {
                          ref.read(graphFilterProvider.state).state = value!;
                        });
                      },
                      value: ref.read(graphFilterProvider),
                      items: menuItems
                  ),
                ),
              )

            ],
          ),
        ),
        const SizedBox(height: 10,),
        AspectRatio(
          aspectRatio: 1.7,
          child: Card(
            elevation: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(6)),
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.center,
                  maxY: ref.watch(maxYProvider),
                  groupsSpace: 15.w,
                  barTouchData: BarTouchData(
                    handleBuiltInTouches: false,
                    touchCallback: (FlTouchEvent event,
                        barTouchResponse) {
                      if (!event
                          .isInterestedForInteractions ||
                          barTouchResponse == null ||
                          barTouchResponse.spot == null) {
                        setState(() {
                          touchedIndex = -1;
                        });
                        return;
                      }
                      final rodIndex = barTouchResponse
                          .spot!.touchedRodDataIndex;
                      if (isShadowBar(rodIndex)) {
                        setState(() {
                          touchedIndex = -1;
                        });
                        return;
                      }
                      setState(() {
                        touchedIndex = barTouchResponse
                            .spot!.touchedBarGroupIndex;
                      });
                    },
                  ),
                  titlesData: FlTitlesData(
                    show: true,
                    rightTitles: AxisTitles(
                      sideTitles:
                      SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles:
                      SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        reservedSize: 30,
                        getTitlesWidget: bottomTitles,
                      ),
                    ),
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: leftTitles,
                        // interval: 5,
                        reservedSize: 35.sp,
                      ),
                    ),
                  ),
                  gridData: FlGridData(
                    show: false,
                    // checkToShowHorizontalLine: (value) => value % 10 == 0,
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                  barGroups: ref.watch(graphDataProvider).entries
                      .map((e) => generateGroup(
                    e.key, e.value[0], e.value[1],))
                      .toList(),
                ),
              ),
            ),
          ),
        ),
        SizedBox(height: 10.w,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 10.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                      color: Styles.graphDarkblue,
                      borderRadius:const BorderRadius.all(Radius.circular(1))
                  ),
                ),
                SizedBox(width: 10.w,),
                Text("Deliveries", style: Styles.smallGreyText(context).copyWith(fontWeight: FontWeight.w600),)
              ],
            ),
            SizedBox(width: 10.w,),
            Row(
              children: [
                Container(
                  height: 10.h,
                  width: 10.w,
                  decoration: BoxDecoration(
                      color: Styles.graphLightlue,
                      borderRadius:const BorderRadius.all(Radius.circular(1))
                  ),
                ),
                SizedBox(width: 10.w,),
                Text("Targets", style: Styles.smallGreyText(context).copyWith(fontWeight: FontWeight.w600),)
              ],
            )
          ],
        ),
        SizedBox(height: 10.w,),
      ],
    );
  }
}


List months = ["Jan", "Feb", "March", "April", "May", "June", "July", "Aug", "Sep", "Oct", "Nov", "Dec"];
var startDate = DateTime.now();

List<DropdownMenuItem<GraphFilters>> menuItems = [

  const DropdownMenuItem(value: GraphFilters.week, child: Text("Weekly")),
  const DropdownMenuItem(value: GraphFilters.month, child: Text("Monthly")),
  const DropdownMenuItem(value: GraphFilters.today, child: Text("Today")),
];