void main() {
  
  final numbers = [1,2,3,4,5,5,5,6,7,8,9,9,10];
  
  
  print('List original: $numbers');
  print('List length: ${numbers.length}');
  print('Index 0: ${numbers[0]}');
  print('First: ${numbers.first}');
  print('Reversed: ${numbers.reversed}');
  
  
  // Iterable = elemento que se puede iterar
  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  
  
  // El Set es un listado, pero con valores únicos
  print('Set: ${reversedNumbers.toSet()}');
  
  final numbersGreatherThan5 = numbers.where( (int num) {
    return num > 5;
  });
  
  print('>5 iterable: $numbersGreatherThan5');
   print('>5 Set: ${numbersGreatherThan5.toSet()}');
  
  
}