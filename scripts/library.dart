// Import only foo.
// import 'package:lib1/lib1.dart' show foo;
// Import all names EXCEPT foo.
// import 'package:lib2/lib2.dart' hide foo;

void exportedFunc() {
  print("I'm exported");
}

void _privateFunc() {
  print("I'm private");
}
