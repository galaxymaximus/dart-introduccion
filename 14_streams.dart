void main () {
  
  // Los streams necesitan ser escuchados para empezar a emitir valores
  // Streams -> flujo de datos, que puede ser único, ninguno, o una serie de valores a lo largo del timepo
  emitNumbers().listen((value) {
    print('Stream value $value');
  });
  
}


Stream<int> emitNumbers(){
  
  return Stream.periodic( const Duration(seconds: 1), (value) {
//     print('desde periodic $value');
    return value; 
  }).take(5);
}