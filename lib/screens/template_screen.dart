import 'package:flutter/material.dart';
import 'package:todo_test/screens/home_screen.dart';
/* screens */
import './home_screen.dart';
import'./post_screen.dart';

class TemplateScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List"),
      ),
      body: HomeScreen(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => PostScreen()),
          ),
        },
      ),
    );
  }
}