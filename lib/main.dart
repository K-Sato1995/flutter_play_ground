import 'package:flutter/widgets.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('test', textDirection: TextDirection.ltr));
  }
}
