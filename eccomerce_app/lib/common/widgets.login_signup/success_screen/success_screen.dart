import 'package:flutter/material.dart';
import 'package:eccomerce_ui/features/authentication/screens/login/login.dart';
import 'package:eccomerce_ui/utils/constants/sizes.dart';
import 'package:eccomerce_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //images
            Image(
              image: AssetImage(TImages.onBoardingImage1),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Title and subtitle
            Text(
              TTexts.yourAccountCreatedTitle,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),    
            const SizedBox(height: TSizes.spaceBtwSections),
            Text(
              TTexts.yourAccountCreatedSubTitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => LoginScreen),
                child: const Text(TTexts.tContinue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
