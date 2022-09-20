import 'package:flutter/material.dart';
import 'package:todo_app/Todo.dart';

void main() {
  runApp(const MyApp());
}

// Row: Vertical Layout
// Column: Horizontal Layout
// Container: Separate widgets using padding, or to add borders or margins
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Page1(),
    );
  }
}

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Page 1")),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text('Page 1', style: TextStyle(fontSize: 30)),
            ElevatedButton(
                onPressed: () => {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Page2()),
                      )
                    },
                child: Text('Go to Page 2'))
          ],
        )));
  }
}

class Page2 extends StatelessWidget {
  const Page2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Page 2"),
        ),
        body: Center(
          child: Text('Secod page'),
        ));
  }
}
