import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:store/view/home&other_screens/screens/home.dart';

class HomeController extends GetxController {
  GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
  FirebaseAuth _auth = FirebaseAuth.instance;
  String? email, password, name;
  int counter = 0;

  void increment() {
    counter++;
    update();
  }

  void decrement() {
    counter--;
    update();
  }

  void googleSignInMethod() async {
    final GoogleSignInAccount? googleUser = await googleSignIn.signIn();
    // ignore: avoid_print
    print(googleUser);
    GoogleSignInAuthentication? googleSignInAuthentication =
        await googleUser?.authentication;

    final AuthCredential credential = GoogleAuthProvider.credential(
      idToken: googleSignInAuthentication?.idToken,
      accessToken: googleSignInAuthentication?.accessToken,
    );

    await _auth.signInWithCredential(credential);
  }

  void signInWithEmailAndPassword() async {
    try {
      await _auth
          .signInWithEmailAndPassword(email: email!, password: password!)
          .then((value) {
        print(value);
      });
      Get.offAll(HomeScreen());
    } catch (e) {
      print(e);
      Get.snackbar(
        'Error login account',
        e.toString(),
        colorText: Colors.black,
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
