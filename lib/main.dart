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
        floatingActionButton: FloatingActionButton(
            onPressed: () => _showMyDialog(context),
            tooltip: 'Add Item',
            child: Icon(Icons.add)),
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

  void _addTodoItem(String title) {
    setState(() {
      _todoList.add(title);
    });
    _textFieldController.clear();
  }

  Future<void> _showMyDialog(BuildContext context) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Add todo'),
          content: TextField(
            controller: _textFieldController,
            decoration: const InputDecoration(hintText: 'Enter task here'),
          ),
          actions: <Widget>[
            FlatButton(
              child: const Text('ADD'),
              onPressed: () {
                Navigator.of(context).pop();
                _addTodoItem(_textFieldController.text);
              },
            ),
            FlatButton(
              child: const Text('CANCEL'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
