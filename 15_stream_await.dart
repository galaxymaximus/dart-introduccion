void main () {
  
  emitNumber()
    .listen( (value) {
      print('Stream value: $value');
    });
  
}

// No es más que el async para el Stream
// async gives you a Future
// async* gives you a Stream.
Stream<int> emitNumber() async* {
  
  // Emisiones controladas
  
  final valuesToEmit = [1,2,3,4,5];
  
  for(int i in valuesToEmit){
    await Future.delayed(const Duration(seconds: 1));
    
    // ceder valor, ten este valor
    yield i;
  }
}