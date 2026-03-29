// Private variable
void main() {
  print(Cookie('Square', size: 10)._height);

  Cookie cookie = Cookie('Rectangle', size: 12);
  cookie.shape = 'Circle';
  cookie.info();
  cookie.baking();
}

class Cookie {
  // You can declare private variable using '_' before variable name.
  // 'Private variable are private for this file'
  int _height = 1;
  String? shape;
  int? size;

  Cookie(String? shape, {required  this.size}){ //we can directly assign the value of current class instance in parameter arguments using this. keyword
    this.shape = shape;
  }

  void baking(){
    print('Cookie is Baking..');
  }
  void info(){
    print('Cookie shape: $shape');
    print('Cookie size: $size');
  }
}
/*

If we declare all the variable final and cost function or constructor, that means that class is immutable class,
we can't change the value once declared.
*/