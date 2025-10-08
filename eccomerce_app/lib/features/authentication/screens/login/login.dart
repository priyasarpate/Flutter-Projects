import 'package:eccomerce_ui/common/styles%20/spacing_styles.dart';
import 'package:eccomerce_ui/utils/constants/image_strings.dart';
import 'package:eccomerce_ui/utils/constants/sizes.dart';
import 'package:eccomerce_ui/utils/constants/text_strings.dart';
import 'package:eccomerce_ui/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

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
                  image: AssetImage(dark ? TImages.darkAppLogo : TImages.lightAppLogo),
                ),
                Text(TText.tLoginTitle, style: Theme.of(context).textTheme.headlineMedium),
                const SizedBox(height: TSizes.sm),
                Text(TText.tLoginSubTitle, style: Theme.of(context).textTheme.bodyMedium),

              ],
            ),

            //Form 
            
          ],
        ),
      ),
     );
  }
}