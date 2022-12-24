// ignore: file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/constant.dart';
import 'package:store/view/home&other_screens/screens/home.dart';
import 'package:store/view/onboarding&sign/widget/custom_text.dart';
import '../../../model/product_model.dart';
import '../../../view_model/home_view_model.dart';

// ignore: must_be_immutable
class HeadPhoneDetail extends StatelessWidget {
  HeadphoneProductModel? model;
  HeadPhoneDetail({super.key, this.model});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
        init: HomeViewModel(),
        builder: (controller) => Scaffold(
              backgroundColor: Colors.white,
              appBar: AppBar(
                leading: GestureDetector(
                  onTap: () => Get.off(const HomeScreen()),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 28,
                  ),
                ),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              body: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: SizedBox(
                        height: 250,
                        width: 150,
                        child: Image.network(
                          '${model?.image}',
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              SizedBox(
                                width: 300,
                                child: CustomText(
                                    text: '${model?.name}',
                                    fontsize: 22,
                                    weight: FontWeight.bold),
                              ),
                              Text(
                                '${model?.price}',
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const CustomText(
                                text: 'Product Detail',
                                fontsize: 20,
                                weight: FontWeight.bold,
                              ),
                              const SizedBox(
                                width: 220,
                              ),
                              const Icon(
                                Icons.favorite_outline,
                                size: 25,
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 17,
                          ),
                          Text(
                            '${model?.description}',
                            style: const TextStyle(
                                fontSize: 18, color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 60,
                          ),
                          Row(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              const Text(
                                'Review',
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                width: 180,
                              ),
                              const Icon(
                                Icons.star,
                                color: Color.fromRGBO(243, 96, 63, 1),
                              ),
                              const Icon(
                                Icons.star,
                                color: Color.fromRGBO(243, 96, 63, 1),
                              ),
                              const Icon(
                                Icons.star,
                                color: Color.fromRGBO(243, 96, 63, 1),
                              ),
                              const Icon(
                                Icons.star,
                                color: Color.fromRGBO(243, 96, 63, 1),
                              ),
                              const Icon(
                                Icons.star,
                                color: Color.fromRGBO(243, 96, 63, 1),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            width: 400,
                            height: 60,
                            child: ElevatedButton(
                              // ignore: sort_child_properties_last
                              child: const Text(
                                'Add To Basket',
                                style: TextStyle(
                                  fontSize: 22,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: primarycolor),
                              onPressed: () => Get.to(const HomeScreen()),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ));
  }
}
