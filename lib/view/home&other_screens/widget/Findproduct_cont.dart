// ignore_for_file: file_names

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class FindproductContainer extends StatelessWidget {
  final String productText;
  final String productImage;
  final VoidCallback onPress;

  const FindproductContainer({
    super.key,
    required this.productText,
    required this.onPress,
    required this.productImage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 180,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: const Color.fromRGBO(0, 48, 96, 1))),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 130,
              width: 150,
              child: GestureDetector(
                onTap: onPress,
                child: Image.network(
                  productImage,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Text(
            productText,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ],
      ),
    );
  }
}
