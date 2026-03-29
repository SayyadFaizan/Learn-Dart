// Class modifier
void main() {
 Animal animal = Dog();
  // we have to handle all the cases because of sealed class
 switch(animal) {
   case Dog() :
     print('Dog');
   case Cat() :
     print('Cat');
 }
}

// Sealed class can't be instantiated, it like abstract class but we need to handle all his direct
// subclass in switch case like conditions.
// Cannot be instantiated.
// Can only be extended/implemented inside the same library (file).
// Dart forces you to handle all direct subclasses in switch.
// Why use it? When you know all possible types in advance (like states, shapes, results).
// Used in state management (Bloc, Riverpod) or fixed result types.
sealed class Animal { }
class Dog implements Animal { }
class Cat implements Animal { }



// Final class prevent other classes to implement or extends the Animal1 class outside the library
// Cannot be extended.
// Cannot be implemented.
// Cannot be mixed in.
// Can only be used as it is.
// Why use it? When you want to completely lock a class (no inheritance).
// Used when building secure APIs or utility classes.
final class Animal1 {
  void sound() => print("Animal sound");
}
// class Dog extends Animal1 {}  // ERROR



// Base class can't be implemented but it can be extended
// Can be extended.
// Cannot be implemented outside the library.
// Why use it? When you want inheritance but don’t want someone to override behavior
// completely using implements.
base class Animal2 {
  void sound() => print("Animal sound");
}
base class Dog1 extends Animal2 {

}  //  allowed
// class Cat implements Animal2 {}  not allowed outside library
// Used in frameworks where you allow controlled inheritance.




// interface can't be extended it can only be implemented
// Can be implemented.
// Cannot be extended outside the library.
// Why use it? When you want to force full method implementation (like Java interface).
// Used when defining contracts for plugins, services, repositories.
interface class Animal3 {
  void sound() {
    print("Default sound");
  }
}
class Dog3 implements Animal3 {
  @override
  void sound() {
    print("Dog bark");
  }
}


// To make true interface like Java we can combine interface with abstract
// Cannot be instantiated.
// Can only be implemented.
// Forces method implementation.
// True Java-style interface.
// Best for clean architecture → Repository pattern in Flutter.
abstract interface class Animal4 { }


// mixin class = mixin + class
// Be used as normal class
// Be mixed into other classes
// Used to reuse code in multiple classes.
mixin class Animal5 {
  void eat() => print("Eating");
}
class Dog4 with Animal5 {}




/*
| Modifier           | Can Extend      | Can Implement   | Can Instantiate | Special Use            |
| ------------------ | --------------- | --------------- | --------------- | ---------------------- |
| sealed             | Only same file  | Only same file  | ❌              | Fixed type hierarchy   |
| final              | ❌               | ❌               | ✅           | Fully locked class     |
| base               | ✅               | ❌ (outside lib) | ✅           | Controlled inheritance |
| interface          | ❌ (outside lib) | ✅               | ✅           | Contract definition    |
| abstract interface | ❌               | ✅               | ❌           | Pure interface         |
| mixin class        | With `with`     | ❌               | ✅             | Code reuse            |


Where YOU will use this (Flutter / Android Dev)
Since you're building Android/Flutter apps:
sealed → For state management (Loading, Success, Error)
abstract interface → For Repository pattern (clean architecture)
base → For framework-level parent classes
final → Utility/helper classes
mixin class → Shared logic (like LoggerMixin)


Simple Summary (Easy Words)
Class modifiers in Dart control how a class can be inherited or implemented. sealed is used when
all subclasses are fixed and must be handled in switch cases. final, base, and interface give
different levels of inheritance control, mainly used in large applications and clean architecture.

*/