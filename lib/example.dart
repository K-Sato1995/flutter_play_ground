import 'package:flutter/material.dart';

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
    return borderedContainer(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        borderedContainer(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Text("Hello"), Text("Hello"), Text("Hello")])),
        borderedContainer(child: Row(children: [Text("Hello")])),
        borderedContainer(child: Row(children: [Text("Hello")])),
      ],
    ));
  }
}

Widget borderedContainer({required Widget child}) {
  return Container(
    decoration: BoxDecoration(
      border: Border.all(color: Colors.black),
    ),
    padding: const EdgeInsets.all(30),
    child: child,
  );
}
