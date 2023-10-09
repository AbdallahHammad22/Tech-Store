// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/constant.dart';
import 'package:store/view/Onboarding/screens/location.dart';
import 'package:store/view/widget/custom_text.dart';
import 'package:store/view/widget/button.dart';

class WelcomScreen extends StatelessWidget {
  const WelcomScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (Scaffold(
      backgroundColor: blue,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height / 9,
            ),
            CustomText(
              text: 'Find your Product',
              color: Colors.white,
              fontsize: 30.0,
              weight: FontWeight.bold,
              alignment: Alignment.center,
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                child: ShaderMask(
                    shaderCallback: (rect) {
                      return const LinearGradient(
                        begin: Alignment.center,
                        end: FractionalOffset.bottomCenter,
                        colors: [Colors.black, Colors.transparent],
                      ).createShader(rect);
                    },
                    blendMode: BlendMode.dstIn,
                    child: const Image(
                        image: AssetImage('aseets/image/splash.png'),
                        fit: BoxFit.contain))),
            CustomText(
              alignment: Alignment.center,
              text: "Triple M Tech",
              fontsize: 30,
              weight: FontWeight.bold,
              color: Colors.white,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 28,
            ),
            CustomText(
              alignment: Alignment.center,
              text: "Online store for selling electronic products",
              fontsize: 14,
              color: Colors.white,
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 15,
            ),
            Button(
                title: "Get Started",
                primarycolor: white,
                onPrimarycolor: blue,
                onPress: () {
                  Get.to(() => Location());
                },
                borderRadius: 10,
                fontWeight: FontWeight.bold,
                fontsize: 16,
                hight: 22,
                width: 80),
          ],
        ),
      ),
    ));
  }
}
