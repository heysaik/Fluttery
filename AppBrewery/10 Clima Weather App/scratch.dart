import 'dart:io';

void main() {
  String myString = 'abc';

  try {
    double myStringAsDouble = double.parse(myString);
    print(myStringAsDouble + 5);
  } catch (e) {
    print(e);
  }
}
