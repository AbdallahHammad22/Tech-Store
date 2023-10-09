import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/home/screens/Favorurite.dart';
import 'package:store/view/home/screens/category.dart';
import 'package:store/view/home/screens/My_Cart.dart';
import 'package:store/view/home/screens/home.dart';
import '../view/home/screens/Account.dart';

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
          currentScreen = const CategoryScreen();
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
