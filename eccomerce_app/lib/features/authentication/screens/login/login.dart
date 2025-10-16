import 'package:eccomerce_ui/common/styles%20/spacing_styles.dart';
import 'package:eccomerce_ui/utils/constants/sizes.dart';
import 'package:eccomerce_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'widgets/login_form.dart';
import 'widgets/login_header.dart';
import '../../../../common/widgets.login_signup/login_divider.dart';
import '../../../../common/widgets.login_signup/social_buttons.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        padding: TSpacingStyle.paddingWithAppBarHeight,
        child: Column(  // ← WRAP EVERYTHING IN COLUMN!
          children: [
            TLoginHeader(dark: dark),
            //Form
            const TLoginForm(),
            // Divider
            TFormDivider(dark: dark),
            const SizedBox(height: TSizes.spaceBtwSections),
            //FOOTER
            const TScocialButtons(),
          ],
        ),
      ),
    );
  }
}
