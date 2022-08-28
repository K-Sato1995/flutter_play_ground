import 'package:flutter/material.dart';

void main() {
  runApp(const TodoApp());
}

// https://daily-dev-tips.com/posts/build-a-todo-list-app-with-flutter/
class TodoApp extends StatelessWidget {
  const TodoApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // app layout
    return MaterialApp(title: 'To-Do List', home: TodoList());
  }
}

class TodoList extends StatefulWidget {
  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TodoList')),
    );
  }
}
