import 'package:dart_basics/dart_basics.dart' as dart_basics;

void main(List<String> args) {
  maps();
}

// ------------Map ------------ //
void maps() {
  Map hero = {'name': 'Batman', 'realname': 'Bruce'};
  print(hero['name']);
}

// ------------Main Function------------ //
void printFiveHellos() {
  for (int i = 0; i < 5; i++) {
    print('hello ${i + 1}');
  }
}

// ------------Data Types------------ //
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

// ------------Functions------------ //
void functions() {
  print('object');

  String greeting() {
    return 'hello';
  }

  String greet = greeting(); // Cant say int greet as its not returning an int
  print(greet);

  int getAge() {
    return 30;
  }

  int age = getAge();
  print(age);

  // Dart also supports arrow functions just like JS but only if we dont have any logic and directly needs to return
  String getArrowedGreeting() => 'Arrowed Hello!!';
  print(getArrowedGreeting());
}

// ------------List------------ //
void list() {
  List superheroes = ['Batman', 'Wonder Woman', 'Superman'];
  // We can add and remove items
  superheroes.add('Flash');
  superheroes.remove('Wonder Woman');
  superheroes.add(24); // works correctly
  // At the moment we can add any datatype to this list as we havent defined
  print(superheroes); // [Batman, Superman, Flash, 24]

  List<String> realnames = ['Bruce', 'Diana', 'Kal El'];
  // realnames.add(32); // Cant do as the type defined is String
  print(realnames);
}

// ------------Classes------------ //
void classes() {
  // We can instanciate an object from a class
  Superhero superheroOne = Superhero('Batman', 3343);
  print(superheroOne.realname);
  print(superheroOne.strength);
  superheroOne.greet();

  Superhero superheroTwo = Superhero('WW', 2988);
  print(superheroTwo.realname);
  print(superheroTwo.strength);
  superheroTwo.greet();

  SecretSuperHero secretSuperHero = SecretSuperHero('Batman', 3213);
  print(secretSuperHero.realname);
  print(secretSuperHero.strength);
  secretSuperHero.greet();
  secretSuperHero
      .secretPower(); // Secret Power // other objects cant use this method
}

class Superhero {
  // Special function which runs when we intanciate a class

  String realname = '';
  int strength = 0;

  Superhero(String rn, int s) {
    this.realname = rn;
    this.strength = s;
  }

  void greet() {
    print('Heyy u!');
  }
}

// Inheritance
class SecretSuperHero extends Superhero {
  // using `super` to use realname and strength's values of the Superhero class
  SecretSuperHero(String realname, int strength) : super(realname, strength);
  void secretPower() {
    print('Secret Power');
  }
}
