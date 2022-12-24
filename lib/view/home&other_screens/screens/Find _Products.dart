// ignore_for_file: prefer_const_constructors, file_names, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/constant.dart';
import 'package:store/view/home&other_screens/widget/Findproduct_cont.dart';
import 'package:store/view/onboarding&sign/widget/custom_text.dart';
import 'search.dart';
import '../../../view_model/home_view_model.dart';

class FindProduct extends StatelessWidget {
  const FindProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => Scaffold(
        appBar: AppBar(
          leading: Icon(
            Icons.explore_outlined,
            size: 30,
            color: primarycolor,
          ),
          title: CustomText(
            text: 'Find Products',
            fontsize: 19,
            weight: FontWeight.bold,
            alignment: Alignment.center,
          ),
          // ignore: prefer_const_literals_to_create_immutables
          actions: [
            GestureDetector(
              onTap: () => Get.to(Search()),
              child: Icon(
                Icons.search_sharp,
                size: 32,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            ),
          ],
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 10),
              child: SizedBox(
                height: 730,
                child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(
                          height: 18,
                        ),
                    itemCount: controller.categoryModel.length,
                    scrollDirection: Axis.vertical,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          FindproductContainer(
                            productText:
                                '${controller.categoryModel[index].name}',
                            onPress: () {},
                            productImage:
                                '${controller.categoryModel[index].image}',
                          ),
                        ],
                      );
                    }),
              )),
        ),
      ),
    );
  }
}
