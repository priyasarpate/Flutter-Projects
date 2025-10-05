import 'package:eccomerce_ui/features/authentication/screens/onboarding/onboarding.dart';
import 'package:eccomerce_ui/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {

// Todo: App Widget binding
// Todo: InIt Local storage
// Todo: Await Native splash
// Todo: intialize firebase
// Todo: initialize authentication

  runApp(const App());
}

class App extends StatelessWidget {
  const App ({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}