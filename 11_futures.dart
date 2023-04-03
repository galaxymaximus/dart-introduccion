void main () {
  
  
  print('Inicio del programa');
  
  httpGet('https://google.cl')
    .then( 
      (value) {
        print(value);
      })
    .catchError( (err) {
      print('Error: $err');
    });
  
  print('Fin del programa');
  
  
}

//Los futures son un acuerdo
//de que en el futuro tendrás un valor para ser usado.
Future<String> httpGet(String url){
  
  return Future.delayed(const Duration(seconds: 1), () {
    
    throw 'Error en la peticion http';
    
    // return 'Respuesta de la petición http';
  });
  
}