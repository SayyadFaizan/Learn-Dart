// Abstract classes
void main() {
 final car = Car();
 car.accelerate();
}
abstract class Vehicle {
  int noOfWheels = 0;
  void accelerate();
}
class Car implements Vehicle {
  @override
  int noOfWheels = 4;
  void pintStatements(){
    print(noOfWheels);
  }
  @override
  void accelerate() {
    print('Accelerating');
  }
}
// if we extends abstract class then also we have to implement
class Truck extends Vehicle {
  @override
  void accelerate() {
    print('Accelerating truck');
  }
}