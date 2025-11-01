import 'package:eccomerce_ui/features/authentication/screens/signup/verify_email.dart';
import 'package:eccomerce_ui/utils/constants/sizes.dart';
import 'package:eccomerce_ui/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart';
import 'terms_conditions_checkbox.dart';


class TSignupForm extends StatelessWidget {
  const TSignupForm({super.key, required this.dark});

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          // First Name and Last Name
          Row(
            children: [
              // First Name
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: TTexts.tFullName,
                    prefixIcon: const Icon(Iconsax.user), // Icon for First Name
                  ),
                ),
              ),
              const SizedBox(width: TSizes.spaceBtwInputFields),
              // Last Name
              Expanded(
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: TTexts.tFullName,
                    prefixIcon: const Icon(Iconsax.user), // Icon for Last Name
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Username
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.tFullName,
              prefixIcon: const Icon(Iconsax.user_octagon), // Icon for Username
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Email
          TextFormField(
            decoration: InputDecoration(
              labelText: TTexts.email,
              prefixIcon: const Icon(Iconsax.direct), // Icon for Email
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Phone Number
          TextFormField(
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: const Icon(Iconsax.call), // Icon for Phone Number
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwInputFields),

          // Password
          TextFormField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: TTexts.password,
              prefixIcon: const Icon(Iconsax.lock), // Icon for Password
              suffixIcon: const Icon(Iconsax.eye_slash),
            ),
          ),
          const SizedBox(height: TSizes.spaceBtwSections),

          /// Terms&Conditions Checkbox
        const TTermAndconditionCheckbox(),

          /// Sign Up Button
          const SizedBox(height: TSizes.spaceBtwSections),
          // Sign Up Button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => Get.to(() => const VerifyEmailScreen()),
              child: Text(TTexts.tGetStarted),
            ),
          ),
        ],
      ),
    );
  }
}
