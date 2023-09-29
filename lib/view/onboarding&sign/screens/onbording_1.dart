// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:store/view/onboarding&sign/screens/location.dart';
import 'package:store/view/onboarding&sign/screens/sign_in.dart';

class Onbording1 extends StatelessWidget {
  const Onbording1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 20));
    return (Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 100,
            ),
            Text(
              'Find your Gadget',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 20.0),
                child: ShaderMask(
                    shaderCallback: (rect) {
                      return const LinearGradient(
                        begin: Alignment.center,
                        end: FractionalOffset.bottomCenter,
                        colors: [Colors.black, Colors.transparent],
                      ).createShader(rect);
                    },
                    blendMode: BlendMode.dstIn,
                    child: const Image(
                        image: AssetImage('aseets/image/splash.png'),
                        fit: BoxFit.contain))),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: const Color(0xff5956E9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 22,
                ),
                textStyle: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
              onPressed: () {
                Get.to(() => Location());
              },
              child: const Text('Get Started'),
            )
          ],
        ),
      ),
    ));
  }
}
