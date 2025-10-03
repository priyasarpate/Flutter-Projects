// Onboarding design file
import 'package:eccomerce_ui/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:eccomerce_ui/utils/constants/image_strings.dart';
import 'package:eccomerce_ui/utils/constants/sizes.dart';
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
                mainAxisAlignment: MainAxisAlignment.center, // Add this
                children: [
                  Image(
                    width:
                        THelperFunctions.screenWidth() *
                        0.6, // Reduced from 0.8
                    height:
                        THelperFunctions.screenHeight() *
                        0.4, // Reduced from 0.6
                    image: AssetImage(TImages.onBoardingImage1),
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Text(
                    TText
                        .onboardingTitle1, 
                    style: Theme.of(context).textTheme.headlineMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: TSizes.spaceBtwItems),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.defaultSpace,
                    ),
                    child: Text(
                      TText.onboardingSubTitle1,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
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
