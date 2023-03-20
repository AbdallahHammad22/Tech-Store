// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/constant.dart';
import 'package:store/view/onboarding&sign/screens/sign_in.dart';
import 'package:store/view/onboarding&sign/widget/custom_text.dart';
import 'package:country_state_city_pro/country_state_city_pro.dart'; // ignore: must_be_immutable

// ignore: must_be_immutable
class Location extends StatelessWidget {
  TextEditingController country = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController city = TextEditingController();
  Location({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () => Get.back(),
            child: Icon(
              Icons.arrow_back,
              color: Colors.black,
              size: 28,
            ),
          ),
          backgroundColor: Colors.white,
          elevation: 0,
        ),
        body: Column(
            children: [
          Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
            Image.asset('aseets/image/illustration.png'),
            SizedBox(
              height: 20,
            ),
            CustomText(
                text: 'Select Your Location',
                fontsize: 23,
                alignment: Alignment.center,
                weight: FontWeight.bold),
            SizedBox(
              height: 15,
            ),
            CustomText(
                text:
                    'Switch on your location to stay in tune with \n           what\'s happening in your area',
                fontsize: 15,
                alignment: Alignment.center,
                color: Colors.grey),
            SizedBox(
              height: 50,
            ),
          ]),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CountryStateCityPicker(
                      country: country,
                      state: state,
                      city: city,
                      textFieldInputBorder: UnderlineInputBorder(),
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.to(() => SignIn());
                        Country = country.text;
                        City = city.text;
                      },
                      child: Center(
                        child: Container(
                          height: 60,
                          width: 200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.blueAccent,
                          ),
                          child: CustomText(
                            text: 'Submit',
                            fontsize: 22,
                            color: Colors.white,
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ]));
  }
}
