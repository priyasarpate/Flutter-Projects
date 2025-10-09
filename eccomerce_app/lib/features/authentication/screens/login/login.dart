import 'package:eccomerce_ui/common/styles%20/spacing_styles.dart';
import 'package:eccomerce_ui/utils/constants/image_strings.dart';
import 'package:eccomerce_ui/utils/constants/sizes.dart';
import 'package:eccomerce_ui/utils/constants/text_strings.dart';
import 'package:eccomerce_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:iconsax/iconsax.dart';

class LoginSCreen extends StatelessWidget {
  const LoginSCreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image(
                  height: 150,
                  image: AssetImage(
                    dark ? TImages.darkAppLogo : TImages.lightAppLogo,
                  ),
                ),
                Text(
                  TTexts.tLoginTitle,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                const SizedBox(height: TSizes.sm),
                Text(
                  TTexts.tLoginSubTitle,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
            //Form
            Form(
              child: Column(
                children: [
                  // Email
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.direct_right),
                      labelText: TTexts.email,
                    ),
                  ),
                  //Password
                  const SizedBox(height: TSizes.spaceBtwInputFields),
                  TextFormField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Iconsax.password_check),
                      labelText: TTexts.password,
                      suffixIcon: Icon(Iconsax.eye_slash),
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwInputFields / 2),
                  // Remember me & Forgot password
                  Row(
                    children: [
                      //Remember me
                      Row(
                        children: [
                          Checkbox(value: true, onChanged: (value) {}),
                          const Text(TTexts.tRememberMe),
                        ],
                      ),
                      //Forgot password
                      TextButton(
                        onPressed: () {},
                        child: const Text(TTexts.tForgetPassword),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
