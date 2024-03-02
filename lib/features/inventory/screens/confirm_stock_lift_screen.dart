import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/models/warehouse/warehouse_model.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/providers/inventory_provider.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/stock_lift.dart';
import 'package:nested_navigation_gorouter_example/features/inventory/screens/widget/stock_lift_list.dart';
import 'package:nested_navigation_gorouter_example/features/sales/prospects/provider/prospects_provider.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/full_width_widget.dart';
import 'package:nested_navigation_gorouter_example/global_widgets/indicators/default_progress_indicator.dart';
import 'package:nested_navigation_gorouter_example/utils/app_constants.dart';
import 'package:nested_navigation_gorouter_example/utils/styles.dart';

class ConfirmStockLift extends ConsumerStatefulWidget {
  final WarehouseModel warehouse;
  const ConfirmStockLift( {Key? key,required this.warehouse,}) : super(key: key);

  @override
  ConsumerState<ConfirmStockLift> createState() => _ConfirmStockLiftState();
}

class _ConfirmStockLiftState extends ConsumerState<ConfirmStockLift> with SingleTickerProviderStateMixin{

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
              child:Column(
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
                          'Confirm StockLift',
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Confirm StockLift Items',
                        style: Styles.heading2(context).copyWith(color: Colors.black54),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      IconButton(
                        onPressed: (){
                          // _cartItems.clear();
                          ref.watch(orderCartData).clear();
                        },
                        icon: Icon(Icons.delete_sweep_outlined, color: Styles.appSecondaryColor,),)
                    ],
                  ),
                  Expanded(
                      child:SingleChildScrollView(
                        child: ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            itemCount: ref.watch(orderCartData).length,
                            itemBuilder: (context, ind) {
                              return StockLiftCartItem(product: ref.watch(orderCartData)[ind]);
                            }),
                       ),
                    )

                ],
              )
          ),
        ),),
      bottomNavigationBar: Container(
        height: defaultPadding(context) * 7,
        padding: EdgeInsets.only(
          left: defaultPadding(context),
          right: defaultPadding(context),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ref.watch(inventoryNotifier) is AsyncLoading<void>?const Center(child: AnimatedCircularProgressIndicator())
                  :FullWidthButton(
                btnheight: 50,
                action: () {
                  showDialog(context: context, builder: ((context) {
                    return PhotoDialog(warehouseCode: widget.warehouse.warehouseCode!);
                  }));

                },
                text: 'Confirm Stock Lift',
                color: Styles.appPrimaryColor,
              ),
              Material(
                child: InkWell(
                  splashColor: Theme.of(context).splashColor,
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding:
                    EdgeInsets.symmetric(vertical: defaultPadding(context)),
                    child: Center(
                        child: Text(
                          'Cancel',
                          textAlign: TextAlign.center,
                          style: Styles.normalText(context),
                        )),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

class PhotoDialog extends ConsumerStatefulWidget {
  final String warehouseCode;
  const PhotoDialog( {Key? key, required this.warehouseCode,}) : super(key: key);

  @override
  ConsumerState<PhotoDialog> createState() => _PhotoDialogState();
}

class _PhotoDialogState extends ConsumerState<PhotoDialog> {

  File? pickedImageFile;

  void _pickImageCamera() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.camera, imageQuality: 40);
    pickedImageFile= File(pickedImage!.path);
    setState(() {});
    Navigator.pop(context);
  }

  void _pickImageGallery() async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: ImageSource.gallery);
    final pickedImageFile = File(pickedImage!.path);
    Navigator.pop(context);
  }

  void _remove() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return  AlertDialog(
      title: Text(
        "Take Photo of Receipt",
        textAlign: TextAlign.center,
        style: Styles.heading2(context),
      ),
      content: GestureDetector(
        onTap: () {
          showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text(
                    'Choose option',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Styles.appPrimaryColor),
                  ),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: [
                        InkWell(
                          onTap: _pickImageCamera,
                          splashColor: Colors.black,
                          child: Row(
                            children: [
                              const Padding(
                                padding:
                                EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.camera,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                'Camera',
                                style: Styles.heading3(context),
                              )
                            ],
                          ),
                        ),
                        // InkWell(
                        //   onTap: _pickImageGallery,
                        //   splashColor: Colors.black,
                        //   child: Row(
                        //     children: [
                        //       Padding(
                        //         padding:
                        //         const EdgeInsets.all(8.0),
                        //         child: Icon(
                        //           Icons.image,
                        //           color: Colors.black,
                        //         ),
                        //       ),
                        //       Text(
                        //         'Gallery',
                        //         style: Styles.heading3(context),
                        //       )
                        //     ],
                        //   ),
                        // ),
                        InkWell(
                          onTap: _remove,
                          splashColor: Colors.black,
                          child: const Row(
                            children: [
                              Padding(
                                padding:
                                EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.remove_circle,
                                  color: Colors.red,
                                ),
                              ),
                              Text(
                                'Remove',
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.red),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              });
        },

        child: CircleAvatar(
          radius: defaultPadding(context) * 6.5,
          backgroundColor: Styles.appSecondaryColor,
          backgroundImage: pickedImageFile == null
              ? null
              : FileImage(pickedImageFile!),
          child: pickedImageFile == null
              ? CircleAvatar(
            radius: defaultPadding(context) * 6,
            backgroundColor: Styles.appPrimaryColor,
            child: Icon(
              Icons.camera_alt,
              color: Styles.appSecondaryColor,
              size: defaultPadding(context) * 5,
            ),
          )
              : null,
        ),
      ),
      actions: [
        Row(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                        top: BorderSide(color: Colors.black, width: 0.5),
                        right:
                        BorderSide(color: Colors.black, width: 1))),
                child: TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      "Cancel",
                      style: Styles.heading3(context)
                          .copyWith(color: Colors.black26),
                    )),
              ),
            ),
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.black, width: 0.5),
                    )),
                child: TextButton(
                    onPressed: () async{
                      if(pickedImageFile == null){

                      }else{
                       await  ref.watch(inventoryNotifier.notifier).addStockLift(pickedImageFile!, widget.warehouseCode,context);
                      }
                    },
                    child: Text("Upload",
                        style: Styles.heading3(context)
                            .copyWith(color: Styles.appPrimaryColor))),
              ),
            ),
          ],
        )
      ],
    );
  }
}
