// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:store/controller/controller.dart';
import 'package:store/view/onboarding&sign/screens/sign_up.dart';

import 'package:store/view/onboarding&sign/widget/custom_text.dart';
import '../../../model/control_view.dart';
import '../widget/social_boutton.dart';

class SignIn extends GetWidget<HomeController> {
  SignIn({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 110,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      CustomText(
                          text: 'Welcome,',
                          fontsize: 25,
                          weight: FontWeight.bold),
                      SizedBox(
                        width: 170,
                      ),
                      GestureDetector(
                        onTap: () => Get.offAll(() => SignUp()),
                        child: CustomText(
                          text: 'Sign UP',
                          fontsize: 25,
                          weight: FontWeight.bold,
                          color: Colors.blueAccent,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  CustomText(
                    text: 'Sign In To Contiune ',
                    fontsize: 16,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomText(
                    text: 'Email',
                    fontsize: 18,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    onSaved: (Value) {
                    controller.email = Value;
                  },
                    validator: (value) {
                      if (value == null) {
                        print('Erorr');
                      }
                    },
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: ' abdallahhamad343@gmail.com',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  CustomText(
                    text: 'Password',
                    fontsize: 18,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                      keyboardType: TextInputType.text,
                      onSaved: (newValue) {
                        controller.password = newValue;
                      },
                      validator: (value) {
                        if (value == null) {
                          print('Erorr');
                        }
                      },
                      decoration: InputDecoration(
                          hintText: 'Enter your password',
                          hintStyle: TextStyle(color: Colors.grey),
                          suffixIcon: IconButton(
                              icon: Icon(
                                Icons.visibility,
                                color: Theme.of(context).primaryColorDark,
                              ),
                              onPressed: () {}))),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      SizedBox(
                        width: 250,
                      ),
                      Text('Forgot Password ?',style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 50,
                    child: MaterialButton(
                        // ignore: sort_child_properties_last
                        child: CustomText(
                          text: 'Log In',
                          fontsize: 22,
                          color: Colors.white,
                          alignment: Alignment.center,
                        ),
                        color: Colors.blueAccent,
                        onPressed: () {
                          _formKey.currentState?.save();
                          if (_formKey.currentState!.validate()) {
                            controller.signInWithEmailAndPassword();
                          }
                        }),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:14.0,right:14.0 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: CustomText(
                        text: 'or connect with social media',
                        color: Colors.grey,
                        fontsize: 16,
                        alignment: Alignment.center),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  SocialButton(
                    onPress: (() {
                      controller.googleSignInMethod();
                    }),
                    text: 'Sign with Google',
                    imageName: 'aseets/image/google.png',
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  SocialButton(
                    onPress: (() {
                      Get.to(()=>ControlView());
                    }),
                    text: 'Sign with Facebook',
                    imageName: 'aseets/image/facebook.png',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
