import 'package:dart_basics/dart_basics.dart' as dart_basics;

void main(List<String> args) {}

void dataTypes() {
  // variables - statically typed variables means types cant be changed
  int age = 30;
  String name = 'Batman';
  bool isNight = false;
  // name = 23; // Cant change type
  name = 'Bruce Wayne'; // Can re define
  print(name);
  print(age);
  print(isNight);

  // Dart also comes with a different data type called dynamic which behaves like variables like in JS so we can change it later
  dynamic skills = 'Fly, Gadgets';
  skills = ['Fly', 'Gadgets'];
  print(skills);
}

void printFiveHellos() {
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }
}
