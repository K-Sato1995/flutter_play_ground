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
  List<String> todoList = ['todo1', 'todo2', 'todo3'];
  String todo = '';

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(labelText: 'Todo'),
            onChanged: (value) {
              setState(() => {todo = value});
            },
          ),
          ElevatedButton(
              onPressed: () => {
                    setState(() => {todoList.add(todo)})
                  },
              child: const Text("Add"))
        ],
      ),
      SingleChildScrollView(
          child: Column(
              children: [...todoList.map((item) => todoItem(item)).toList()]))
    ]);
  }
}

Widget todoItem(String item) {
  return Container(
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.black),
          ),
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(2),
      child: Text(item));
}
