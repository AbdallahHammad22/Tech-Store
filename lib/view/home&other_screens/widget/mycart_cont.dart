// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/onboarding&sign/widget/custom_text.dart';

import 'package:store/view_model/cart_view_model.dart';

class Mycartcontainer extends StatelessWidget {
  final String productname;
  final String productValum;
  final String productPrice;
  final String productImage;

  const Mycartcontainer({
    super.key,
    required this.productname,
    required this.productValum,
    required this.productPrice,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return GetBuilder<CartViewModel>(
        init: CartViewModel(),
        builder: (controller) => (SizedBox(
              height: 120,
              child: Row(
                children: [
                  SizedBox(
                    height: 80,
                    width: 110,
                    child: Image.network(
                      productImage,
                      fit: BoxFit.fill,
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  SizedBox(
                    height: 120,
                    width: 180,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                            text: productname,
                            // ignore: prefer_const_constructors

                            weight: FontWeight.bold,
                            fontsize: 18),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          productPrice,
                          style: const TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Row(children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey.shade400)),
                            height: 37,
                            width: 35,
                            child: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.remove,
                                size: 28,
                                color: Colors.grey.shade700,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Center(child: Text('0')),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey.shade400)),
                            height: 37,
                            width: 35,
                            child: GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.add,
                                size: 28,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                        ]),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 30,
                  ),
                  Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Icon(
                        Icons.close,
                        size: 28,
                        color: Colors.grey,
                      ),
                      const SizedBox(
                        height: 55,
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
