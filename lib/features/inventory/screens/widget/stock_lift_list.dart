import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/products_inventory_model.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';
import 'package:nested_navigation_gorouter_example/utils/responsive.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class StockLiftCartItem extends ConsumerStatefulWidget {
  final ProductsModel product;
  // final List<ProductsModel> cartList;

  const StockLiftCartItem({Key? key, required this.product}) : super(key: key);



  @override
  ConsumerState<StockLiftCartItem> createState() => _StockLiftCartItemState();
}

class _StockLiftCartItemState extends ConsumerState<StockLiftCartItem> {

  TextEditingController qtyController = TextEditingController();
  @override
  void initState() {
    // TODO: implement initState
    qtyController.text = widget.product.qty.toString();

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: Responsive.isMobile(context) ? 250 : 350,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          // borderRadius: BorderRadius.circular(defaultPadding(context))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 14),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width *.45,
                        child: Text(
                          widget.product.productName!,
                          style: Styles.heading3(context).copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: 6,),
                      Text(
                        "Unit: ${widget.product.sellingUnits!}",
                        style: Styles.smallGreyText(context).copyWith(fontWeight: FontWeight.w600, color: Colors.grey),
                      ),

                      Text(
                        "Price: Ksh. ${widget.product.price!}",
                        style: Styles.smallGreyText(context).copyWith(fontWeight: FontWeight.w600, color: Colors.grey),
                      ),

                    ],
                  ),

                  Row(
                    children: <Widget>[
                      widget.product.qty !=0?  IconButton(icon: const Icon(Icons.remove),onPressed: (){
                        if(ref.watch(orderCartData).map((item) => item.id).contains(widget.product.id)){
                          int index = ref.watch(orderCartData).indexWhere((element) => element.id == widget.product.id);
                          ref.watch(orderCartData)[index].qty = ref.watch(orderCartData)[index].qty! - 1;
                          qtyController.text = (ref.watch(orderCartData)[index].qty! - 1).toString();

                        }else{
                          print("false");
                          widget.product.qty =1;
                          ref.watch(orderCartData).add(widget.product);
                        }


                      },
                      ):Container(),
                      Container(
                        width: 50,
                        height: 30,
                        child: TextFormField(
                          controller: qtyController,
                          onChanged: (String value){
                            // print("controller text: ${textEditingController.text}");
                            print(value);
                            if(int.parse(value) > 0){
                              if(ref.watch(orderCartData).map((item) => item.id).contains(widget.product.id)){
                                int index = ref.watch(orderCartData).indexWhere((element) => element.id == widget.product.id);
                                ref.watch(orderCartData)[index].qty = int.parse(value);
                              }else{
                                print("false");
                                widget.product.qty = int.parse(value);
                                ref.watch(orderCartData).add(widget.product);
                              }
                              qtyController.text = value;
                            }
                            // _debouncer.run(() {
                            //   print(value);
                            // });
                          },
                          textAlign: TextAlign.center,
                          cursorHeight: 15,
                          cursorColor:
                          Styles.appPrimaryColor,
                          decoration: InputDecoration(
                            contentPadding:
                            const EdgeInsets.symmetric(
                              vertical: 2,
                              horizontal: 0,
                            ),
                            border: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Styles.appPrimaryColor),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Styles.appPrimaryColor),
                            ),
                          ),
                          keyboardType: TextInputType.number,
                        ),
                      ),
                      IconButton(icon: Icon(Icons.add),onPressed: (){
                        if(ref.watch(orderCartData).map((item) => item.id).contains(widget.product.id)){
                          int index = ref.watch(orderCartData).indexWhere((element) => element.id == widget.product.id);
                          ref.watch(orderCartData)[index].qty = ref.watch(orderCartData)[index].qty! + 1;
                          qtyController.text = (ref.watch(orderCartData)[index].qty! + 1).toString();
                        }else{
                          print("false");
                          widget.product.qty =1;
                          ref.watch(orderCartData).add(widget.product);
                        }
                      })
                    ],
                  ),

                ],
              ),
              // IconButton(icon: Icon(Icons.delete, color: Colors.grey, size: 20,),onPressed: (){
              //
              // })
            ],
          ),
        ),
      ),
    );
  }
}
