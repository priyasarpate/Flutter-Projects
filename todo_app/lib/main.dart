import 'package:flutter/material.dart';

//this starts your app like reactDom render
void main() {
  runApp(MyApp());
}

//this creates your app
class MyApp extends StatefulWidget {
    const MyApp ({super.key});
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This list now holds instances of TodoItem to manage text and checked state
  List<TodoItem> learningGoals = [
    TodoItem(text: 'Learning flutter'),
    TodoItem(text: 'Build my first app'),
    TodoItem(text: 'Add buttons and interaction'),
    TodoItem(text: 'Style with colors and fonts'),
    TodoItem(text: 'Practice with state management'),
    TodoItem(text: 'Build beautiful user interfaces'),
    TodoItem(text: 'Master flutter development'),
  ]; 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('My Todo APP'),
          backgroundColor: Color(0xFFfca311),
        ),
        body: ListView(
          padding: const EdgeInsets.all(20),
          children: [
            Text(
              'All ToDOs',
              style: TextStyle(
                fontSize: 25,
                color: Colors.red,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            // The map function now correctly returns a widget for each item
            ...learningGoals.asMap().entries.map((entry) {
              final int index = entry.key;
              final TodoItem goal = entry.value;

              // The return statement and the Container widget must be inside the map's callback
              return Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 3,
                      offset: Offset(0, 2),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Checkbox(value: goal.isChecked, onChanged: (bool? newValue){
                      setState(() {
                        goal.isChecked = newValue!;
                      });
                    }, activeColor: Colors.deepPurple,
                    ),
                    Expanded(
                   child: Text(
                    goal.text,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      decoration: goal.isChecked
                      ? TextDecoration.lineThrough
                      :TextDecoration.none,
                    ),
                   ),
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      color: Colors.red[400],
                      onPressed: (){
                        setState(() {
                          learningGoals.removeAt(index);
                        });
                      },
                    )
                  ],
                ),
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}

class TodoItem {
  String text;
  bool isChecked;
  TodoItem({required this.text,this.isChecked = false});
}