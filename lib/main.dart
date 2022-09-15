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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildImageColumn(),
            _buildImageColumn(),
            Column(children: [Text('test')]),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
              child: Text('Test'),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: Row(
            children: [Icon(Icons.person)],
          ),
        ));
  }
}

Widget _buildImageColumn() {
  return Container(
      decoration: const BoxDecoration(
        color: Colors.amber,
      ),
      margin: const EdgeInsets.all(3),
      child: Column(
        children: [Text('Colro'), Text('Colro')],
      ));
}
