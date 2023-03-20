import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/onboarding&sign/widget/custom_text.dart';
import '../screens/Favorurite.dart';

class detailsWidget extends StatefulWidget {
  String imagename, productname, productprice, productdescription;

  detailsWidget({
    super.key,
    required this.imagename,
    required this.productname,
    required this.productprice,
    required this.productdescription,
  });

  @override
  State<detailsWidget> createState() => _detailsWidgetState();
}

class _detailsWidgetState extends State<detailsWidget> {
  bool clik = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Center(
            child: SizedBox(
              height: 250,
              width: 300,
              child: Image.network(
                widget.imagename,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    SizedBox(
                      width: 280,
                      child: CustomText(
                        text: widget.productname,
                        fontsize: 22,
                        color: Colors.blueAccent,
                        weight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(
                      width: 105,
                      child: CustomText(
                        text: '${widget.productprice} EGP',
                        alignment: Alignment.centerRight,
                        fontsize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const CustomText(
                      text: 'Product details',
                      fontsize: 20,
                    ),
                    const SizedBox(
                      width: 220,
                    ),
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            clik = true;
                          });
                        },
                        onDoubleTap: () {
                          setState(() {
                            clik = false;
                          });
                        },
                        child: clik == false
                            ? const Icon(
                                Icons.favorite_outline,
                                size: 25,
                              )
                            : const Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 25,
                              )),
                  ],
                ),
                const SizedBox(
                  height: 17,
                ),
                SizedBox(
                  height: 230,
                  child: Text(
                    widget.productdescription,
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ),
                Row(
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    const Text(
                      'Review',
                      style: TextStyle(fontSize: 18),
                    ),
                    const SizedBox(
                      width: 200,
                    ),
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(243, 96, 63, 1),
                    ),
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(243, 96, 63, 1),
                    ),
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(243, 96, 63, 1),
                    ),
                    const Icon(
                      Icons.star,
                      color: Color.fromRGBO(243, 96, 63, 1),
                    ),
                    const Icon(
                      Icons.star,
                      color: Colors.grey,
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
