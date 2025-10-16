import 'package:eccomerce_ui/features/authentication/screens/login/login.dart';
import 'package:eccomerce_ui/utils/constants/sizes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; 


class VerifyEmailScreen extends StatelessWidget {
  const VerifyEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed:() => Get.offAll(() => const LoginScreen()), icon: Icon(CupertinoIcons.clear)),
        ],
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          children: [
            //images

            // Title and subtitle

            // buttons
          ],
        ),
      ),
    );
  }
}
