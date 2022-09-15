// import './library.dart' as lib;
import './library.dart' as lib;
import './variables.dart' deferred as vars;

void printInt(int num) {
  print(num);
}

Future<void> asyncFunc() async {
  final result = await vars.name1;
  print(result);
}

void main() {
  printInt(2);
  asyncFunc();
  lib.exportedFunc();
}
