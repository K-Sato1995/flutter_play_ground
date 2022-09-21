import 'package:flutter/material.dart';
import 'package:todo_app/Todo.dart';
import 'package:todo_app/fetch.dart' as fetchWidget;

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
      routes: {
        '/todo': (_) => const Todo(),
        '/fetch_example': (_) => const fetchWidget.FetchExample()
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("My Todo App")),
        body: Center(
          child: Column(children: [
            ElevatedButton(
                onPressed: () => {Navigator.of(context).pushNamed('/todo')},
                child: const Text("Todo")),
            ElevatedButton(
                onPressed: () =>
                    {Navigator.of(context).pushNamed('/fetch_example')},
                child: const Text("FetchExample"))
          ]),
        ));
  }
}
