// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:store/view/onboarding&sign/widget/custom_text.dart';
import '../../../controller/constant.dart';

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
            child: Expanded(
              child: Image.network(
                widget.imagename,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: widget.productname,
                  fontsize: 18,
                  color: P1,
                  // weight: FontWeight.w800,
                ),
                const SizedBox(height: 30),
                SizedBox(
                  height: 230,
                  child: Text(
                    widget.productdescription,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.notoSans(
                      textStyle: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    CustomText(
                      text: 'Total',
                      color: Colors.teal,
                      fontsize: 20,
                    ),
                    SizedBox(
                      width: 220,
                    ),
                    Text(
                      '${widget.productprice} EGP',
                      style: GoogleFonts.notoSans(
                        textStyle: TextStyle(
                          fontSize: 16,
                          color: Colors.teal,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
