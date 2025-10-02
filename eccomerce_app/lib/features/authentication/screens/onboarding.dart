// Onboarding design file
import 'package:flutter/material.dart';
import 'package:eccomerce_ui/utils/constants/image_strings.dart';
import 'package:eccomerce_ui/utils/helpers/helper_functions.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Horizontal scrollable pages
          PageView(
            children: [
              // First onboarding page
              Column(
                children: [
                  Image(
                    width: THelperFunctions.screenWidth() * 0.8,
                    height: THelperFunctions.screenHeight() * 0.6,
                    image: AssetImage(
                      TImages.onBoardingImage1,
                    ),
                  ),
                ],
              ),
            ],
          ),
          
          // Skip Button
          
          // Dot navigation switch page indicator
          
          // Circular button
        ],
      ),
    );
  }
}