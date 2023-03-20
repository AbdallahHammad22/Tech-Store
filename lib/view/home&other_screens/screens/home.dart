// ignore_for_file: prefer_const_constructors, non_constant_identifier_names, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/home&other_screens/details/laptop_details.dart';
import 'package:store/view/home&other_screens/screens/My_Cart.dart';
import 'package:store/view/home&other_screens/screens/search.dart';
import 'package:store/view/home&other_screens/details/HeadphoneDetail.dart';
import 'package:store/view/home&other_screens/details/monitor_detail.dart';
import 'package:store/view/home&other_screens/details/phone_detail.dart';
import 'package:store/view/home&other_screens/widget/product_cont.dart';
import 'package:store/view/onboarding&sign/widget/custom_text.dart';
import '../../../controller/constant.dart';
import '../../../view_model/home_view_model.dart';
import '../details/appliances_detail.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        init: HomeViewModel(),
        builder: (controller) => Scaffold(
              appBar: AppBar(
                leading: Icon(
                  Icons.location_on_outlined,
                  size: 30,
                  color: primarycolor,
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
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: Country,
                      fontsize: 20,
                      weight: FontWeight.bold,
                      color: primarycolor,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    CustomText(
                      text: City,
                      fontsize: 20,
                      weight: FontWeight.bold,
                      color: primarycolor,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                  ],
                ),
              ),
              body: Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  color: Colors.white,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 400,
                          height: 150,
                          child: PageView(
                            children: [
                              Image.asset(
                                'aseets/image/banner.jpg',
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                'aseets/image/banner2.jpg',
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              width: 300,
                              child: CustomText(
                                text: 'Laptops ',
                                fontsize: 20,
                              ),
                            ),
                            CustomText(
                                text: 'see all',
                                fontsize: 20,
                                color: primarycolor)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        laptops(),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              width: 300,
                              child: CustomText(
                                text: 'Mobile Phone ',
                                fontsize: 20,
                              ),
                            ),
                            CustomText(
                              text: 'see all',
                              fontsize: 20,
                              color: primarycolor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        mobile(),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 400,
                          height: 200,
                          child: PageView(
                            children: [ Image.asset(
                                'aseets/image/banner5.png',
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                'aseets/image/banner3.jpg',
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                'aseets/image/banner4.png',
                                fit: BoxFit.fill,
                              ),
                               Image.asset(
                                'aseets/image/banner5.png',
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              width: 300,
                              child: CustomText(
                                text: 'Monitors',
                                fontsize: 20,
                              ),
                            ),
                            CustomText(
                                text: 'see all',
                                fontsize: 20,
                                color: primarycolor)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Monitor(),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              width: 300,
                              child: CustomText(
                                text: 'Appliances ',
                                fontsize: 20,
                              ),
                            ),
                            CustomText(
                                text: 'see all',
                                fontsize: 20,
                                color: primarycolor)
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Appliances(),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              width: 300,
                              child: CustomText(
                                text: ' HeadPhone',
                                fontsize: 20,
                              ),
                            ),
                            CustomText(
                                text: 'see all',
                                fontsize: 20,
                                color: primarycolor)
                          ],
                        ), Container(
                          width: 400,
                          height: 200,
                          child: PageView(
                            children: [ Image.asset(
                                'aseets/image/banner6.png',
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                'aseets/image/banner7.png',
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                'aseets/image/banner8.jpg',
                                fit: BoxFit.fill,
                              ),
                               Image.asset(
                                'aseets/image/banner5.png',
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        HeadPhoneProducts(),
                        SizedBox(
                          height: 20,
                        ), Container(
                          width: 400,
                          height: 150,
                          child: PageView(
                            children: [
                              Image.asset(
                                'aseets/image/banner.jpg',
                                fit: BoxFit.fill,
                              ),
                              Image.asset(
                                'aseets/image/banner2.jpg',
                                fit: BoxFit.fill,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              width: 300,
                              child: CustomText(
                                text: 'Laptops ',
                                fontsize: 20,
                              ),
                            ),
                            CustomText(
                                text: 'see all',
                                fontsize: 20,
                                color: primarycolor)
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        laptops(),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            SizedBox(
                              width: 300,
                              child: CustomText(
                                text: 'Mobile Phone ',
                                fontsize: 20,
                              ),
                            ),
                            CustomText(
                              text: 'see all',
                              fontsize: 20,
                              color: primarycolor,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        mobile(),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ));
  }
}

Widget laptops() {
  return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => Container(
            height: 180,
            child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                itemCount: controller.productModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductContainer(
                      hight: 80,
                      width: 100,
                      productText: '${controller.productModel[index].name}',
                      productPrice: '${controller.productModel[index].price}',
                      productImage: '${controller.productModel[index].image}',
                      onPress: () => Get.to(LaptopDetail(
                            model: controller.productModel[index],
                          )),
                      additme: () {});
                }),
          ));
}

Widget mobile() {
  return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => Container(
            height: 190,
            child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                itemCount: controller.phoneProductModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductContainer(
                      hight: 90,
                      width: 90,
                      productText:
                          '${controller.phoneProductModel[index].name}',
                      productPrice:
                          '${controller.phoneProductModel[index].price}',
                      productImage:
                          '${controller.phoneProductModel[index].image}',
                      onPress: () => Get.to(PhoneDetail(
                            model: controller.phoneProductModel[index],
                          )),
                      additme: () {});
                }),
          ));
}

Widget Monitor() {
  return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => Container(
            height: 190,
            child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                itemCount: controller.monitorProductModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductContainer(
                      hight: 80,
                      width: 100,
                      productText:
                          '${controller.monitorProductModel[index].name}',
                      productPrice:
                          '${controller.monitorProductModel[index].price}',
                      productImage:
                          '${controller.monitorProductModel[index].image}',
                      onPress: () => Get.to(MonitorDetail(
                            model: controller.monitorProductModel[index],
                          )),
                      additme: () {});
                }),
          ));
}

Widget Appliances() {
  return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => Container(
            height: 200,
            child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                itemCount: controller.monitorProductModel.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductContainer(
                      hight: 100,
                      width: 100,
                      productText:
                          '${controller.AppliancesProductModel[index].name}',
                      productPrice:
                          '${controller.AppliancesProductModel[index].price}',
                      productImage:
                          '${controller.AppliancesProductModel[index].image}',
                      onPress: () => Get.to(AppliancesDetail(
                            model: controller.AppliancesProductModel[index],
                          )),
                      additme: () {});
                }),
          ));
}

Widget HeadPhoneProducts() {
  return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => Container(
            height: 200,
            child: ListView.separated(
                separatorBuilder: (context, index) => SizedBox(
                      width: 20,
                    ),
                itemCount: controller.HeadphoneProduct.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProductContainer(
                      hight: 100,
                      width: 100,
                      productText: '${controller.HeadphoneProduct[index].name}',
                      productPrice:
                          '${controller.HeadphoneProduct[index].price}',
                      productImage:
                          '${controller.HeadphoneProduct[index].image}',
                      onPress: () => Get.to(HeadPhoneDetail(
                            model: controller.HeadphoneProduct[index],
                          )),
                      additme: () {});
                }),
          ));
}
