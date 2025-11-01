import 'package:eccomerce_ui/common/widgets.login_signup/login_divider.dart';
import 'package:eccomerce_ui/common/widgets.login_signup/social_buttons.dart';
import 'package:eccomerce_ui/utils/constants/sizes.dart';
import 'package:eccomerce_ui/utils/constants/text_strings.dart';
import 'package:eccomerce_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'widgets/signup_form.dart';



class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- Title ---
              Text(
                TTexts.tSignUpSubTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // --- Form ---
              TSignupForm(dark: dark),
              const SizedBox(height: TSizes.spaceBtwSections),
              //devider
              TFormDivider(dark: dark),
              //Socila buttons
              const TScocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
