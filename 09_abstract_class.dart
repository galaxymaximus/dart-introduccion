void main () {
  
  final windPlant = WindPlant(initialEnergy: 100);
  
  final nuclearPlant = NuclearPlant(energyLeft: 1000);
  
  
  
  print('wind: ${chargePhone(windPlant)}');
  
  print('nuclear: ${chargePhone(nuclearPlant)}');
  
}


double chargePhone( EnergyPlant plant ) {
  
  if(plant.energyLeft < 10){
    throw Exception('Not enough energy');
  }
  
  return plant.energyLeft - 10;
  
}


enum PlantType { nuclear, wind, water }

// una clase abstracta no se puede instanciar por si misma
// se usa para aplicar diferentes tipos de estructura
abstract class EnergyPlant {
  
  double energyLeft; // cantidad de energía restante
  final PlantType type; // nuclear, wind, water
  
  
  // implementación
  EnergyPlant({ 
    required this.energyLeft, 
    required this.type 
  });
  
  
  // se definen métodos pero no se implementan {}
  void consumeEnergy( double amount );
  
  
}

// extends o implements
// extends = heredar de otra clase
class WindPlant extends EnergyPlant {
  
  
  WindPlant({ required double initialEnergy })
    : super(energyLeft: initialEnergy, type: PlantType.wind);
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= amount;
  }
}

// Si se usa extends puede que no necesitemos todas las propiedades
// Si se usa implements podemos implementar un método en particular, no todos, ese método lo usa la clase para funcionar 


// La implementación nos ayuda a explicitamente colocar los override 
class NuclearPlant implements EnergyPlant {
  
  @override
  double energyLeft;
  
  @override
  final PlantType type = PlantType.nuclear;
  
  NuclearPlant({ required this.energyLeft});
  
  @override
  void consumeEnergy( double amount ) {
    energyLeft -= (amount * 0.5);
  }
  
}