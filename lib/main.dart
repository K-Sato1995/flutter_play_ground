import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

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
    return Row(children: [
      Column(children: [Icon(Icons.star)]),
      Column(children: [
        const Text("Hello Flutter"),
        Text("$_counter"),
        ElevatedButton(
            onPressed: () => setState(() => {_counter += 1}),
            child: const Text("Increment")),
        ElevatedButton(
            onPressed: () => setState(() => {_counter -= 1}),
            child: const Text("Decrement"))
      ]),
    ]);
  }
}
