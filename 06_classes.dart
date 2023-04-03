void main() {
  
//   final wolverine = Hero('Logan','Regeneración');
  final wolverine = Hero(name: 'Logan', power: 'Regeneración');
  
  
  print(wolverine.toString());
  print(wolverine.name);
  print(wolverine.power);
}

class Hero {
  
  String name;
  String power;
  
  // constructor, al usar el ()
  
  
  Hero({
    required this.name, 
    this.power = 'Sin poder'
  });
  
  //el this es opcional
//   Hero( String pName, String pPower )
//     : name = pName,
//       power =  pPower;

  
  // Sobreescribir el método y su comportamiento nativo
  @override
  String toString() {
    return '$name - $power';
  }
  
}