import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

// Row: Vertical Layout
// Column: Horizontal Layout
// Container: Separate widgets using padding, or to add borders or margins
class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(appBar: AppBar(title: Text("My Todo App")), body: Todo()),
    );
  }
}

class Todo extends StatefulWidget {
  const Todo({super.key});

  @override
  State<Todo> createState() => _TodoState();
}

class _TodoState extends State<Todo> {
  List<String> todoList = ['todo1', 'todo2'];
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(children: [
      todoItem('test'),
      ...todoList.map((item) => todoItem(item)).toList()
    ]));
  }
}

Widget todoItem(String item) {
  return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      padding: const EdgeInsets.all(30),
      child: Text(item));
}
