import 'package:flutter/material.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

import 'widget/my_stock_widget.dart';


class ViewMyStock extends StatefulWidget {
  const ViewMyStock({Key? key}) : super(key: key);

  @override
  State<ViewMyStock> createState() => _ViewMyStockState();
}

class _ViewMyStockState extends State<ViewMyStock> with SingleTickerProviderStateMixin{
  @override
  void initState() {


    super.initState();
  }

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
                    image: AssetImage(
                      'assets/images/bg.png',
                    ),
                    fit: BoxFit.cover),
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
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back_ios_new,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'My Stock',
                        style: Styles.heading2(context),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: defaultPadding(context) * 1.3,
                ),
                SizedBox(
                  height: defaultPadding(context) * .4,
                ),

                SizedBox(height: 10,),
                const Expanded(
                  child: MyReturnsWidget(),
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
