import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/home&other_screens/screens/Favorurite.dart';
import 'package:store/view/home&other_screens/screens/Find%20_Products.dart';
import 'package:store/view/home&other_screens/screens/My_Cart.dart';
import 'package:store/view/home&other_screens/screens/home.dart';
import '../view/home&other_screens/screens/Account.dart';

class ControlViewModel extends GetxController {
  int navigatorValue = 0;

  Widget currentScreen = const HomeScreen();


  void changeSelectedValue(int selectedValue) {
    navigatorValue = selectedValue;
    switch (selectedValue) {
      case 0:
        {
          currentScreen = const HomeScreen();
          break;
        }
      case 1:
        {
          currentScreen = const FindProduct();
          break;
        }
      case 2:
        {
          currentScreen =  CartView();
          break;
        }
      case 3:
        {
          currentScreen =  FavoruriteScreen();
          break;
        }
      case 4:
        {
          currentScreen = const AccountScreen();
          break;
        }
    }
    update();
  }
}
