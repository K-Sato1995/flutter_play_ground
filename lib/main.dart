import 'package:flutter/material.dart';
import 'dart:developer';

void main() {
  runApp(const TodoApp());
}

// https://medium.com/flutter-community/simple-to-do-list-app-in-flutter-26abc50db741
class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // app layout
    return MaterialApp(
        title: 'To-Do List',
        theme: ThemeData(primarySwatch: Colors.blueGrey),
        home: TodoList());
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  final List<String> _todoList = <String>[];
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('MyTodoList')),
        floatingActionButton: FloatingActionButton(
            onPressed: () => {print("hello world")},
            tooltip: 'Add Item',
            child: const Icon(Icons.add)),
        body: ListView(
          children: [const Text("hello1"), const Text("hello2")],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [Icon(Icons.person)],
          ),
        ));
  }
}
