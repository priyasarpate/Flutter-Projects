import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Blinkit App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold( 
        appBar: AppBar(
          title: const Text('Blinkit'),
        ),
        body: const Center(
          child: Text('App Launched!'),
        ),
      ),
    );
  }
}