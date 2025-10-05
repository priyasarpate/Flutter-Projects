import 'package:eccomerce_ui/utils/constants/text_strings.dart';
import 'package:eccomerce_ui/utils/device/device_utility.dart';
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
          // Horizontal scrollable pages with PageView
          PageView(
            children: const [
              OnBoardingPage(
                image: TImages.onBoardingImage1,
                title: TText.onboardingTitle1,
                subTitle: TText.onboardingSubTitle1,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage2,
                title: TText.onboardingTitle2,
                subTitle: TText.onboardingSubTitle2,
              ),
              OnBoardingPage(
                image: TImages.onBoardingImage3,
                title: TText.onboardingTitle3,
                subTitle: TText.onboardingSubTitle3,
              ),
            ],
          ),

          // Skip Button (to be implemented)
          Positioned(
            top: TDeviceUtils.getAppBarHeight(),
            right: TSizes.defaultSpace,
            child: TextButton(onPressed: () {}, child: const Text('Skip')),
          ),
          // Dot navigation switch page indicator (to be implemented)

          // Circular button (to be implemented)
        ],
      ),
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(TSizes.defaultSpace),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            width: THelperFunctions.screenWidth() * 0.6,
            height: THelperFunctions.screenHeight() * 0.4,
            image: AssetImage(image),
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: TSizes.spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
