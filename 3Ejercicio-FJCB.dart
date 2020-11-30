//3. Crea una aplicación que cuente el número de palabras en una cadena de texto.
//Cuenta también el número de frases.

import 'dart:io';

void main(List<String> arguments) {
  print('Por favor, escribe una frase:');
  var parrafo = stdin.readLineSync();
  //No se tiene en cuenta frases o palabras con puntos o espacios repetidos.
  print(parrafo.split('.').length);
  print(parrafo.split(' ').length);
}
