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
      home: Scaffold(
        appBar: AppBar(title: Text("Hello Flutter")),
        body: MyStateFulW(),
      ),
    );
  }
}

class MyStateFulW extends StatefulWidget {
  const MyStateFulW({super.key});

  @override
  State<MyStateFulW> createState() => _MyStateFulWState();
}

class _MyStateFulWState extends State<MyStateFulW> {
  bool _isPressed = false;
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Text("Hello"), Text("Hello"), Text("Hello")],
    ));
  }
}
