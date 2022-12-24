import 'package:flutter/material.dart';
import 'custom_text.dart';

class SocialButton extends StatelessWidget {
  final String text;
  final String imageName;
  final VoidCallback onPress;

  const SocialButton({
    super.key,
    required this.text,
    required this.imageName,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.grey.shade200),
      child: MaterialButton(
        onPressed: onPress,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            Image.asset(imageName),
            // ignore: prefer_const_constructors
            SizedBox(
              width: 90,
            ),
            CustomText(
              text: text,
            )
          ],
        ),
      ),
    );
  }
}
