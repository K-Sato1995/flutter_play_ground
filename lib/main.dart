import 'package:flutter/material.dart';
import 'dart:developer';

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
  final List<String> _todoList = <String>[];
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('TodoList')),
        floatingActionButton:
            FloatingActionButton(onPressed: () => log('print me')),
        body: ListView(
          children: _getItems(),
        ));
  }

  Widget _buildTodoItem(String title) {
    return ListTile(title: Text(title));
  }

  List<Widget> _getItems() {
    final List<Widget> todoWidgets = <Widget>[];

    for (String title in _todoList) {
      todoWidgets.add(_buildTodoItem(title));
    }
    return todoWidgets;
  }
}
