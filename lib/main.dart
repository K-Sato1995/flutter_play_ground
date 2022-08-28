import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // app layout
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("To-do List"),
      ),
    ));
  }
}
