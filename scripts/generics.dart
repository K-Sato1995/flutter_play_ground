T first<T>(T value) {
  print(value);
  return value;
}

void main() {
  first<int>(2);
  first<String>('hello');
}
