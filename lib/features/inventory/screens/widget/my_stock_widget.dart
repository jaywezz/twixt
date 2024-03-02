import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/stock_allocation/stock_allocation_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/providers/inventory_provider.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class MyReturnsWidget extends ConsumerStatefulWidget {

  const MyReturnsWidget({Key? key}) : super(key: key);



  @override
  ConsumerState<MyReturnsWidget> createState() => _MyReturnsWidgetState();
}

class _MyReturnsWidgetState extends ConsumerState<MyReturnsWidget> {


  @override
  Widget build(BuildContext context) {

    return RefreshIndicator(
        onRefresh: ()async{
          return await ref.refresh(allocationsProvider);
        },
        child: ref.watch(allocationsProvider).when(data: (data){
          return SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Card(
                child: Container(

                  child: Column(
                    children: [
                      SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        child: DataTable(
                            horizontalMargin: 30,
                            dividerThickness: 0.5,
                            columnSpacing: 20,
                            border: const TableBorder(
                              top: BorderSide(color: Colors.grey, width: 0.5),
                              bottom: BorderSide(color: Colors.grey, width: 0.5),
                              left: BorderSide(color: Colors.grey, width: 0.5),
                              right: BorderSide(color: Colors.grey, width: 0.5),
                              horizontalInside:
                              BorderSide(color: Colors.grey, width: 0.5),
                              verticalInside: BorderSide(color: Colors.grey, width: 0.5),
                            ),
                            columns:  [
                              DataColumn(label: Text("#", style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),)),
                              DataColumn(label: Text("Product Name", style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),)),
                              DataColumn(label: Text("Current Stock", style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),)),
                              DataColumn(label: Text("Item Pricce", style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),)),
                            ],
                            rows: List.generate( data.length,
                                    (index) => productDataRow(data[index], index, context))),
                      ),
                      SizedBox(height: 20,),


                    ],
                  ),
                )),
          );
        },
            error: (e,s){
              return Text("An error occurred", style: Styles.heading3(context).copyWith(color: Colors.redAccent),);
            }, loading: (){
              return Center(child: CircularProgressIndicator(),);
            })
    );
  }

}

DataRow productDataRow(StockAllocationModel allocation, index, BuildContext context) {
  return DataRow(
      selected: true,
      cells: [
        DataCell(Text((index + 1).toString())),
        DataCell(Text(allocation.productName!)),
        DataCell(Text(allocation.currentStock!)),
        DataCell(Text(allocation.price!))
      ]);
}

TableRow buildRow(List<Widget> cells) => TableRow(
    children: cells.map((cell) => cell).toList()
);
