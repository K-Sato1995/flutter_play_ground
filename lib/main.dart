import 'package:flutter/material.dart';
import 'package:todo_app/Todo.dart';

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
        home: const HomePage(),
        routes: {'/todo': (_) => const Todo()});
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("My Todo App")),
        body: Center(
            child: ElevatedButton(
                onPressed: () => {Navigator.of(context).pushNamed('/todo')},
                child: const Text("Todo"))));
  }
}
