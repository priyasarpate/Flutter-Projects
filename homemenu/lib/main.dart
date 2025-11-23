import 'package:flutter/material.dart';

void main() {
  runApp(RecipeBookApp());
}

class RecipeBookApp extends StatelessWidget {
  const RecipeBookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white, 
        appBar: AppBar(
        title: Text('Recipe Book App'),
        backgroundColor: Colors.amber,
        ),
        body: 
         Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage
              ('assets/mahfil_biryani.jpg'),
              fit: BoxFit.cover
              ),
            ),  
             child: Center(
              child: Text('Mehfil Biryani',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
          ),
        ),
        ),
    );
  }
}
