import 'package:flutter/widgets.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text('test',
            style: TextStyle(color: Color(0xFFFFFFFF)),
            textDirection: TextDirection.ltr));
  }
}
