import 'package:eccomerce_ui/common/widgets.login_signup/success_screen/success_screen.dart';
import 'package:eccomerce_ui/features/authentication/screens/login/login.dart';
import 'package:eccomerce_ui/utils/constants/sizes.dart';
import 'package:eccomerce_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/text_strings.dart';

class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

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
              image: AssetImage(TImages.verifyEmail),
              width: THelperFunctions.screenWidth() * 0.6,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // Title and subtitle
            Text(
              TTexts.confirmEmail,
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            Text(
              'learningflutter@gmail.com',
              style: Theme.of(context).textTheme.labelLarge,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),
            Text(
              TTexts.confirmEmailSubTitle,
              style: Theme.of(context).textTheme.bodySmall,
            ),
            const SizedBox(height: TSizes.spaceBtwSections),

            // buttons
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => SuccessScreen()),
                child: const Text(TTexts.tContinue),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: TextButton(
                onPressed: () {},
                child: const Text(TTexts.resendEmail),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
