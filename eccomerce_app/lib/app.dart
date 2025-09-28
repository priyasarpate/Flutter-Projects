import 'package:eccomerce_ui/utilis/theme/theme.dart';
import 'package:flutter/material.dart';

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
    return  MaterialApp(
      themeMode: ThemeMode.system,
      theme: TAppTheme.lightTheme,
      darkTheme: TAppTheme.darkTheme,
    );
  }
}