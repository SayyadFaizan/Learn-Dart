// Implement keyword
void main() {
   final car = Car();
   print(car.speed);
   car.accelerate();
   print(car.speed);
}

class Vehicle {
  int speed = 10;
  void accelerate() {
    speed += 30;
  }
}

class Car implements Vehicle {
  @override
  int speed = 20;
  @override
  void accelerate() {
    speed += 10;
  }
}

//we can use super keyword to access the parent class member , but we can't use in implemented
// class, we can only in extends class.