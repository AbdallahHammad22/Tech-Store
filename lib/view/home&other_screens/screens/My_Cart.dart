// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/home&other_screens/widget/mycart_cont.dart';
import '../../../model/product_model.dart';
import '../../../view_model/home_view_model.dart';

class MyCart extends StatelessWidget {

  ProductModel? model;
  MyCart({
    super.key,
    this.model,
  });
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        init:HomeViewModel(),
        builder: (controller) => Scaffold(
          body: SingleChildScrollView(
                  child: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 65,
                      ),
                      const Text(
                        'My Cart',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 700,
                        child: ListView.separated(
                            separatorBuilder: (context, index) => SizedBox(
                                  height: 18,
                                ),
                            itemCount:6,
                            scrollDirection: Axis.vertical,
                            itemBuilder: (context, index) {
                              return Column(children: [
                                Mycartcontainer(
                                  productImage:
                                  '${model?.image}',
                                  productPrice:
                                  '${model?.price}',
                                  productValum: '1',
                                  productname:
                                      '${model?.name}',
                                ),
                              ]);
                            }),
                      ),
                    ]),
              )),
        ));
  }
}
