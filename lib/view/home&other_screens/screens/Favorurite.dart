// ignore_for_file: prefer_const_constructors, file_names
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'home.dart';

class FavoruriteScreenState extends StatelessWidget {
  const FavoruriteScreenState({super.key});

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Text(
                  'My Cart',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: 7,
            ),
           
            SizedBox(
              height: 7,
            ),
            Divider(
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: 7,
            ),
          
            Divider(
              color: Colors.grey.shade400,
            ),
            SizedBox(
              height: 15,
            ),
            GestureDetector(
              child: Container(
                width: 350,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color.fromRGBO(60, 179, 113, 1),
                ),
                child: // ignore: sort_child_properties_last
                    Center(
                  child: Text(
                    'Add All To Cart',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
              onTap: () => Get.to(HomeScreen()),
            ),
          ]),
        ),

    );
  }
}
