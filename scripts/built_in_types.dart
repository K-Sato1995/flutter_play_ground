// String/Int
// can't use const here cuz const is a compiletime constant
final one = int.parse('1');
final onePointOne = double.parse('1.1');
final String numAsString = one.toString();

// List(ordered list)
const list = [1, 2, 3];

// Sets(unordered list)
const set = {1, 2, 3};

// Maps
const gifts = {
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

// https://stackoverflow.com/questions/643694/what-is-the-difference-between-utf-8-and-unicode

// functions
bool returnsBool(bool v) {
  return v;
}

int namedParams({required int v1, required int v2}) => v1 + v2;

void main() {
  print(one);
  print(numAsString);
  assert(1 == one);
  print(list);
  print(set);
  print(gifts);
  returnsBool(true);
  print(namedParams(v1: 2, v2: 2));
}
