import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/controller/constant.dart';
import 'package:store/view/auth/Screens/sign_in.dart';
import 'package:store/view/widget/custom_text.dart';
import 'package:country_state_city_pro/country_state_city_pro.dart';
import 'package:store/view/widget/button.dart';

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
        title: CustomText(
          text: "Add your Location",
          fontsize: 16,
          color: white,
        ),
        backgroundColor: blue,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(
              top: MediaQuery.of(context).size.height / 20,
              bottom: MediaQuery.of(context).size.height / 50,
            ),
            child: Image.asset('aseets/image/location.png'),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).size.height / 60),
            child: const CustomText(
                text: 'Select Your Location',
                fontsize: 23,
                alignment: Alignment.center,
                weight: FontWeight.bold),
          ),
          const CustomText(
              text:
                  'Switch on your location to stay in tune with \n           what\'s happening in your area',
              fontsize: 12,
              alignment: Alignment.center,
              color: Colors.grey),
          Padding(
            padding: EdgeInsets.only(
              right: 20,
              left: 20,
              bottom: MediaQuery.of(context).size.height / 7,
              top: MediaQuery.of(context).size.height / 15,
            ),
            child: CountryStateCityPicker(
              country: country,
              state: state,
              city: city,
            ),
          ),
          Center(
            child: Button(
              title: 'Submit',
              primarycolor: blue,
              onPrimarycolor: white,
              onPress: () {
                Country = country.text;
                City = city.text;
                Get.to(() => SignIn());
              },
              borderRadius: 10,
              fontWeight: FontWeight.bold,
              fontsize: 16,
              hight: 22,
              width: 80,
            ),
          ),
        ]),
      ),
    );
  }
}
