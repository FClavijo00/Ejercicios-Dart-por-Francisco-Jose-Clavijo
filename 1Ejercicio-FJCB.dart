//1. Crea un programa que invierta una cadena de caracteres introducida por el usuario.
//"Hola mundo" -> "odnum aloH".

import 'dart:io';

void main(List<String> arguments) {
  print('Escribe una frase para generarla al contrario:');
  var frase = stdin.readLineSync();
  var resultado = '';
  for (var i = frase.length - 1; i >= 0; i--) {
    resultado += frase[i];
  }
  print(resultado);
}
