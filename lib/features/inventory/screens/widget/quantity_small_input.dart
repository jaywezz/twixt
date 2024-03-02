import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/stock_allocation/stock_allocation_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/providers/inventory_provider.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class QuantitySmallInput extends ConsumerStatefulWidget {
  const QuantitySmallInput({Key? key, required this.allocation}) : super(key: key);

  final StockAllocationModel allocation;

  @override
  ConsumerState<QuantitySmallInput> createState() => _QuantitySmallInputState();
}

class _QuantitySmallInputState extends ConsumerState<QuantitySmallInput> {
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    controller.text = widget.allocation.currentStock.toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: (String value){
        // print("controller text: ${textEditingController.text}");

        print(value);
        // print(stockHistoryController.lstLatestAllocations[index].productName);

        if(int.parse(value) > 0){
          if(int.parse(value) > int.parse(widget.allocation.currentStock!.toString())){
            print("greater");
            Fluttertoast.showToast(
                msg: "Quantity cannot be more than ${widget.allocation.currentStock!}",
                textColor: Colors.white,
                toastLength: Toast.LENGTH_LONG,
                webPosition: 'top',
                gravity: ToastGravity.TOP,
                backgroundColor:Colors.redAccent
            );


            controller.text = widget.allocation.currentStock!.toString();
          }else{
            final data = ref.watch(allocationsCart);
            if(int.parse(value) > 0){
              if(data.map((item) => item.productId).contains(widget.allocation.productId)){
                int index = data.indexWhere((element) => element.productId == widget.allocation.productId);
                data[index].currentStock = value;
                controller.text = value;
              }else{
                print("false");
                widget.allocation.currentStock =value;
                data.add(widget.allocation);
                controller.text = value;
              }
            }
          }
        }
      },
      textAlign: TextAlign.center,
      cursorHeight: 15,
      cursorColor:
      Styles.appSecondaryColor,
      decoration: InputDecoration(
        contentPadding:
        const EdgeInsets.symmetric(
          vertical: 1,
          horizontal: 0,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey),
        ),
        focusedBorder:
        OutlineInputBorder(
          borderSide: BorderSide(
              color: Styles.appSecondaryColor),
        ),
      ),
      keyboardType: TextInputType.number,
    );
  }
}
