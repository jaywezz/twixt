import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/products_inventory_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/providers/inventory_provider.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class ProductListWidget extends ConsumerStatefulWidget {
  const ProductListWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ProductListWidget> createState() => _ProductListState();
}

class _ProductListState extends ConsumerState<ProductListWidget> {
  GlobalKey _one = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return ref.watch(productsProvider).when(
        data: (data) {
          return SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: DataTable(
                  horizontalMargin: 10,
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
                    DataColumn(label: Text("Product", style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),)),
                    DataColumn(label: Text("Price", style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),)),
                    // DataColumn(label: Text("Unit", style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),)),
                    DataColumn(label: Text("Product Code", style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),)),
                  ],
                  rows: List.generate(data.length,
                          (index) => productDataRow(data[index], index, context))),
            ),
          );
        },
        error: (error, s) {
          print("an error occurred: $s");
          return Center(
            child: Text(error.toString()),
          );
        },
        loading: () => const Center(child: CircularProgressIndicator.adaptive()));

  }

  TableRow buildRow(List<Widget> cells) =>
      TableRow(children: cells.map((cell) => cell).toList());

  DataRow productDataRow(ProductsModel productData, index, BuildContext context) {
    return DataRow(
        selected: true,
        cells: [
          DataCell(Text((index + 1).toString())),
          DataCell(SizedBox(
              width: MediaQuery.of(context).size.width *.4,
              child: Text(productData.productName!))),
          DataCell(Text(productData.price!)),
          // DataCell(Text(productData.sellingUnits!)),
          DataCell(Text(productData.itemCode!)),
          // DataCell(IconButton(
          //     onPressed: () {
          //
          //     },
          //     icon: Icon(
          //       Icons.info_outline_rounded,
          //       color: Styles.appPrimaryColor,
          //     ))),
        ]);
  }
}