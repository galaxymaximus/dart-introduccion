void main() {
  
  
  print(greetEveryone());
  
  
  print('Suma: ${addTwoNumbers(10,20)}');
  
  print(greetPerson(name: 'Nicolás', message: 'Hi,'));
  
  
  
  
}


String greetEveryone() => 'Hello everyone!';

int addTwoNumbers( int a, int b ) => a + b;

// b opcional
int addTwoNumbersOptional( int a, [int b = 0] ) {
  
  // preguntar si B tiene un valor, si no, ponlo en 0
  //b = b ?? 0;
  // b ??= 0;
  
  return a + b;
}

// { } opcionales y por nombre
String greetPerson( { required String name, String message = 'Hola,'} ) {
  
  return '$message $name';
  
}