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

A programming language developed by google. Everything initiates from a `main` method like java

    void main(List<String> args) {
        print('hello');
    }

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
