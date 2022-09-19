import 'package:flutter/material.dart';

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
          child: Column(children: [
        ...todoList.map((item) => todoItem(item, removeItem)).toList()
      ]))
    ]);
  }

  removeItem(todo) {
    setState(() => {todoList.remove(todo)});
  }
}

Widget todoItem(String item, removeItem) {
  return Container(
      decoration: BoxDecoration(
          // border: Border.all(color: Colors.black),
          ),
      margin: const EdgeInsets.all(10.0),
      padding: const EdgeInsets.all(2),
      child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(item),
        IconButton(
            icon: Icon(Icons.delete), onPressed: () => {removeItem(item)})
      ]));
}
