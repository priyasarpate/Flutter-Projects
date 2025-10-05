import 'package:eccomerce_ui/features/authentication/controllers.onboarding/onboarding_controller.dart';
import 'package:eccomerce_ui/utils/constants/colors.dart';
import 'package:eccomerce_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:eccomerce_ui/utils/constants/sizes.dart';
import 'package:eccomerce_ui/utils/device/device_utility.dart';

class OnBoradingNextButton extends StatelessWidget {
  const OnBoradingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Positioned(
      right: TSizes.defaultSpace,
      bottom: TDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(shape: const CircleBorder(), backgroundColor: dark ? TColors.primary : Colors.black),
        child: Icon(Iconsax.arrow_right_3),
      ),
    );
  }
}
