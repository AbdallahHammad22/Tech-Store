import 'package:flutter/material.dart';
import 'package:store/view/onboarding&sign/widget/custom_text.dart';

class ProductContainer extends StatelessWidget {
  final String productText;
  final String productPrice;
  final String productImage;
  final VoidCallback onPress;
  final VoidCallback additme;
  final double hight;
  final double width;

  const ProductContainer({
    super.key,
    required this.productText,
    required this.productPrice,
    required this.hight,
    required this.width,
    required this.productImage,
    required this.onPress,
    required this.additme,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 180,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade200)),
      child: Padding(
        padding: const EdgeInsets.only(left: 7),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Container(
              margin: const EdgeInsets.only(top: 20, left: 34, right: 44),
              height: hight,
              width: width,
              child: GestureDetector(
                onTap: onPress,
                child: Image.network(
                  productImage,
                  fit: BoxFit.fill,
                ),
              )),
          const SizedBox(
            height: 7,
          ),
          SizedBox(
            height: 32,
            child: CustomText(
                text: productText, weight: FontWeight.normal, fontsize: 18),
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                width: 130,
                child: CustomText(
                    text: productPrice,
                    color: Colors.grey.shade600,
                    fontsize: 18),
              ),
              GestureDetector(
                onTap: additme,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color.fromARGB(255, 69, 34, 113),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 30,
                    )),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
