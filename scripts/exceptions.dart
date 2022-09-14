void throwException() {
  throw 'Out of luck';
}

void main() {
  try {
    throwException();
  } catch (e) {
    print(e);
  } finally {
    print('caught ya');
  }
}
