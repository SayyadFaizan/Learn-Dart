// Exception handling
void main() {
  print(10/0); //dart has infinity.

  try{
    print(10~/0); //this is truncate division
  } on UnsupportedError catch(e){
    print(e);
  } catch (e) {
    print('Other Exception');
  } finally {
    print('FINALLY BLOCKED EXECUTED');
  }

  print('Faizan');
}

