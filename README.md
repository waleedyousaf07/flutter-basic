## Introduction:

A repo covering the core concepts of Flutter and Dart.
<br/><br/>

## Installation

## Core

Its a `mobile UI framework` for creating native apps for iOS and android. These will get `access to platform APIs` like camera or the microphone. 
It has a `single code-base (dart)` means we only have to write our app once for multiple devices.

### Advantages:

- Only 1 code base
- Good layout methodology borrowed from responsive web
- Smooth and quick experience when running apps
- Works well with firebase as a BE
- Uses Dart which is very easy language to pick up+
- Uses Material Design out of the box
- Great guides and docs

### Basic

#### Widgets

The flutter app have widgets. A root and then nested widgets creating a tree like structure. 
Flutter has alot of built in widgets like 

- Text Widget
    - Properties
        - style
        - textAlign
        - overflow
        - maxLines
        - ...etc
- Button Widget
    - Properties
        - color
        - elevation
        - disabledColor
        - enabled
        - ...etc
- Row Widget
- Column Widget
- Image Widget

## Dart

A programming language developed by google. Everything initiates from a `main` method like java. This a top level dart function which when we run a dart file, it will find this function and will execute this.

    void main(List<String> args) {
        print('hello');
    }

`void` means it wont return any thing. Will result in an error if try to return from a function which is void.

### Basic Concepts

#### Data Types

Variables are statically typed means types cant be changed later on.

     int age = 30;
    String name = 'Batman';
    bool isNight = false;
    // name = 23; // Cant change type
    name = 'Bruce Wayne'; // Can re define
    print(name); // 'Bruce Wayne'
    print(age); //23
    print(isNight); // false

 Dart also comes with a different data type called dynamic which behaves like variables like in JS so we can change it later

    dynamic skills = 'Fly, Gadgets';
    skills = ['Fly', 'Gadgets'];
    print(skills); // ['Fly', 'Gadgets']

#### Functions

Can return nothing with `void` or if returning something then the type must be specified while declaring and should return that type

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


Dart also supports arrow functions just like JS but only if we dont have any logic and directly needs to return

    String getArrowedGreeting() => 'Arrowed Hello!!';
    print(getArrowedGreeting());

#### List

Its somewhat similar to arrays in JS. 

    List superheroes = ['Batman', 'Wonder Woman', 'Superman'];
    // We can add and remove items
    superheroes.add('Flash');
    superheroes.remove('Wonder Woman');
    superheroes.add(24); // works correctly
    print(superheroes); // [Batman, Superman, Flash, 24]

At the moment we can add any datatype to this list as we havent defined. We can explicitly define the type by

    List<String> realnames = ['Bruce', 'Diana', 'Kal El'];
    // realnames.add(32); // Cant do as the type defined is String
    print(realnames); // [Bruce, Diana, Kal El]

#### Classes

Like other programming languages they are like a blue print for the objects. We give them properties and methods.

    class Superhero {
        String realname = '';
        int strength = 0;

        // `Constructor` - Special function which runs when we intanciate a class
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

    Superhero superheroOne = Superhero('Batman', 3343);
    print(superheroOne.realname);
    print(superheroOne.strength);
    superheroOne.greet();

    SecretSuperHero secretSuperHero = SecretSuperHero('Batman', 3213);
    print(secretSuperHero.realname);
    print(secretSuperHero.strength);
    secretSuperHero.greet();
    secretSuperHero.secretPower(); // Secret Power // other objects cant use this method