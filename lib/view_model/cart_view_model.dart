import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:store/database/cart_database.dart';
import 'package:store/model/cart_model.dart';

class CartViewModel extends GetxController {
  ValueNotifier<bool> get loading => _loading;
  final ValueNotifier<bool> _loading = ValueNotifier(false);

  List<CartModel> _cartmodel = [];
  List<CartModel> get cartmodel => _cartmodel;

  CartViewModel() {
    getAllProduct();
  }
  getAllProduct() async {
    _loading.value = true;

    var dbHelper = CartDatabase.db;
    _cartmodel = await dbHelper.getAllProduct();
    // ignore: avoid_print
    print(_cartmodel.length);
    _loading.value = false;
    update();
  }

  addProduct(CartModel cartModel) async {
    // ignore: prefer_is_empty
    if (_cartmodel.length == 0) {
      var dbHelper = CartDatabase.db;
      await dbHelper.insert(cartModel);
    } else {
      var dbHelper = CartDatabase.db;
      await dbHelper.insert(cartModel);
    }

    update();
  }
}
