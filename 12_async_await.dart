void main () async {
  
  
  print('Inicio del programa');
  
  try {
    final value = await httpGet('https://google.cl');
    print(value);
  } catch(err) {
   print('Tenemos un error: $err'); 
  }
  
  
  
  
//   httpGet('https://google.cl')
//     .then( 
//       (value) {
//         print(value);
//       })
//     .catchError( (err) {
//       print('Error: $err');
//     });
  
  print('Fin del programa');
  
  
}

//Los futures son un acuerdo
//de que en el futuro tendrás un valor para ser usado.
Future<String> httpGet(String url) async {
  
  // Esperate ese segundo y  luego continua
  await  Future.delayed(const Duration(seconds: 1));
//   return 'Tenemos un valor de la petición';
  throw 'Error en la petición';
  
//   return Future.delayed(const Duration(seconds: 1), () {
    
//     throw 'Error en la peticion http';
    
    // return 'Respuesta de la petición http';
//   });
  
}