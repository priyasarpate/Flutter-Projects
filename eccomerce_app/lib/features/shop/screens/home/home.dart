import 'package:eccomerce_ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: TColors.primary,
                padding: EdgeInsets.all(0),
              )
            ],
          ),
        ),
        
      );
  }
}