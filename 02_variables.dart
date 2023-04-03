void main() {
  
  final String pokemon = 'Ditto';
  final int hp = 100;
  
  // ? puede ser nulo
  final bool isAlive = true;
  
  // <> especifica el tipo de dato que contiene. [] es un genérico
  final List<String> abilities = ['impostor'];
  
  final sprites = <String>['ditto/front.png','ditto/back.png'];
  
  // Cualquier tipo de dato, dynamic == null por defecto
  dynamic errorMessage = 'Hola';
  errorMessage = true;
  errorMessage = [1,2,3,4,5,6];
  errorMessage = { 1,2,3,4,5,6 };
  errorMessage = null;
  
  
  
  // triple comilla para hacer varías líneas
  print("""
  $pokemon
  $hp
  $isAlive
  $abilities
  $sprites
  $errorMessage
  
  """);
  
  
}