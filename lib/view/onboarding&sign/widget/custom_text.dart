import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double? fontsize;
  final Color color;
  final Alignment alignment;
  final FontWeight weight;

  const CustomText({
    super.key,
    this.text = '',
    this.fontsize,
    this.color = Colors.black,
    this.weight = FontWeight.normal,
    this.alignment = Alignment.topLeft,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontsize,
          color: color,
          fontWeight: weight,
        ),
      ),
    );
  }
}
