// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/onboarding&sign/screens/location.dart';
import '../widget/custom_text.dart';


class Onbording1 extends StatelessWidget {
  const Onbording1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          SizedBox(
            height: 600,
            width: 500,
            child: Image(
              image: AssetImage('aseets/image/12.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: 299,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('aseets/image/122.jpg'),
                    fit: BoxFit.cover)),
            child: Column(
              children: [
                SizedBox(
                  height: 60,
                ),
                CustomText(
                  weight: FontWeight.bold,
                  alignment: Alignment.center,
                  text: 'Welcom to Our Store',
                  color: Colors.white,
                  fontsize: 25,
                ),
                SizedBox(
                  height: 30,
                ),
                GestureDetector(
                  onTap: () => Get.to(() => (Location())),
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blueAccent,
                    ),
                    child: CustomText(
                      text: 'Get Start',
                      fontsize: 30,
                      color: Colors.white,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
