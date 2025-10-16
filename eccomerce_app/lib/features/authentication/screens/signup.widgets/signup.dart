import 'package:eccomerce_ui/utils/constants/sizes.dart';
import 'package:eccomerce_ui/utils/constants/text_strings.dart';
import 'package:eccomerce_ui/utils/constants/colors.dart'; // Added for TColors.primary used in Terms/Conditions
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:get/get.dart'; 
import '../../../../utils/helpers/helper_functions.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
              Form(child: Column(
                children: [
                  // First Name and Last Name
                  Row(
                    children: [
                      // First Name
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: TTexts.tFullName, 
                            prefixIcon: const Icon(Iconsax.user) // Icon for First Name
                          ),
                        ),
                      ),
                      const SizedBox(width: TSizes.spaceBtwInputFields),
                      // Last Name
                      Expanded(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: TTexts.tFullName, 
                            prefixIcon: const Icon(Iconsax.user) // Icon for Last Name
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
                  
                  // Terms and Conditions Checkbox (UPDATED from screenshot)
                
                  const SizedBox(height: TSizes.spaceBtwSections),
                  
                  // Sign Up Button
               SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {}, 
                      // Removed 'const' keyword, used appropriate TTexts string
                      child: Text(TTexts.tGetStarted), 
                    ),
                  ),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}