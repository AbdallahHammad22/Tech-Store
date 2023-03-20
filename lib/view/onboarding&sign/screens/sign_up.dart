// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, deprecated_member_use, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:store/view/onboarding&sign/screens/sign_in.dart';
import 'package:store/view/onboarding&sign/widget/custom_text.dart';
import '../../../controller/controller.dart';
import '../../../model/control_view.dart';

class SignUp extends GetWidget<HomeController> {
  SignUp({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 100,
              ),
              SizedBox(
                height: 100,
              ),
              CustomText(
                text: 'Sign Up',
                fontsize: 25,
                weight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
              SizedBox(
                height: 15,
              ),
              CustomText(
                text: 'Enter your credentials to continue',
                fontsize: 16,
                color: Colors.grey,
              ),
              SizedBox(
                height: 30,
              ),
              CustomText(
                text: 'User Name',
                fontsize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onSaved: (newValue) {
                controller.name = newValue;
              }, validator: (value) {
                if (value == null) {
                  print('Erorr');
                }
              },
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: ' Abdallah Hammad',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              CustomText(
                text: 'Email',
                fontsize: 20,
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
                fontsize: 20,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.text,
                onSaved: (Value) {
                  controller.password = Value;
                },
                validator: (value) {
                  if (value == null) {
                    print('Erorr');
                  }
                },

                    //This will obscure text dynamically
                decoration: InputDecoration(
                  hintText: 'Enter Your password',
                  hintStyle: TextStyle(color: Colors.grey),
                  // Here is key idea

                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('By continuing you agree to our'),
                  CustomText(
                    text: 'Terms of Service ',
                    color: Colors.blueAccent,
                  ),
                ],
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text('and'),
                  CustomText(
                    text: ' Privacy Policy.',
                    color: Colors.blueAccent,
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 400,
                height: 60,
                child: ElevatedButton(
                  // ignore: sort_child_properties_last
                  child: CustomText(
                    text: 'Sign Up',
                    alignment: Alignment.center,
                    fontsize: 22,
                    color: Colors.white,
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,
                  ),
                  onPressed:  () {
                    _formKey.currentState?.save();
                    if (_formKey.currentState!.validate()) {
                      controller.createAccountWithEmailAndPassword();
                    }
                  }
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Text('Already have an account ? '),
                  GestureDetector(
                    onTap: () => Get.to(() => SignIn()),
                    child: CustomText(
                      text: 'Sign in ',
                      color: Colors.blueAccent,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
      ));
  }
}
