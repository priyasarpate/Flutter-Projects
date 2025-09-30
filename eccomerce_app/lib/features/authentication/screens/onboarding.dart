//Onboarding design file
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //Horizontal scrollabl pages
            PageView(
              children: [
                Column(
                  children: [
                    //Image(image: image)
                  ],
                )
              ],
            )
          //Skip Button

          //Dot navigation switch page indicator

          //Circular button
        ],
      ),
    );
  }
}
