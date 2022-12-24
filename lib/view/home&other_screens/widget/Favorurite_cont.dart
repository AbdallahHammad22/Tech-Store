// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';

class Favoruritecontainer extends StatelessWidget {
  final String productname;
  final String productValum;
  final String productPrice;
  final String productImage;

  const Favoruritecontainer({
    super.key,
    required this.productname,
    required this.productValum,
    required this.productPrice,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 90,
        child: Row(
          children: [
            Container(
              height: 60,
              width: 30,
              child: Image.asset(
                productImage,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              height: 70,
              width: 160,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productname,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    productValum,
                    style: TextStyle(color: Colors.grey.shade700, fontSize: 16),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 80,
            ),
            Text(
              productPrice,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 7,
            ),
            const Icon(
              Icons.arrow_forward,
              size: 28,
              color: Colors.black,
            ),
          ],
        ));
  }
}
