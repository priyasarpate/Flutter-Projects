import 'package:flutter/material.dart';
import 'package:eccomerce_ui/utils/constants/image_strings.dart';
import 'package:eccomerce_ui/utils/constants/text_strings.dart';
import 'widgets/onboarding_page.dart';
import 'widgets/onboarding_skip.dart';
import 'widgets/onboarding_dot_navigation.dart';
import 'widgets/onboarding_next_button.dart';

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
          OnBoardingSkip(),
          // Dot navigation switch page indicator (to be implemented)
          OnBoardingDotNavigation(),
          // Circular button (to be implemented)
          OnBoradingNextButton(),
        ],
      ),
    );
  }
}
