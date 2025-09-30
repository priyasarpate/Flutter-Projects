//Onboarding design file
import 'package:flutter/material.dart';
//import 'package:eccomerce_app/utilis/constants/image_strings.dart';

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
              // children: [
              //   Image(
              //     width: THelperFunctions.screenWidth() * 0.8,
              //     height:
              //         THelperFunctions.screenHeight() *
              //         0.6,
              //     image: const AssetImage(
              //       TImages.onBoardingImage1,
              //     ),
              //   ),
              // ],
            ],
          ),
          //Skip Button

          //Dot navigation switch page indicator

          //Circular button
        ],
      ),
    );
  }
}
