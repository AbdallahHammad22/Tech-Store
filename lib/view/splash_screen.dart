// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/onboarding&sign/widget/custom_text.dart';
import 'onboarding&sign/screens/onbording_1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () => Get.to(Onbording1()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff5956E9),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            CustomText(
              alignment: Alignment.center,
              text: "Triple M Tech",
              fontsize: 30,
              weight: FontWeight.bold,
              color: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            CustomText(
              alignment: Alignment.center,
              text: "Online store for selling electronic products",
              fontsize: 14,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
